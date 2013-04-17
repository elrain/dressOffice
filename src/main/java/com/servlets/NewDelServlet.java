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

@WebServlet(urlPatterns = {"/NewDelPage.jsp"})
public class NewDelServlet extends HttpServlet {

    private String param;
    private String but1;
    private String strPlace;
    private int place;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setCharacterEncoding("cp1251");
        request.setCharacterEncoding("cp1251");
        
        but1 = request.getParameter("command");
        if(but1.equals("Добавить")){
            strPlace = request.getParameter("place");
            place = Integer.parseInt(strPlace);
            if(place > 0){
                try{
                    Accessor acc = Accessor.getInstance("localhost", "Diplom");
                    acc.addNewPlace(place);
                }
                catch(Exception ex){
                    ex.printStackTrace();
                }
                response.sendRedirect(request.getContextPath()+"/NewDelPage.jsp");
            }
            else{
                JOptionPane.showMessageDialog(null, "Incorrect number of place");
                response.sendRedirect(request.getContextPath()+"/NewDelPage.jsp");
            }
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
        else if(but1.equals("Главная")){
            response.sendRedirect(request.getContextPath()+"/PMStart.jsp");
        }
        else if(but1.equals("Выход")){
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
