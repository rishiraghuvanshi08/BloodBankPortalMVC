package controller;

import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DeleteDonorAuthenticator;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
@WebServlet(name = "DeleteDonorChecker", urlPatterns = {"/DeleteDonorChecker"})
public class DeleteDonorChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String did = request.getParameter("did");       
        
        UserDTO donor = new UserDTO();
        donor.setDid(did);
        
        DeleteDonorAuthenticator donorDeletion = new DeleteDonorAuthenticator();
        boolean deleted = donorDeletion.isDeleted(donor);
        
        if(deleted)
        {
//            response.sendRedirect("donors.jsp");
            request.setAttribute("donordeletionsuccess", "success");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/donors.jsp");
            rd.include(request, response);
        }
        else
        {
//            response.sendRedirect("adminhome.jsp");
            request.setAttribute("donordeletionfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/donors.jsp");
            rd.include(request, response);
        }
    }
}