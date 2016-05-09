<%-- 
    Document   : getSession
    Created on : Apr 11, 2016, 9:16:48 AM
    Author     : _guhkun
--%>

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            String base = request.getContextPath();
            Enumeration valueNames;
            String key = "";
            String value = "";
            String member_login = "";
            String role_member = "";
            if (session != null) {
                valueNames = session.getAttributeNames();
            } else {
                response.sendRedirect(base + "/login.jsp");
                valueNames = null;
            }
            //session terisi
            if (valueNames != null && valueNames.hasMoreElements()) {
                while (valueNames.hasMoreElements()) {
                    key = valueNames.nextElement().toString();
                    value = session.getAttribute(key).toString();
                    if (key.equalsIgnoreCase("member_login")) {
                        member_login = value;
                    }
                    if (key.equalsIgnoreCase("role_member")) {
                        role_member = value;
                    }
                }
            }
            if (role_member.equalsIgnoreCase("SuperAdmin") || role_member.equalsIgnoreCase("Admin")) { %>
        <%@include file="header_login_admin.jsp" %>
        <% } else  { %> 
        <%@include file="header_login_user.jsp" %>
        <% } %>        
    </body>    
</html>
