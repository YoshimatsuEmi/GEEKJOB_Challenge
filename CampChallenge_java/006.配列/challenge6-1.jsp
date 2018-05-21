<%-- 
    Document   : challenge6-1
    Created on : 2018/05/21, 10:51:41
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
            String[] list={"10","100","soeda","hayashi","-20","118","END"};
            for(int i=0;i<7;i++){
                out.println(list[i]+"<br>");
            }
        %>
    </body>
</html>
