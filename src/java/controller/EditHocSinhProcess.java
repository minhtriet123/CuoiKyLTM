
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


public class EditHocSinhProcess extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditHocSinhProcess</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditHocSinhProcess at " + request.getContextPath() + "</h1>");
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
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("idhs");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String hocphi = request.getParameter("hocphi");
        String iduser = request.getParameter("iduser");
        Hocsinh hs = new Hocsinh();
        hs.setId(Integer.parseInt(id));
        hs.setTen(name);
        hs.setSdt(phone);
        hs.setEmail(email);
        hs.setNgaysinh(birthday);
        hs.setDiachi(address);
        hs.setHocphi(hocphi);
        hs.setIduser(iduser);
        EditHocSinhBO editHocsinhBO = new EditHocSinhBO();
        if(editHocsinhBO.editHocSinh(hs)){
            String destination = "/ListHocsinh";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
            rd.forward(request, response);
        }
        else {
            String destination = "/ListHocsinh";
            RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
            rd.forward(request, response);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
