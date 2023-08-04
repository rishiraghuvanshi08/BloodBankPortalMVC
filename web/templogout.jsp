<%-- 
    Document   : templogout
    Created on : Aug 15, 2022, 11:14:10 AM
    Author     : Rishi Raghuvanshi <techie.420>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temp Logout</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("webhome.jsp");
        %>
    </body>
</html>
