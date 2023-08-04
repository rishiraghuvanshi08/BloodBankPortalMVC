package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class DeletePatientReqAuthenticator 
{
    public boolean isDeleted(UserDTO patient) 
    {
        String aadhar = patient.getAadhar();

        try {
            Statement st = DBConnector.getStatement();
            
            String query = "Delete from patient_request where aadhar='"+aadhar+"'";

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
