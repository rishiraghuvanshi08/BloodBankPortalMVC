package controller;

import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;

/**
 *
 * @author Rishi Raghuvanshi <techie.420>
 */
public class LoginChecker extends HttpServlet 
{
        public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        UserDTO user = new UserDTO();
        user.setUsername(username);
        user.setPassword(password);
        
        LoginAuthenticator authenticator = new LoginAuthenticator();
        boolean login = authenticator.isLogin(user);
        
        if(login)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
//            response.sendRedirect("adminhome.jsp");
            request.setAttribute("loginsuccessful", "success");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/adminhome.jsp");
            rd.include(request, response);
        }
        else
        {
//            response.sendRedirect("login.jsp");
            request.setAttribute("loginfailed", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            rd.include(request, response);
        }
    }

}