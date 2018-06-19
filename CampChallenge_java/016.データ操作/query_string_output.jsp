<%-- 
    Document   : query_string_output
    Created on : 2018/06/18, 18:57:09
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge16-4 output</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            
            int total = Integer.parseInt(request.getParameter("total"));
            int count = Integer.parseInt(request.getParameter("count"));
            int type = Integer.parseInt(request.getParameter("type"));
            
            out.println("購入した商品の総額："+total+"円<br>");
            out.println("購入した商品の数量："+count+"個<br>");
            
            String typestr = "";
            switch (type){
                case 1:
                    typestr = "1.雑貨";
                    break;
                case 2:
                    typestr = "2.生鮮食品";
                    break;
                case 3:
                    typestr = "3.その他";
                    break;
            }
            out.println("商品種別："+typestr+"<br>");
            
            
            //単価
            int price = total/count;
            out.println("単価："+price+"円<br>");
            
            //ポイント
            double point;
            if(total<3000){
                point = 0;
            }else if(total<=3000 || total<5000){
                point = total*0.04;
            }else{
                point = total*0.05;
            }
            out.println("ポイント："+(int)point+"P<br>");
        %>
    </body>
</html>
