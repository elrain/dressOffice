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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SearchByColorServlet extends HttpServlet {

    private Accessor acc;
    private List colorList = new ArrayList();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();
        
        try{
            acc = Accessor.getInstance("localhost", "Diplom");
            colorList = acc.getColor();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("SearchByColor.jsp")));
	String buf;
	while((buf=fin.readLine()) != null) {
            if(buf.equals("<!--here-->")){
                writer.println("<select id='color' name='color'>");
                for(int i=0; i<colorList.size(); i+=2)
                    writer.println("<option value="+colorList.get(i)+">"+colorList.get(i+1)+"</option>");
                writer.println("</select>");
            }
		writer.println(buf);
	}
	fin.close();
        writer.close();
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
