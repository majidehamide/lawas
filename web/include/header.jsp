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
        <title> Sistem Informasi Koperasi </title>
        <% String base = request.getContextPath(); %>
        <link href="<% out.print(base);%>/assets/css/bootstrap.min.css" rel="stylesheet"/> 
        <script src="<% out.print(base);%>/assets/js/jquery-1.12.3.min.js"></script>               
        <script src="<% out.print(base);%>/assets/js/bootstrap.min.js"></script>
    </head>
    <body style="padding-top: 100px; min-height: 100%">        
        <nav class="navbar navbar-default navbar-fixed-top" > 
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"> SIKOPI </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">                    
                    <ul class="nav navbar-nav " style="text-transform: uppercase; ">
                        <li> <a href="<% out.print(base+"/index.jsp");%>" >
                                Beranda </a> 
                        </li>
                        <li> <a href="<% out.print(base+"/homepage/profile.jsp");%>" >
                                Profil </a> 
                        </li>
                        <li> <a href="<% out.print(base+"/homepage/berita.jsp");%>" >
                                Berita </a> 
                        </li>                                                                       
                    </ul>
                    <ul class="nav navbar-nav navbar-right">                        
                        <li><a href="<% out.print(base+"/login.jsp");%>" class="btn btn-success"> <b> LOGIN </b> </a></li>
                    </ul>
                </div>
            </div>
        </nav>                                                        
    </body>
</html>
