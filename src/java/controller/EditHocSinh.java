/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BO.EditHocSinhBO;
import model.bean.Hocsinh;


public class EditHocSinh extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditHocSinh</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditHocSinh at " + request.getContextPath() + "</h1>");
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
        String Idhs = request.getParameter("idhs");
        Hocsinh hs = new Hocsinh();
        EditHocSinhBO edithocsinhBO = new EditHocSinhBO();
        hs = edithocsinhBO.getInforHocsinh(Idhs);
        String destination = "/edit.jsp";
        request.setAttribute("idhs", Idhs);
        request.setAttribute("name", hs.getTen());
        request.setAttribute("phone", hs.getSdt());
        request.setAttribute("email", hs.getEmail());
        request.setAttribute("birthday", hs.getNgaysinh());
        request.setAttribute("address", hs.getDiachi());
        request.setAttribute("hocphi", hs.getHocphi());
        request.setAttribute("iduser", hs.getIduser());
        RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
        rd.forward(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
