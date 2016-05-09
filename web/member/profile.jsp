<%-- 
    Document   : add
    Created on : Apr 11, 2016, 11:43:06 AM
    Author     : _guhkun
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
    </head>
    <body>
        <%@include file="../include/getSession.jsp"%>
        <%@include file="../include/DBConnection.jsp"%>
        <div class="container">
            <div class="panel panel-primary" style="margin:0 10%">
                <div class="panel-heading"> 
                    <h4> Data Anggota </h4>                     
                    <h3> </h3>
                </div>
                <div class="panel-body"> 
                    <form action="<% out.print(base + "/TambahAnggotaServlet");%>" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label"> Nama </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nama" placeholder="Nama" required="true"/>
                            </div>                    
                        </div>                        
                        <div class="form-group">
                            <label class="col-sm-2 control-label"> Nomor KTP </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nomor_ktp" placeholder="Nomor KTP" required="true" />
                            </div>                    
                        </div>                                    
                        <div class="form-group">
                            <label class="col-sm-2 control-label"> Nomor Rekening </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nomor_rekening" placeholder="Nomor Rekening" required="true" />
                            </div>
                        </div>                                                
                        <div class="form-group">
                            <label class="col-sm-2 control-label"> Username </label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="username" placeholder="Username" required="true"/>
                            </div>                    
                        </div>                        
                        <div class="form-group">
                            <label class="col-sm-2 control-label"> Password </label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="password" placeholder="Password" required="true" />
                            </div>                    
                        </div>
                        <div class="form-group">     
                            <label class="col-sm-2 control-label"> Role </label>
                            <div class="col-sm-10">
                                <select class="form-control" name="id_role">
                                    <option value="3" > User </option>
                                    <option value="2"> Admin</option>                                
                                </select>                                                                                  
                            </div>                            
                        </div>
                </div>
                <div class="panel-footer">                     
                    <input type="submit" value="SIMPAN" class="btn btn-lg btn-success"/>
                    </form>
                </div>                    
            </div>
        </div> 
    </body>
</html>
