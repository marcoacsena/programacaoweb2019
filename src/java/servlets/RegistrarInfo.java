/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marco
 */
@WebServlet(name = "RegistrarInfo", urlPatterns = {"/registrarinfo"})
public class RegistrarInfo extends HttpServlet {

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
           
            FileOutputStream abrirArquivoGravado = new FileOutputStream("C:\\Users\\Marco\\Desktop\\Tecnólogo_ADS\\2019_1\\webprogramming\\aula1\\teste.txt");
            DataOutputStream gravarArquivo = new DataOutputStream(abrirArquivoGravado);                  
                   
            gravarArquivo.writeBytes(request.getParameter("info"));                  
            abrirArquivoGravado.close();
            
            try{
                FileReader abrirArquivoDeEntrada = new FileReader("C:\\Users\\Marco\\Desktop\\Tecnólogo_ADS\\2019_1\\webprogramming\\aula1\\teste.txt");
                BufferedReader lerArquivo = new BufferedReader(abrirArquivoDeEntrada);

                String dadosDoArquivo = new String();
                dadosDoArquivo = lerArquivo.readLine();
                
                request.setAttribute("dadosExibidos", dadosDoArquivo);
                request.getRequestDispatcher("Exe3.jsp").forward(request, response);
                
                abrirArquivoDeEntrada.close();
                
            } catch (IOException e){
                System.out.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
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
