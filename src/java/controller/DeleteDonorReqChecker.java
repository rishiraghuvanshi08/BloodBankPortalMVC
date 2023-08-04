package controller;

import dto.UserDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DeleteDonorReqAuthenticator;


/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
@WebServlet(name = "DeleteDonorReqChecker", urlPatterns = {"/DeleteDonorReqChecker"})
public class DeleteDonorReqChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String aadhar = request.getParameter("aadhar");       
        
        UserDTO donor = new UserDTO();
        donor.setAadhar(aadhar);
        
        DeleteDonorReqAuthenticator donorReq = new DeleteDonorReqAuthenticator();
        boolean deleted = donorReq.isDeleted(donor);
        
        if(deleted)
        {
//            response.sendRedirect("donorsrequests.jsp");
            request.setAttribute("reqdeletionsuccess", "success");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/donorsrequests.jsp");
            rd.include(request, response);
        }
        else
        {
//            response.sendRedirect("adminhome.jsp");
            request.setAttribute("reqdeletionfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/donorsrequests.jsp");
            rd.include(request, response);
        }
    }
}