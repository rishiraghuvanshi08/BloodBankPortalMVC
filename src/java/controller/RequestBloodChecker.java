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
import model.ReceiverReqAuthenticator;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
@WebServlet(name = "RequestBloodChecker", urlPatterns = {"/RequestBloodChecker"})
public class RequestBloodChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("request.jsp");
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
        String units = request.getParameter("units");
        
        UserDTO receiver = new UserDTO();
        receiver.setAadhar(aadhar);
        receiver.setUsername(username);
        receiver.setAge(age);
        receiver.setGender(gender);
        receiver.setBgroup(bgroup);
        receiver.setUnits(units);
        receiver.setAddress(address);
        receiver.setContact(contact);
        
        ReceiverReqAuthenticator receiverRequest = new ReceiverReqAuthenticator();
        boolean requestRegistered = receiverRequest.registration(receiver);
        
        if(requestRegistered)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("aadhar",aadhar);
            response.sendRedirect("registered.jsp");
        }
        else
        {
//            response.sendRedirect("request.html");
            request.setAttribute("patientregistrationfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/request.jsp");
            rd.include(request, response);
        }
    }
}