<%-- 
    Document   : challenge5-2
    Created on : 2018/05/20, 13:21:51
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
            int i=3;
            switch(i){
                case 1:
                   out.print("one") ;
                   break;
                case 2:
                    out.print("two");
                    break;
                default:
                    out.print("想定外");
            } 
        %>
    </body>
</html>
