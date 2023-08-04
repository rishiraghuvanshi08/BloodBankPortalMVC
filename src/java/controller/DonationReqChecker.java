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
import model.DonationReqAuthenticator;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "DonationReqChecker", urlPatterns = {"/DonationReqChecker"})
public class DonationReqChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String aadhar = request.getParameter("aadhar");
        String username = request.getParameter("username");
        String age = request.getParameter("age");
        String gender = request.getParameter("gender");
        String bgroup = request.getParameter("bgroup");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");        
        
        UserDTO donor = new UserDTO();
        donor.setAadhar(aadhar);
        donor.setUsername(username);
        donor.setAge(age);
        donor.setGender(gender);
        donor.setBgroup(bgroup);
        donor.setAddress(address);
        donor.setContact(contact);
        
        DonationReqAuthenticator donorReq = new DonationReqAuthenticator();
        boolean registered = donorReq.isRegister(donor);
        
        if(registered)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("aadhar", aadhar);
            response.sendRedirect("registered.jsp");
        }
        else
        {
//            response.sendRedirect("donate.jsp");
            request.setAttribute("donorregistrationfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/webhome.jsp");
            rd.include(request, response);
        }
    }
}