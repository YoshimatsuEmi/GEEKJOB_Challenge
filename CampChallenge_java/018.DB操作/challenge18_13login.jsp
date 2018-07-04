<%-- 
    Document   : challenge18_13login
    Created on : 2018/07/04, 10:59:55
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>在庫管理システム　ログイン</title>
    </head>
    <body>
        <h1>在庫管理システム　ログイン</h1>
        <form action="challenge18_13top.jsp" method="post">
            <dl>
                <dt>ユーザー名</dt>
                <dd><input type="text" name="user"></dd>
                <dt>パスワード</dt>
                <dd><input type="password" name="pass"></dd>
            </dl>
            <button type="submit">ログイン</button>
            <div>
                <%
                    String error = (session.getAttribute("error") != null) ? session.getAttribute("error").toString() : "" ;
                    out.println(error+"<br>");
                    session.setAttribute("error", "");
                %>
            </div>
        </form>
    </body>
</html>
