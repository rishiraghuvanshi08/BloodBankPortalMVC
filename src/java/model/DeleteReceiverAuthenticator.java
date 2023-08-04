package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class DeleteReceiverAuthenticator 
{
   public boolean isDeleted(UserDTO receiver) 
    {
        String pid = receiver.getPid();

        try {
            Statement st = DBConnector.getStatement();
            
            String query = "Delete from request_completed where pid='"+pid+"'";

            int deleted = st.executeUpdate(query);

            if (deleted > 0) {
                return true;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
}
