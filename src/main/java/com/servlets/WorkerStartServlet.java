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
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

public class WorkerStartServlet extends HttpServlet {

    private HttpSession session;
    private String strIdLogin;
    private int idLogin;
    private List actorInf = new ArrayList();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

        session = request.getSession();
        strIdLogin = (String) session.getAttribute("idLogin");
        idLogin = Integer.parseInt(strIdLogin);
        
	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("WorkerStart.jsp")));
	String buf;
	while((buf=fin.readLine()) != null) {
            if(buf.equals("<!--here-->")){
                try{
                    Accessor acc = Accessor.getInstance("localhost", "Diplom");
                    actorInf = acc.getActorInf(idLogin);
                }
                catch(Exception ex){
                    ex.printStackTrace();
                }
                writer.println("Вы авторизировались как: <b><i>"+ actorInf.get(6)+"</i>");
                writer.println("</b><br>Имя: <b><i>"+ actorInf.get(1)+"</i>");
                writer.println("</b><br>Фамилия: <b><i>"+ actorInf.get(2)+"</i>");
                writer.println("</b><br>Адресс: <b><i>"+ actorInf.get(3)+"</i>");
                writer.println("</b><br>Телефон: <b><i>"+ actorInf.get(4)+"</i>");
                writer.println("</b><br>Эл. почта: <b><i>"+ actorInf.get(5)+"</i></b>");
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
