/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marco
 */
public class OrdenarListaDeNumeros extends HttpServlet {

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
        
        ArrayList<Integer> listaDeNumeros = new ArrayList<Integer>();
        
        listaDeNumeros.add(Integer.parseInt(request.getParameter("numero1")));
        listaDeNumeros.add(Integer.parseInt(request.getParameter("numero2")));
        listaDeNumeros.add(Integer.parseInt(request.getParameter("numero3")));
        listaDeNumeros.add(Integer.parseInt(request.getParameter("numero4")));
        listaDeNumeros.add(Integer.parseInt(request.getParameter("numero5")));
        listaDeNumeros.add(Integer.parseInt(request.getParameter("numero6")));
        
        
        for(int i = 0; i < listaDeNumeros.size(); i++){
            for(int j = 0; j < 5; j++){
              if(listaDeNumeros.get(j) > listaDeNumeros.get(j + 1)){
                int aux = listaDeNumeros.get(j);
                listaDeNumeros.set(j, listaDeNumeros.get(j+1));
                listaDeNumeros.set(j+1, aux);
                                 
            }
        }
    }
        
       request.setAttribute("listaDeNumeros0", listaDeNumeros.get(0));
       request.setAttribute("listaDeNumeros1", listaDeNumeros.get(1));
       request.setAttribute("listaDeNumeros2", listaDeNumeros.get(2));
       request.setAttribute("listaDeNumeros3", listaDeNumeros.get(3));
       request.setAttribute("listaDeNumeros4", listaDeNumeros.get(4));
       request.setAttribute("listaDeNumeros5", listaDeNumeros.get(5));
       
       request.getRequestDispatcher("Exe1.jsp").forward(request, response);
        
        
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet OrdenarListaDeNumeros</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println(listaDeNumeros.get(0));
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
