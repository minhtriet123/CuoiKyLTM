/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BO.ListHocsinhBO;
import model.bean.Hocsinh;

/**
 *
 * @author ADMIN
 */
public class ListHocsinh extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListHocsinh</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListHocsinh at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String destination = null;
        ListHocsinhBO listHocsinhBO = new ListHocsinhBO();
        ArrayList<Hocsinh> hsArray = null;
        try {
            hsArray = listHocsinhBO.getHocsinhList();           
            destination = "/RUD.jsp";
            request.setAttribute("hsArray", hsArray);
            RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
            rd.forward(request, response);

        } catch (ServletException | IOException e) {
            e.printStackTrace();

        } catch (SQLException ex) {
            Logger.getLogger(ListHocsinh.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }
     @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>s
}
