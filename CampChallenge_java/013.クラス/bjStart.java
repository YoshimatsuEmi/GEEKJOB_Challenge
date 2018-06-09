/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 44yos
 */
@WebServlet(name = "bjStart", urlPatterns = {"/bjStart"})
public class bjStart extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            Dealer dealer = new Dealer();
            User user = new User();
            out.println("<h1>BlackJack　Start!!</h1><br>");
            //カード配る
            out.println("<h2>カードを配ります。</h2><br>");
            dealer.setCard(dealer.deal());
            out.println("ディーラー"+dealer.myCards+"<br>");
            user.setCard(dealer.deal());
            out.println("ユーザー"+user.myCards+"<br>");
            //カードの合計値が17以上になるまでhit
            out.println("<h2>Hit!</h2><br>");
            int n=0;
            while(user.cheakSum()){
                n++;
                user.setCard(dealer.hit());
                out.println("ユーザーHit"+n+"回目"+user.myCards+"<br>");
            }
            //17以上になったから勝敗表示
            out.println("<h2>結果発表</h2>");
            int sumD = dealer.open();
            int sumU = user.open();
            int dealer21 = 21-sumD;
            int user21 = 21-sumU;
            out.println("ディーラーの合計値："+sumD+"<br>");
            out.println("ユーザーの合計値："+sumU+"<br>");
            
            if(sumU<=21){
                if(sumU>sumD){
                    out.println("WINNER：ユーザー<br>");
                }else if(sumU==sumD){
                    out.println("引き分け<br>");
                }else{
                    out.println("WINNER：ディーラー<br>");
                }
            }else{
                out.println("WINNER：ディーラー<br>");
            }
        
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
