<%-- 
    Document   : challenge5-1
    Created on : 2018/05/20, 12:05:14
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
            int i=1;
            if (i==1){
                out.println("1です!");
            }else if(i==2){
                out.println("プログラミングキャンプ!");
            }else{
                out.print("その他です!");
            }
        %>
    </body>
</html>
