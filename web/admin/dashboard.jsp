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

            .col-md-3 a img {
                padding: 20px;
            }

        </style>
    </head>    
    <body>        
        <%@include file="../include/getSession.jsp"%>
        <div class="container">
            <h2> MANAJEMEN </h2>
            <hr/>
            <div class="row">
                <div class="col-md-3" style="text-align: center">
                    <a href="#"> 
                        <img src="<% out.print(base + "/assets/image/admin/manajemen_admin.png");%>" class="img-responsive"/>
                    </a>
                </div>
                <div class="col-md-3" style="text-align: center">
                    <a href="<% out.print(base + "/member/home.jsp");%>"> 
                        <img src="<% out.print(base + "/assets/image/admin/manajemen_anggota.png");%>" class="img-responsive"/>
                    </a>
                </div>
                <div class="col-md-3" style="text-align: center">
                    <a href="#"> 
                        <img src="<% out.print(base + "/assets/image/admin/simpanan_anggota.png");%>" class="img-responsive"/>
                    </a>
                </div>
                <div class="col-md-3" style="text-align: center">
                    <a href="#"> 
                        <img src="<% out.print(base + "/assets/image/admin/pinjaman_anggota.png");%>" class="img-responsive"/>
                    </a>
                </div>                
            </div>
            <br/>
            <h2> REKAP DATA </h2>
            <hr/>
            <div class="row">                
                <div class="col-md-3" style="text-align: center">
                    <a href="#"> 
                        <img src="<% out.print(base + "/assets/image/admin/rekap_simpanan.png");%>" class="img-responsive"/>
                    </a>
                </div>
                <div class="col-md-3" style="text-align: center">
                    <a href="#"> 
                        <img src="<% out.print(base + "/assets/image/admin/rekap_pinjaman.png");%>" class="img-responsive"/>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
