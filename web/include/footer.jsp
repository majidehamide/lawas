<%-- 
    Document   : header
    Created on : Mar 14, 2016, 11:23:45 AM
    Author     : _guhkun
--%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% String a = request.getContextPath(); %>
        <link href="<% out.print(a);%>/assets/css/bootstrap.min.css" rel="stylesheet"/>
        <style>
            .footer{
                position: static;
                overflow: hidden;
                left: 0px;
                bottom: 0px;
                //height: 100px;
                margin-top: 50px;
                color: white;                
                padding: 30px;
                background-color: #110C0C;
                text-align:center;
                font-size: small;
            }
        </style>
    </head>
    <body style="padding-top: 70px; min-height: 100%">                
        <footer class="footer"> 
            <div class="container">                       
                <p> guhkun13 &copy; 2016 </p>                
            </div>            
        </footer>
    </body>
</html>