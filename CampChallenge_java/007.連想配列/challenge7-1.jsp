<%-- 
    Document   : challenge7-1
    Created on : 2018/05/21, 11:28:57
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
        <%@page import="java.util.*"%>
        <%
            HashMap<String,String> list=new HashMap<String,String>();
            list.put("1","AAA");
            list.put("hello", "world");
            list.put("soeda", "33");
            list.put("20", "20");
            
            out.println("1 "+list.get("1")+"<br>");
            out.println("hello "+list.get("hello")+"<br>");
            out.println("soeda "+list.get("soeda")+"<br>");
            out.println("20 "+list.get("20")+"<br>");
        %>
    </body>
</html>
