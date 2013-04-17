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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class OrderPageServlet extends HttpServlet {

    private Accessor acc;
    private int idParam;
    private String param;
    private String dateParam;
    private List orderList = new ArrayList();
    private SimpleDateFormat sdf;
    private Date date; 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=windows-1251");
	PrintWriter writer = response.getWriter();

	BufferedReader fin=new BufferedReader(new FileReader(getServletContext().getRealPath("OrderPage.jsp")));
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
        if(param.equals("Оформить")){
            sdf = new SimpleDateFormat("dd.MM.yyyy");
        
            param = request.getParameter("id_dress");
            idParam = Integer.parseInt(param);
            orderList.add(idParam);
            param = request.getParameter("name_order");
            orderList.add(param);
            param = request.getParameter("secondName_order");
            orderList.add(param);
            param = request.getParameter("adress_order");
            orderList.add(param);
            param = request.getParameter("eadress_order");
            orderList.add(param);
            param = request.getParameter("tel_order");
            orderList.add(param);
            param = request.getParameter("date_start_dress");       dateParam = param; 
            param = request.getParameter("month_start_dress");      dateParam = dateParam + "." + param; 
            param = request.getParameter("year_start_dress");       dateParam = dateParam + "." + param;
//            try{
//                date = sdf.parse(dateParam);
                orderList.add(dateParam);
//            }
//            catch(Exception ex){
//                ex.printStackTrace();
//            }
            param = request.getParameter("date_end_dress");         dateParam = param; 
            param = request.getParameter("month_end_dress");        dateParam = dateParam + "." + param; 
            param = request.getParameter("year_end_dress");         dateParam = dateParam + "." + param;
//            try{
//                date = sdf.parse(dateParam);
                orderList.add(dateParam);
//            }
//            catch(Exception ex){
//                ex.printStackTrace();
//            }
            param = request.getParameter("date_back_dress");        dateParam = param; 
            param = request.getParameter("month_back_dress");       dateParam = dateParam + "." + param; 
            param = request.getParameter("year_back_dress");        dateParam = dateParam + "." + param;
//            try{
//                date = sdf.parse(dateParam);
                orderList.add(dateParam);
//            }
//            catch(Exception ex){
//                ex.printStackTrace();
//            }
            param = request.getParameter("prepaymant_order");
            idParam = Integer.parseInt(param);
            orderList.add(idParam);
            param = request.getParameter("penalty_order");
            idParam = Integer.parseInt(param);
            orderList.add(idParam);
            
            try{
                acc = Accessor.getInstance("localhost", "Diplom");
                acc.addOrder(orderList);
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            
            response.sendRedirect(request.getContextPath()+"/OrderPage.jsp");
        }
        else if(param.equals("Главная")){
            response.sendRedirect(request.getContextPath()+"/WorkerStart.jsp");
        }
        else if(param.equals("Выход")){
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        }
        

        orderList.clear();
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
