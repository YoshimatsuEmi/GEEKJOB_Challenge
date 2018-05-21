<%-- 
    Document   : challenge
    Created on : 2018/05/21, 11:52:56
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
            int sum=0;
            for(int i=0; i<=100; i++){
                sum += i;
            }
            out.print(sum);
        %>
    </body>
</html>
