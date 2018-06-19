<%-- 
    Document   : query_string_input
    Created on : 2018/06/18, 18:56:41
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge16-4 input</title>
        <style>
            
        </style>
    </head>
    <body>
        <form action="query_string_output.jsp">
            <dl>
                <dt>購入した商品の総額</dt>
                <dd>
                    <input type="number" name="total" required>
                </dd>
                <dt>購入した商品の数量</dt>
                <dd>
                    <input type="number" name="count" required>
                </dd>
                <dt>商品種別</dt>
                <dd>
                    <input type="number" name="type" min="1" max="3" required>
                    1.雑貨 2.生鮮食品 3.その他<br>
                </dd>
            </dl>
            <button type="submit">送信</button>
        </form>
    </body>
</html>
