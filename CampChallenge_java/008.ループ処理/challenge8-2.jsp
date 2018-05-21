<%-- 
    Document   : challenge8-2
    Created on : 2018/05/21, 11:49:17
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
            String a="";
            for(int i=0; i<30; i++){
                a += "A";
            }
            out.print(a);
        %>
    </body>
</html>
