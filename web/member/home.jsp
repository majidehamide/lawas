<%-- 
    Document   : home
    Created on : Apr 11, 2016, 11:10:56 AM
    Author     : _guhkun
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
    </head>
    <body>
        <%@include file="../include/getSession.jsp"%>
        <%@include file="../include/DBConnection.jsp"%>
        <%             
            String sql = "SELECT * FROM user ";                    
            ResultSet resultSet = statement.executeQuery(sql);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            int countRows = 1;            
        %>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading" style="text-transform: uppercase"> <h4> daftar anggota </h4> </div>
                <div class="panel-body"> 
                    <table class="table table-stiped table-hover">           
                        <thead>
                        <th> No </th>
                        <th> Nama </th>
                        <th> Nomor KTP </th>
                        <th> Nomor Rekening</th>
                        <th> Username </th>
                        <th colspan="2" style="text-align: center"> Manage </th>
                        </thead>
                        <% while (resultSet.next()) { %> 
                        <tbody>
                            <tr>
                                <td> <% out.print(countRows); %></td>
                                <% for (int i = 1; i<=4; i++) { %> 
                                <td> <% out.print(resultSet.getObject(i)); %> </td>
                                <% } %>                                
                                <td style="text-align: center">
                                    <form action="<% out.print("#"); %>" method="post"> 
                                        <input type="hidden" name="pb_id" value="<% out.print("#");%>" />
                                        <input type="submit" class="btn btn-primary" value="Ubah" /> 
                                    </form>
                                </td>
                                <td style="text-align: center">
                                    <form action="#" method="post"> 
                                        <input type="hidden" name="pb_id" value="<% out.print("#");%>" />
                                        <input type="submit" class="btn btn-danger" value="Hapus" />
                                    </form>                            
                                </td>
                            </tr>
                            <% countRows ++; } %>
                        </tbody>
                    </table>
                </div>
                <div class="panel-footer">
                    <a href="<% out.print(base+"/member/add.jsp"); %>" class="btn btn-lg btn-success"> Tambah Anggota </a>
                </div>
            </div>
        </div>
    </body>
</html>
