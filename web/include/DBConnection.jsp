<%-- 
    Document   : DBConnection
    Created on : Mar 14, 2016, 4:06:45 PM
    Author     : _guhkun
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //1. register jdbc driver 
                Class.forName("com.mysql.jdbc.Driver");            
                // database credentials
                String userName = "root";
                String password = "";
                // database name and location
                String url = "jdbc:mysql://localhost/sikopi";
            //2. open connection
                Connection connection = DriverManager.getConnection(url, userName, password);
           //3. execute query
                Statement statement = connection.createStatement();
                
        %>
    </body>
</html>
