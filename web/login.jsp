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
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="text-align: center">
                            <h2> Login to SIKOPI </h2>
                        </div>
                        <div class="panel-body">
                            <form class="form" action="<% out.print(base+"/LoginServlet");%>" method="post" style="padding: 30px">
                                <input type="text" name="username" class="input-lg form-control" placeholder="USERNAME">
                                <br/>
                                <input type="password" name="password" class="input-lg form-control" placeholder="PASSWORD">
                                <hr/>
                                <div style="text-align: center">
                                    <input type="submit" class="btn btn-lg btn-primary" value="LOGIN"> 
                                </div >                                                        
                            </form>
                        </div>                        
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </body>
</html>
