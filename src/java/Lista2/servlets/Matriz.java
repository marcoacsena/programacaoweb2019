/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Lista2.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marco
 */
@WebServlet(name = "Matriz", urlPatterns = {"/Lista2/matriz"})
public class Matriz extends HttpServlet {

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
        
        double M11 = Double.parseDouble(request.getParameter("M11"));
        double M12 = Double.parseDouble(request.getParameter("M12"));
        double M13 = Double.parseDouble(request.getParameter("M13"));
        double M21 = Double.parseDouble(request.getParameter("M21"));
        double M22 = Double.parseDouble(request.getParameter("M22"));
        double M23 = Double.parseDouble(request.getParameter("M23"));
        double M31 = Double.parseDouble(request.getParameter("M31"));
        double M32 = Double.parseDouble(request.getParameter("M32"));
        double M33 = Double.parseDouble(request.getParameter("M33"));   
           
        
        DecimalFormat df = new DecimalFormat("##.00");
        String det = df.format(((M11*M22*M33 + M12*M23*M31 + M13*M21*M32) - (M31*M22*M13 + M32*M23*M11 + M33*M21*M12)));
        
        System.out.println("A a área do triângulo é: " +det);
        
        request.setAttribute("determinante", det);
               
        request.getRequestDispatcher("Exe5.jsp").forward(request, response);
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
