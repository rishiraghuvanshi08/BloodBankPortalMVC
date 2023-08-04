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
import model.DeleteReceiverAuthenticator;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
@WebServlet(name = "DeleteReceiverChecker", urlPatterns = {"/DeleteReceiverChecker"})
public class DeleteReceiverChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String pid = request.getParameter("pid");       
        
        UserDTO receiver = new UserDTO();
        receiver.setPid(pid);
        
        DeleteReceiverAuthenticator receiverDeletion = new DeleteReceiverAuthenticator();
        boolean deleted = receiverDeletion.isDeleted(receiver);
        
        if(deleted)
        {
//            response.sendRedirect("receivers.jsp");
            request.setAttribute("receiverdeletionsuccess", "success");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/receivers.jsp");
            rd.include(request, response);
        }
        else
        {
//            response.sendRedirect("adminhome.jsp");
            request.setAttribute("receiverdeletionfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/receivers.jsp");
            rd.include(request, response);
        }
    }
}