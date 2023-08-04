package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class LoginAuthenticator 
{
    public boolean isLogin(UserDTO user)
    {
        String username = user.getUsername();
        String password = user.getPassword();
        String tablePassword="";
        
        try
        {
            Statement st = DBConnector.getStatement();

            String query = "Select password from admin where username='"+username+"'";
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                tablePassword = rs.getString(1);
            }
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if(username!=null && password!=null && !username.trim().equals("") && password.equals(tablePassword))
        {
            return true;
        }
        return false;
    }
}
