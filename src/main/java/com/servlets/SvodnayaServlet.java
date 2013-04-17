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


public class SvodnayaServlet extends HttpServlet {

    private String param;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("Svodnaya.jsp")));
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
        
        param = request.getParameter("command");
        if(param.equals("�������")){
            response.sendRedirect(request.getContextPath()+"/PMStart.jsp");
        }
        else if(param.equals("�����")){
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
