
<%@page import="jums.JumsHelper"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>削除結果画面</title>
    </head>
    <body>
    <h1>削除確認</h1>
    削除しました。<br>
    <br>
    <form action="SearchResult" method="POST">
        <input type="submit" name="btnSubmit" value="検索結果へ戻る">
        <input type="hidden" name="mode" value="DeleteResult">
    </form>
    <br>
    <%=jh.home()%>
    </body>
</html>
