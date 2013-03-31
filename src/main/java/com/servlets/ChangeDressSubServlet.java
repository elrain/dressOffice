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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author elrain
 */
public class ChangeDressSubServlet extends HttpServlet {

    private int idDress;
    private Object data;
    private HttpSession session;
    private String idDressString;
    private String param;
    private List dressList = new ArrayList();
    private List dressChangeList = new ArrayList();
    private Integer op; 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        dressChangeList.clear();
        session = request.getSession();
        data = session.getAttribute("idDress");
        idDressString = data.toString();
        idDress = Integer.parseInt(idDressString);
        
        for(int i=0; i<9; ++i)
            dressChangeList.add("0");
        
        response.setContentType("text/html;charset=cp1251");
	PrintWriter writer = response.getWriter();
        
	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("ChangeDressSub.jsp")));
	String buf;
	while((buf=fin.readLine()) != null) {
            if(buf.equals("<!--here-->")){
                try {
                    Accessor acc = Accessor.getInstance("localhost", "Diplom");
                    dressList = acc.getDress(idDress);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                writer.println("<table><tbody>");
                writer.println("<tr><td>Номер костюма</td>");
                writer.println("<td><input type='text' id='id_dress' name='id_dress' disabled='1' value='"
                        +dressList.get(0)+"'></td></tr>");
                writer.println("<tr><td>Название </td>");
                writer.println("<td><input type='text' id='name_dress' name='name_dress' value='"
                        +dressList.get(1)+"'></td></tr>");
                writer.println("<tr><td>Цена </td>");
                writer.println("<td><input type='text' id='price_dress' name='price_dress' value='"
                        +dressList.get(2)+"'></td></tr>");
                writer.println("<tr><td>Тип </td>");
                writer.println("<td><input type='text' id='type_dress' name='type_dress' value='"
                        +dressList.get(3)+"'></td></tr>");
                writer.println("<tr><td>Поджанр </td>");
                writer.println("<td><input type='text' id='subGenre_dress' name='subGenre_dress' value='"
                        +dressList.get(4)+"'></td></tr>");
                writer.println("<tr><td>Размер </td>");
                writer.println("<td><input type='text' id='size_dress' name='size_dress' value='"
                        +dressList.get(5)+"'></td></tr>");
                writer.println("<tr><td>Цвет </td>");
                writer.println("<td><input type='text' id='color_dress' name='color_dress' value='"
                        +dressList.get(6)+"'></td></tr>");
                writer.println("<tr><td>Место расположение </td>");
                writer.println("<td><input type='text' id='place_dress' name='place_dress' value='"
                        +dressList.get(7)+"'></td></tr>");
                writer.println("<tr><td>Жанр </td>");
                writer.println("<td><input type='text' id='genre_dress' name='genre_dress' value='"
                        +dressList.get(8)+"'></td></tr>");
                writer.println("</tbody></table>");
            }
            writer.println(buf);
	}
	fin.close();
        writer.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setCharacterEncoding("text/html;charset=cp1251");
        request.setCharacterEncoding("cp1251");
        param = request.getParameter("name_dress");
        if(!dressList.get(1).equals(param))  {
            dressList.set(1,param);
            dressChangeList.set(0, "1");
        }
        param = request.getParameter("price_dress");
        if(!dressList.get(2).equals(param)){
            dressList.set(2,param);
            dressChangeList.set(1,"1");
        }
        param = request.getParameter("type_dress");
        if(!dressList.get(3).equals(param)){
            dressList.set(3,param);
            dressChangeList.set(2, "1");
        }
        param = request.getParameter("subGenre_dress");
        if(!dressList.get(4).equals(param)){
            dressList.set(4,param);
            dressChangeList.set(3,"1");
        }
        param = request.getParameter("size_dress");
        if(!dressList.get(5).equals(param)){
            dressList.set(5,param);
            dressChangeList.set(4, "1");
        }
        param = request.getParameter("color_dress");
        if(!dressList.get(6).equals(param)){
            dressList.set(6,param);
            dressChangeList.set(5, "1");
        }
        param = request.getParameter("place_dress");
        if(!dressList.get(7).equals(param)){
            dressList.set(7,param);
            dressChangeList.set(6,"1");
        }
        param = request.getParameter("genre_dress");
        if(!dressList.get(8).equals(param)){
            dressList.set(8,param);
            dressChangeList.set(7,"1");
        }

        if(idDress > 0){
            try{
                Accessor acc = Accessor.getInstance("localhost", "Diplom");
                acc.changeDress(dressList, dressChangeList);
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
        }
        else {
            JOptionPane.showMessageDialog(null, "Incorrect id for Dress");
            response.sendRedirect(request.getContextPath()+"/ChangeDress.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
