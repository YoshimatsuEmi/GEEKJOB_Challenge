<%-- 
    Document   : challenge6-2
    Created on : 2018/05/21, 11:14:19
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
            list[2]="33";
            out.println("<br>課題2<br><br>");
            for(int i=0;i<7;i++){
                out.println(list[i]+"<br>");
            }
        %>
    </body>
</html>
