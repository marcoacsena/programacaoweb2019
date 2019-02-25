/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marco
 */
public class LerInfoDeArq extends HttpServlet {

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
        
        String nomeDoArquivo = request.getParameter("nomedoarquivo");
        InputStream inputstream;
        
        
        //File arquivo = new File(nomeDoArquivo);
        //String caminhoCompleto = arquivo.getAbsolutePath();
        try{
//                FileInputStream abrirArquivoDeEntrada = new FileInputStream(nomeDoArquivo);
//                DataInputStream lerArquivo = new DataInputStream(abrirArquivoDeEntrada);
                
                inputstream = new BufferedInputStream(new FileInputStream("nomeDoArquivo"));
                int conteudo = inputstream.read();
                  
                while(conteudo != -1){
                    System.out.println((char)conteudo);
                }
                
//                request.setAttribute("conteudoDoArquivo", conteudoDoArquivo);
//                request.getRequestDispatcher("Exe4.jsp").forward(request, response);
                
                inputstream.close();
                
            } catch (IOException e){
                System.out.printf("Erro na abertura do arquivo: %s.\n", e.getMessage());
            }    

//try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet OrdenarListaDeNumeros</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println(caminhoCompleto);
//            out.println("</body>");
//            out.println("</html>");
//        }
        
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
