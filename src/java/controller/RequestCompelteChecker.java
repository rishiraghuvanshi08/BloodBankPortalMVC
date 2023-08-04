package controller;

import dto.UserDTO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.RequestCompleteAuthenticator;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
@WebServlet(name = "RequestCompelteChecker", urlPatterns = {"/RequestCompelteChecker"})
public class RequestCompelteChecker extends HttpServlet 
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
        String units_req = request.getParameter("units_req");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");    
        String units_given = request.getParameter("units_given");
        
        UserDTO receiverS = new UserDTO();
        
        receiverS.setAadhar(aadhar);
        receiverS.setUsername(username);
        receiverS.setAge(age);
        receiverS.setGender(gender);
        receiverS.setBgroup(bgroup);
        receiverS.setUnits_req(units_req);
        receiverS.setAddress(address);
        receiverS.setContact(contact);
        receiverS.setUnits_given(units_given);
        
        RequestCompleteAuthenticator requestS = new RequestCompleteAuthenticator();
        boolean rSuccess = requestS.isCompleted(receiverS);
        
        if(rSuccess)
        {
//            response.sendRedirect("receivers.jsp");
            request.setAttribute("reqsuccess", "success");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/patientrequests.jsp");
            rd.include(request, response);
        }
        else
        {
//            response.sendRedirect("patientrequests.jsp");
            request.setAttribute("reqfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/patientrequests.jsp");
            rd.include(request, response);
        }
    }
}