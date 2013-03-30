/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import com.accessor.Accessor;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author elrain
 */
@WebServlet(urlPatterns = {"/NewDelPage.jsp"})
public class NewDelServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        PrintWriter out = response.getWriter();
//        try {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet NewDelServlet</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet NewDelServlet at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        } finally {            
//            out.close();
//        }
//    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("NewDelPage.jsp")));
	String buf;
	while((buf=fin.readLine()) != null) {
		writer.println(buf);
	}
	fin.close();
        writer.close();
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        request.setCharacterEncoding("cp1251");
        String but1 = request.getParameter("command");
//        String but2 = request.getParameter("delete");
//        JOptionPane.showMessageDialog(null, but1);
//        JOptionPane.showMessageDialog(null, but2);
        String strPlace = request.getParameter("place");
        int place = Integer.parseInt(strPlace);
        
        if(place > 0){
            if(but1.equals("Добавить")) {
                try{
                    Accessor acc = Accessor.getInstance("localhost", "Diplom");
                    acc.addNewPlace(place);
                }
                catch(Exception ex){
                    ex.printStackTrace();
                }
                response.sendRedirect(request.getContextPath()+"/NewDelPage.jsp");
            }
            else if(but1.equals("Удалить")){
                try{
                    Accessor acc = Accessor.getInstance("localhost", "Diplom");
                    acc.delOldPlace(place);
                }
                catch(Exception ex){
                    ex.printStackTrace();
                }
                response.sendRedirect(request.getContextPath()+"/NewDelPage.jsp");
            }
        }
        else{
            JOptionPane.showMessageDialog(null, "Incorrect number of place");
            response.sendRedirect(request.getContextPath()+"/NewDelPage.jsp");
        }
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
