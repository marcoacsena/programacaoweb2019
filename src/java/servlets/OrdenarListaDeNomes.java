/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marco
 */
public class OrdenarListaDeNomes extends HttpServlet {

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
        
        String listaDeNomes[] = new String[5];
        
        listaDeNomes[0] = request.getParameter("nome1");
        listaDeNomes[1] = request.getParameter("nome2");
        listaDeNomes[2] = request.getParameter("nome3");
        listaDeNomes[3] = request.getParameter("nome4");
        listaDeNomes[4] = request.getParameter("nome5");
        
        //Arrays.sort(listaDeNomes);
        
        for (int i = 0; i < (listaDeNomes.length - 1); i++) {
            for (int j = 0; j < (listaDeNomes.length - 1); j++) {
                if (listaDeNomes[j].compareTo(listaDeNomes[j + 1]) > 0) {
                    String auxiliar = listaDeNomes[j];
                    listaDeNomes[j] = listaDeNomes[j + 1];
                    listaDeNomes[j + 1] = auxiliar;
                }
            }
        }
        
        request.setAttribute("listaDeNomes", listaDeNomes);
        request.getRequestDispatcher("Exe2.jsp").forward(request, response);
        
        
//        ArrayList<String> listaDeNomesOrdenados = new ArrayList<String>();
//        
//        for(String nome: listaDeNomes){
//        
//            listaDeNomesOrdenados.add(nome);
//        }
        
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet teste</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println(listaDeNomesOrdenados);
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
