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


public class SearchServlet extends HttpServlet {

    private String param;
    private int idType = 0;
    private List searchBy = new ArrayList();
    private List colorList = new ArrayList();
    private List sizeList = new ArrayList();
    private List genreList = new ArrayList();
    private List subGenreList = new ArrayList();
    private Accessor acc;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("Search.jsp")));
	String buf;
        
        try{
            acc = Accessor.getInstance("localhost", "Diplom");
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
                writer.println("<option value='"+0+"'>Не выбрано</option>");
                for(int i=0; i<genreList.size(); i+=2){
                    writer.println("<option value='"+genreList.get(i)+"'>"+genreList.get(i+1)+"</option>");
                }
            }
            if(buf.equals("<!--here2-->")){
                writer.println("<option value='"+0+"'>Не выбрано</option>");
                for(int i=0; i<subGenreList.size(); i+=3){
                    writer.println("<option value='"+subGenreList.get(i)+"'>"+subGenreList.get(i+1)+"</option>");
                }
            }
            if(buf.equals("<!--here3-->")){
                writer.println("<option value='"+0+"'>Не выбрано</option>");
                for(int i=0; i<colorList.size(); i+=2){
                    writer.println("<option value='"+colorList.get(i)+"'>"+colorList.get(i+1)+"</option>");
                }
            }
            if(buf.equals("<!--here4-->")){
                writer.println("<option value='"+0+"'>Не выбрано</option>");
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
        response.setCharacterEncoding("cp1251");
        request.setCharacterEncoding("cp1251");
        
        param = request.getParameter("command");
        if(param.equals("Поиск")){
            
            param = request.getParameter("add_type_dress");
            idType = Integer.parseInt(param);
            searchBy.add(idType);
            param = request.getParameter("add_subGenre_dress");
            idType = Integer.parseInt(param);
            searchBy.add(idType);
            param = request.getParameter("add_color_dress");
            idType = Integer.parseInt(param);
            searchBy.add(idType);
            param = request.getParameter("add_size_dress");
            idType = Integer.parseInt(param);
            searchBy.add(idType);
            param = request.getParameter("second");
            if(param != null){
                searchBy.add(1);
            }
            else{
                searchBy.add(0);
            }
            
            try{
                acc = Accessor.getInstance("localhost", "Diplom");
                acc.getSearch(searchBy);
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            response.sendRedirect(request.getContextPath()+"/Search.jsp");
        }
        else if(param.equals("Главная")){
            response.sendRedirect(request.getContextPath()+"/PMStart.jsp");
        }
        else if(param.equals("Выход")){
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
