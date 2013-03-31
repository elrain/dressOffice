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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author elrain
 */
@WebServlet(urlPatterns = {"/AddDress.jsp"})
public class AddDressServlet extends HttpServlet {
    
    private List addDressList = new ArrayList();
    private String param;
    private int n = 0;
    private List colorList = new ArrayList();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("AddDress.jsp")));
	String buf;
	while((buf=fin.readLine()) != null) {
            if(buf.equals("<!--here-->")){
                try{
                    Accessor acc = Accessor.getInstance("localhost", "Diplom");
                    colorList = acc.getColor();
                }
                catch(Exception ex){
                    ex.printStackTrace();
                }
                writer.println("<td>");
                writer.println("<select id='add_color_dress' name='add_color_dress'>");
                for(int i=0; i<colorList.size(); i+=2){
                    writer.println("<option value='"+colorList.get(i)+"'>"+colorList.get(i+1)+"</option>");
                }
                writer.println("<option value='new'>new</option>");
                writer.println("</select>");
                writer.println("</td>");
            }
		writer.println(buf);
	}
	fin.close();
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setCharacterEncoding("cp1251");
        
        param = request.getParameter("add_name_dress");     addDressList.add(param);
        param = request.getParameter("add_price_dress");    addDressList.add(param);
        param = request.getParameter("add_type_dress");     addDressList.add(param);
        param = request.getParameter("add_genre_dress");    addDressList.add(param);
        param = request.getParameter("add_subGenre_dress"); addDressList.add(param);
        param = request.getParameter("add_color_dress");    addDressList.add(param);
        param = request.getParameter("add_size_dress");     addDressList.add(param);
        param = request.getParameter("add_place_dress");    addDressList.add(param);
        
        for(int i=0; i<8; ++i){
            if(addDressList.get(i) == null) ++n;
        }
        if (n > 0) JOptionPane.showMessageDialog(null, "Incorrect data for dress");
        else{
            try{
                Accessor acc = Accessor.getInstance("localhost", "Diplom");
                
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
