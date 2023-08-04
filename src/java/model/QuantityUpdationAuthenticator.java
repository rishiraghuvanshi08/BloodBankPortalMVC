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
public class QuantityUpdationAuthenticator 
{
    public boolean isUpdated(UserDTO update) 
    {
        String bgroup = update.getBgroup();
        int units = Integer.parseInt(update.getUnits());
        String function = update.getFunction();
        
        LocalDate ld = LocalDate.now();
        String date = ld.toString();
        
        LocalTime lt = LocalTime.now();
        DateTimeFormatter df = DateTimeFormatter.ofPattern("hh:mm a");
        String time = df.format(lt);

        if (function.equalsIgnoreCase("add")) 
        {
            try
            {
                int toUpdate=0;

                Statement st = DBConnector.getStatement();

                String query1 = "Select quantity from blood_availability where blood_group='"+bgroup+"'";

                ResultSet rs = st.executeQuery(query1);

                if(rs.next())
                {
                    toUpdate = Integer.parseInt(rs.getString(1)) + units;
                    try
                    {
                        String query2 = "Update blood_availability set quantity="+toUpdate+" where blood_group='"+bgroup+"'";

                        int updated = st.executeUpdate(query2);

                        if(updated>0)
                        {
                            try
                            {
                                PreparedStatement pst = null;
                                String query3 = "Insert into bloodbank_history(updated_by,action,blood_group,units,on_date,time_recorded) values(?,?,?,?,?,?)";
                                
                                Connection con = DBConnector.getConnection();
                                pst = con.prepareStatement(query3);
                                
                                pst.setString(1, "Admin");
                                pst.setString(2, "Added");
                                pst.setString(3, bgroup);
                                pst.setInt(4, units);
                                pst.setString(5, date);
                                pst.setString(6, time);
                                
                                int i = pst.executeUpdate();

                                if(i>0)
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
        else if(function.equalsIgnoreCase("remove"))
        {
            try
            {
                int toUpdate=0;

                Statement st = DBConnector.getStatement();

                String query1 = "Select quantity from blood_availability where blood_group='"+bgroup+"'";

                ResultSet rs = st.executeQuery(query1);

                if(rs.next())
                {
                    if(Integer.parseInt(rs.getString(1)) < units)
                    {
                        return false;
                    }
                    toUpdate = Integer.parseInt(rs.getString(1)) - units;
                    try
                    {
                        String query2 = "Update blood_availability set quantity="+toUpdate+" where blood_group='"+bgroup+"'";

                        int updated = st.executeUpdate(query2);

                        if(updated>0)
                        {
                            try
                            {
                                PreparedStatement pst = null;
                                String query3 = "Insert into bloodbank_history(updated_by,action,blood_group,units,on_date,time_recorded) values(?,?,?,?,?,?)";
                                
                                Connection con = DBConnector.getConnection();
                                pst = con.prepareStatement(query3);
                                
                                pst.setString(1, "Admin");
                                pst.setString(2, "Removed");
                                pst.setString(3, bgroup);
                                pst.setInt(4, units);
                                pst.setString(5, date);
                                pst.setString(6, time);
                                
                                int i = pst.executeUpdate();

                                if(i>0)
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
        return false;
    }
}
