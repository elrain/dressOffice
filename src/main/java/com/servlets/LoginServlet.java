/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.accessor.Accessor;
import com.ocm.Profile;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author elrain
 */
@WebServlet(urlPatterns = {"/index.jsp"})
public class LoginServlet extends HttpServlet {

    private Profile p = new Profile();
    private int id = -1;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("index.jsp")));
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
        
        try{
            p.setLogin(request.getParameter("login")); 
            p.setPassword(request.getParameter("password"));
            
            Accessor ac = Accessor.getInstance("localhost", "Diplom");
            id = ac.getAuthType(p);
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
        
        if(id == 1) response.sendRedirect(request.getContextPath()+"/PMStart.jsp");
        else if(id >= 2) response.sendRedirect(request.getContextPath()+"/WorkerStart.jsp");
        else if(id == -1) response.sendRedirect(request.getContextPath()+"/index.jsp");
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
