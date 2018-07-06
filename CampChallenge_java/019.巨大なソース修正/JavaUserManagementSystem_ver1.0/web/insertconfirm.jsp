<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%@page import="jums.UserDataBeans"%>
<%
    HttpSession hs = request.getSession();
    UserDataBeans udb = new UserDataBeans();
    udb = (UserDataBeans)hs.getAttribute("udb");

    boolean chkName = !udb.getName().equals("");
    boolean chkYear = udb.getYear() != 0;
    boolean chkMonth = udb.getMonth() != 0;
    boolean chkDay = udb.getDay() != 0;
    boolean chkType = udb.getType() != 0;
    boolean chkTell = !udb.getTell().equals("");
    boolean chkComment = !udb.getComment().equals("");
%>
            
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
        <% if(chkName && chkYear && chkMonth && chkDay && chkType && chkTell && chkComment){ %>
        <h1>登録確認</h1>
        名前:<%= udb.getName()%><br>
        生年月日:<%= udb.getYear()+"年"+udb.getMonth()+"月"+udb.getDay()+"日"%><br>
        種別:<%= udb.getType()%><br>
        電話番号:<%= udb.getTell()%><br>
        自己紹介:<%= udb.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
        <% if(!chkName) %>・名前<br>
        <% if(!chkYear) %>・生年月日　年<br>
        <% if(!chkMonth) %>・生年月日　月<br>
        <% if(!chkDay) %>・生年月日　日<br>
        <% if(!chkType) %>・種別<br>
        <% if(!chkTell) %>・電話番号<br>
        <% if(!chkComment) %>・自己紹介<br>
        上記項目を入力してください。<br>
        <br>
    <% } %>
        <form action="insert" method="POST" name="return">
            <input type="submit" name="no" value="登録画面に戻る">
            
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
