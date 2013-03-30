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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author elrain
 */
@WebServlet(urlPatterns = {"/ChangeDress.jsp"})
public class ChangeDressServlet extends HttpServlet {

    private String param;
    private int idDress;
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("ChangeDress.jsp")));
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

        param = request.getParameter("id_dress");
        idDress = Integer.parseInt(param);
        if(idDress > 0){
            try{
                Accessor acc = Accessor.getInstance("localhost", "Diplom");
                acc.changeDress(idDress);
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
        }
        else {
            JOptionPane.showMessageDialog(null, "Incorrect id for Dress");
            response.sendRedirect(request.getContextPath()+"/ChangeDress.jsp");
        }
        response.sendRedirect(request.getContextPath()+"/ChangeDressSub.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
