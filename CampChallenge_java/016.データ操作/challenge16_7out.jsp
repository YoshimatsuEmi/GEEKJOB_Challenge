<%-- 
    Document   : query_string_output
    Created on : 2018/06/18, 18:57:09
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge16_7out</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String hobby = request.getParameter("hobby");
            
            session.setAttribute("name", name);
            session.setAttribute("gender",gender);
            session.setAttribute("hobby",hobby);
            
            out.println("name:"+session.getAttribute("name")+"<br>");
            out.println("gender:"+session.getAttribute("gender")+"<br>");
            out.println("hobby:"+session.getAttribute("hobby")+"<br>");
            
        %>
    </body>
</html>
