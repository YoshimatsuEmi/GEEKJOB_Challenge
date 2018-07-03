<%-- 
    Document   : challenge18_12
    Created on : 2018/07/03, 15:00:52
    Author     : 44yos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>検索結果</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String birthday =request.getParameter("birthday");
            
            Connection db_con = null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db?serverTimezone=JST","root","");
                PreparedStatement db_st = null;
                
                String sql = "SELECT * FROM profiles  WHERE name=? OR age=? OR birthday=?";
                db_st = db_con.prepareStatement(sql);
                
                db_st.setString(1,name);
                db_st.setInt(2,age);
                db_st.setString(3,birthday);
                
                ResultSet db_data = null;
                db_data = db_st.executeQuery();
                
                while (db_data.next()){
                    String str1 = db_data.getString("profilesID");
                    String str2 = db_data.getString("name");
                    String str3 = db_data.getString("tel");
                    String str4 = db_data.getString("age");
                    String str5 = db_data.getString("birthday");
                    out.println(str1+", "+str2+", "+str3+", "+str4+", "+str5+"<br>");
                }
                db_data.close();
                db_st.close();
                db_con.close();
                
            }catch (ClassNotFoundException ex) {
                out.println("エラー：クラスが見つかりませんでした<br>"+ex);
            }catch (InstantiationException ex) {
                out.println("エラー：インスタンス化<br>"+ex);
            }catch (IllegalAccessException ex) {
                out.println("エラー：アクセス<br>"+ex);
            } catch (SQLException ex) {
                out.println("エラー：SQL<br>"+ex);
            }
            finally{
                try{
                    if(db_con != null){
                        db_con.close();
                    }
                }catch(Exception e){
                    out.println("Exception2! :"+e.toString());
                }
            }

        %>
    </body>
</html>
