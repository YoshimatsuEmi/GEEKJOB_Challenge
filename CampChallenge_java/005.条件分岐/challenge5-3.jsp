<%-- 
    Document   : challenge5-3
    Created on : 2018/05/20, 13:34:40
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
            char str='A';
            switch(str){
                case 'あ':
                    out.print("日本語");
                    break;
                case 'A':
                    out.print("英語");
                    break;
                default:
                    break;                    
            }
        %>
    </body>
</html>
