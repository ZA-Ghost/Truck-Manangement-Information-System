<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*, java.sql.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="preventBackButtonAfterLogOut.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
      
    // Disable browser caching for this page
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies

    // Remove or invalidate the user session
    session.invalidate();
    // Redirect the user to the login page or any other desired page
    response.sendRedirect("index.html");
%>
    </body>
</html>
