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


public class WashHouseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=windows-1251");
		PrintWriter writer = response.getWriter();

		BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("WashHouse.jsp")));
		String buf;
		while((buf=fin.readLine()) != null) {
			writer.println(buf);
		}
		fin.close();
        writer.close();
        
        if(request.getParameter("gh").equals("asd")){
            JOptionPane.showMessageDialog(null, "dsdds");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
