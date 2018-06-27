<%-- 
    Document   : challenge16_7form
    Created on : 2018/06/23, 11:15:19
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge16_7form</title>
    </head>
    
        <h1>データ入力画面</h1>
        <%
            String name = (session.getAttribute("name") != null) ? session.getAttribute("name").toString() : "" ;
            String hobby = (session.getAttribute("hobby") != null) ? session.getAttribute("hobby").toString() : "" ;
            String gender = (session.getAttribute("gender") != null) ? session.getAttribute("gender").toString() : "" ;
        %>
        <form action="challenge16_7out.jsp" method="get">
            <dl>
                <dt>名前</dt>
                <dd><input type="text" name="name" value=<%=name%>></dd>
                <dt>性別</dt>
                <dd><input type="radio" name="gender" value="男性" <%=gender.equals("男性") ? "checked" : ""%>>男性
                    <input type="radio" name="gender" value="女性" <%=gender.equals("女性") ? "checked" : ""%>>女性
                </dd>
                <dt>趣味</dt>
                <dd><textarea name="hobby"><%=hobby%></textarea></dd>
            </dl>
            <button type="submit">送信</button>
        </form>
    

