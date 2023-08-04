package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class DonationReqAuthenticator 
{
    public boolean isRegister(UserDTO donor)
    {
        String aadhar = donor.getAadhar();
        String username = donor.getUsername();
        String age = donor.getAge();
        String gender = donor.getGender();
        String bgroup = donor.getBgroup();
        String address = donor.getAddress();
        String contact = donor.getContact();
        
        if (!username.trim().equals(""))
        {
            try
            {
                PreparedStatement pst = null;
                String query1 = "Insert into donor_request values(?,?,?,?,?,?,?)";
                
                Connection con1 = DBConnector.getConnection();
                pst = con1.prepareStatement(query1);
                
                pst.setString(1,aadhar);
                pst.setString(2,username);
                pst.setString(3,age);
                pst.setString(4,gender);
                pst.setString(5,bgroup);
                pst.setString(6,address);
                pst.setString(7,contact);
                
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
        return false;
    }    
}
