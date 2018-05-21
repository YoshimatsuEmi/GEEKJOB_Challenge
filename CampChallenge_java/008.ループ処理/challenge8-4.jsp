<%-- 
    Document   : challenge8-4
    Created on : 2018/05/21, 12:52:48
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
            int i=1000;
            while(i>=100){
                i /= 2;
            }
            out.print(i);
        %>
    </body>
</html>
