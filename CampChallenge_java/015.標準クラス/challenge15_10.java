/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challenge15;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Scanner;
import java.util.Date;
import java.io.*;
import java.text.SimpleDateFormat;

/**
 *
 * @author 44yos
 */
@WebServlet(name = "challenge15_10", urlPatterns = {"/challenge15_10"})
public class challenge15_10 extends HttpServlet {

    int scanner(){
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        
        return x;
    }
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
            
            //ファイルの作成
            File fp = new File("ogfile.txt");
            fp.createNewFile();
            
            //ファイル操作
            FileWriter fw = new FileWriter(fp);
            Date time;
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd- HH:mm:ss");
            
            //べき乗
            //out.println("整数値を入力してください：");
            //int x = scanner();
            //out.println("整数値を入力してください：");
            //int y = scanner();
            
            int x = 4;
            int y = 3;
 
            fw.write("x="+x+" y="+y+"<br>");
            fw.write("pow(x,y)の開始<br>");
            fw.write(sdf.format(time = new Date())+"開始<br>");
            double z = Math.pow(x,y);
            fw.write("pow("+x+","+y+")   ="+z+"<br>");
            fw.write(sdf.format(time = new Date())+"終了<br>");
                
            
            //大きいほう
            fw.write("max(x,y)の開始<br>");
            fw.write(sdf.format(time = new Date())+"開始<br>");
            z = Math.max(x,y);
            fw.write("max("+x+","+y+")   ="+z+"<br>");
            fw.write(sdf.format(time = new Date())+"終了<br>");
            
            //ファイル操作
           
            fw.close();
            FileReader fr = new FileReader(fp);
            BufferedReader br = new BufferedReader(fr);
            out.println("ログファイル<br>");
            String data;
            while ((data = br.readLine()) != null) {
                out.println(data+"<br>");
            }
            br.close();
            
            
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
