<%-- 
    Document   : index
    Created on : Apr 10, 2016, 1:45:23 PM
    Author     : _guhkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <style>
            body{
                background-image: url("assets/image/background.jpg");
                //background-size: cover;
                background-position: center;
            }
        </style>
    </head>    
    <body>
        <%@include file="include/header.jsp"%>
        <div class="container">                        
            <div class="jumbotron" style="text-align: center; " >
                <h1 style="text-transform: uppercase;"> KOPERASI FE UI</h1>
                <span>
                    <p> Selamat datang di beranda Website Koperasi Fakultas Ekonomi </p>
                        <p> Universitas Indonesia</p>
                    <br/>                    
                    <a href="homepage/profile.jsp" class="btn btn-success" style="padding: 20px 40px; font-size:20px;" > Lihat Profil </a>
                </span>
            </div>
            <hr/>            
        </div>
    </body>
</html>
