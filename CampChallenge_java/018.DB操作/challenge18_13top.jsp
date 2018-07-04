<%-- 
    Document   : challenge18_13top
    Created on : 2018/07/03, 17:01:35
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>在庫管理システム　トップ</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            
            Connection con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db?serverTimezone=JST","root","");
                PreparedStatement st = null;
                
                String sql = "SELECT * FROM systemuser WHERE user=? AND pass=?";
                st = con.prepareStatement(sql);
                
                st.setString(1, user);
                st.setString(2, pass);
                
                ResultSet date = st.executeQuery();
                
                if(date.next()){
                    %>
                    <a href="challenge18_13record.html">商品登録</a><br>
                    <a href="challenge18_13list.jsp">商品一覧</a><br>
                    <a href="challenge18_13update.html">在庫数更新</a><br><br>
                    <a href="challenge18_13login.html">ログアウト</a>
                <%
                }else{
                    session.setAttribute("error","名前かパスワードが間違っています。");
                        %>
                    <jsp:forward page ="challenge18_13login.jsp"/>
                <%
                }
                
                date.close();
                st.close();
                con.close();
                
            }catch (ClassNotFoundException ex) {
                out.println("エラー：クラスが見つかりませんでした<br>"+ex);
            }catch (InstantiationException ex) {
                out.println("エラー：インスタンス化<br>"+ex);
            }catch (IllegalAccessException ex) {
                out.println("エラー：アクセス<br>"+ex);
            }catch (SQLException ex) {
                out.println("エラー：SQL<br>"+ex);
            }
            finally{
                try{
                    if(con != null){
                        con.close();
                    }
                }catch(Exception e){
                    out.println("Exception2! :"+e.toString());
                }
            }
        %>
    </body>
</html>
