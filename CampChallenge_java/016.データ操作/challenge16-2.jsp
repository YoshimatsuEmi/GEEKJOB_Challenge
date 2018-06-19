<%-- 
    Document   : challenge16-2
    Created on : 2018/06/18, 15:18:58
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            out.println(request.getParameter("name")+"<br>");
            out.println(request.getParameter("gender")+"<br>");
            out.println(request.getParameter("hobby")+"<br>");
        %>
    </body>
</html>
