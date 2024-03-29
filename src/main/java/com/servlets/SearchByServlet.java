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


public class SearchByServlet extends HttpServlet {
    private String param;
    private int n = 0;
    private List colorList = new ArrayList();
    private List sizeList = new ArrayList();
    private List genreList = new ArrayList();
    private List subGenreList = new ArrayList();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

        BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("SearchBy.jsp")));
        String buf;
	try{
            Accessor acc = Accessor.getInstance("localhost", "Diplom");
            colorList = acc.getColor();
            sizeList = acc.getSize();
            genreList = acc.getGenre();
            subGenreList = acc.getSubGenre();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
	
        while((buf=fin.readLine()) != null) {
            if(buf.equals("<!--here1-->")){
                writer.println("<option value='"+0+"'>�� �������</option>");
                for(int i=0; i<genreList.size(); i+=2){
                    writer.println("<option value='"+genreList.get(i)+"'>"+genreList.get(i+1)+"</option>");
                }
            }
            if(buf.equals("<!--here2-->")){
                writer.println("<option value='"+0+"'>�� �������</option>");
                for(int i=0; i<subGenreList.size(); i+=3){
                    writer.println("<option value='"+subGenreList.get(i)+"'>"+subGenreList.get(i+1)+"</option>");
                }
            }
            if(buf.equals("<!--here3-->")){
                writer.println("<option value='"+0+"'>�� �������</option>");
                for(int i=0; i<colorList.size(); i+=2){
                    writer.println("<option value='"+colorList.get(i)+"'>"+colorList.get(i+1)+"</option>");
                }
            }
            if(buf.equals("<!--here4-->")){
                writer.println("<option value='"+0+"'>�� �������</option>");
                for(int i=0; i<sizeList.size(); i+=2){
                    writer.println("<option value='"+sizeList.get(i)+"'>"+sizeList.get(i+1)+"</option>");
                }
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
