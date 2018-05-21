<%-- 
    Document   : challenge8-1
    Created on : 2018/05/21, 11:43:22
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
            long sum=8;
            for(int i=1; i<20; i++){
                sum *= 8;
                
            }
            out.print(sum);
        %>
    </body>
</html>
