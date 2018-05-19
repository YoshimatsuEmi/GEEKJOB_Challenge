<%-- 
    Document   : challenge1-3
    Created on : 2018/05/19, 11:59:26
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
            int i = 6;
            final int j = 2;
            
            int num1 = i+j;
            int num2 = i-j;
            int num3 = i*j;
            int num4 = i/j;
            int num5 = i%j;
            
            out.print("6+2="+ num1 +"  ");
            out.print("6-2="+ num2 +"  ");
            out.print("6*2="+ num3 +"  ");
            out.print("6/2="+ num4 +"  ");
            out.print("6%2="+ num5 );
        %>
    </body>
</html>
