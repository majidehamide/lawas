<%-- 
    Document   : error
    Created on : Mar 15, 2016, 5:22:08 AM
    Author     : _guhkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="padding-top: 70px">        
        <%@include file="header.jsp" %>       
        <div class="container">
            <div class="jumbotron">
                <h2 style="color: red"> Oops, Something wrong! </h2>
<!--                <p>You may want to check : </p>
                <p> 1. Check the size of number you insert. The max value for Datatype Integer is 2147483647 </p>
                <p> 2. Something wrong with the data, rollback must be done! </p>-->
            </div>
            <hr/>            
        </div>
    </body>
</html>
