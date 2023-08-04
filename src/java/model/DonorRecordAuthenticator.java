package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class DonorRecordAuthenticator 
{

    public boolean isDonated(UserDTO donorS) 
    {
        String aadhar = donorS.getAadhar();
        String username = donorS.getUsername();
        String age = donorS.getAge();
        String gender = donorS.getGender();
        String bgroup = donorS.getBgroup();
        String address = donorS.getAddress();
        String contact = donorS.getContact();
        int units_donated = Integer.parseInt(donorS.getUnits_donated());
        
        LocalDate ld = LocalDate.now();
        String date = ld.toString();
        
        LocalTime lt = LocalTime.now();
        DateTimeFormatter df = DateTimeFormatter.ofPattern("hh:mm a");
        String time = df.format(lt);

        if (!username.trim().equals("")) 
        {
            try 
            {
                PreparedStatement pst = null;
                String query1 = "Insert into successful_donation(aadhar,name,age,gender,blood_group,address,contact,units_donated) values(?,?,?,?,?,?,?,?)";

                Connection con1 = DBConnector.getConnection();
                pst = con1.prepareStatement(query1);

                pst.setString(1, aadhar);
                pst.setString(2, username);
                pst.setString(3, age);
                pst.setString(4, gender);
                pst.setString(5, bgroup);
                pst.setString(6, address);
                pst.setString(7, contact);
                pst.setInt(8, units_donated);

                int i = pst.executeUpdate();

                if (i > 0) 
                {
                    try
                    {
                        int toAdd = units_donated, toUpdate=0;
                        
                        Statement st = DBConnector.getStatement();

                        String query2 = "Select quantity from blood_availability where blood_group='"+bgroup+"'";

                        ResultSet rs = st.executeQuery(query2);
                        
                        if(rs.next())
                        {
                            toUpdate = toAdd + Integer.parseInt(rs.getString(1));
                            
                            try
                            {
                                String query3 = "Update blood_availability set quantity="+toUpdate+" where blood_group='"+bgroup+"'";
                                
                                int updated = st.executeUpdate(query3);
                                
                                if(updated>0)
                                {
                                    try
                                    {
                                        String query4 = "Insert into bloodbank_history(aadhar_no,updated_by,action,blood_group,units,on_date,time_recorded) values(?,?,?,?,?,?,?)";

//                                        Connection con = DBConnector.getConnection();
                                        pst = con1.prepareStatement(query4);

                                        pst.setString(1, aadhar);
                                        pst.setString(2, "Donor");
                                        pst.setString(3, "Donated");
                                        pst.setString(4, bgroup);
                                        pst.setInt(5, units_donated);
                                        pst.setString(6, date);
                                        pst.setString(7, time);

                                        int j = pst.executeUpdate();

                                        if(j>0)
                                        {
                                            return true;
                                        }
                                    }
                                    catch(SQLException e)
                                    {
                                        System.out.println(e);
                                    }
                                }
                            }
                            catch(SQLException e)
                            {
                                System.out.println(e);
                            }
                        }
                    }
                    catch(SQLException e)
                    {
                        System.out.println(e);
                    }
                }
            }
            catch(SQLException e)
            {
                System.out.println(e);
            }
        }
        return false;
    }
}
