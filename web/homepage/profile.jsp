<%-- 
    Document   : profile
    Created on : Apr 11, 2016, 9:25:21 AM
    Author     : _guhkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
    </head>
    <body>
        <%@include file="../include/header.jsp"%>
        <div class="container">
            <div class="row"> 
                <div class="col-md-4">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                        <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                        <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <img src="<% out.print(base + "/assets/image/fe_1.jpg");%>" class="img-responsive">
                </div>
            </div>
            <hr/>            
        </div>
    </body>
</html>
