<%-- 
    Document   : challenge18_13record
    Created on : 2018/07/03, 18:36:52
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>在庫管理システム　商品登録結果</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            
            String name = request.getParameter("name");
            int stock = Integer.parseInt(request.getParameter("stock"));
            
            Connection con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db?serverTimezone=JST","root","");
                PreparedStatement st = null;
                
                String sql = "INSERT INTO systemproduct (name, stock) VALUES (?,?)";
                st = con.prepareStatement(sql);
                
                st.setString(1, name);
                st.setInt(2, stock);
                
                st.executeUpdate();
                
                sql = "SELECT * FROM systemproduct";
                st = con.prepareStatement(sql);
                
                ResultSet data = st.executeQuery();
                
                while (data.next()){
                    String str1 = data.getString("productID");
                    String str2 = data.getString("name");
                    String str3 = data.getString("stock");
                    out.println(str1+" . "+str2+" : "+str3+"個<br>");
                }
                
                data.close();
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
