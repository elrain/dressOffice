<!-- 
    Document   : WashHouse
    Created on : 26.03.2013, 19:28:51
    Author     : Tanya
<%@page contentType="text/html" pageEncoding="windows-1251"%>
-->


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="100%" height="100%">
            <tbody>
                <tr>
                    <td width="30%" bgcolor="#7FF4F0">
                        logo place
                    </td>
                    <td bgcolor="#76A3F5">
                        head of the site
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#AFC5ED">
                        <menu>
                            <li><a href="SearchBy.jsp">����� �� ���������</a></li>
                            <li><a href="ChangeDress.jsp">�������������� ������ � �������</a></li>
                            <li><a href="OrderPage.jsp">������ ������� � ������</a></li>
                            <li><a href="RegisterBack.jsp">����������� ��������</a></li>
                            <li><a href="WashHouse.jsp">������ � ���������</a></li>
                            <li><a href="AddDress.jsp">�������� ������</a></li>
                        </menu>
                    </td>
                    <td>
                        <frame>
                            <div align="center">
                                � ������� <br>
                                <input type="text" id="washHouse" name="washHouse">
                            </div>
                            <div align="right">
                                <input type="button" id="goToWashHouse" name="commandWashHouse" value="��������� � ���������"><br>
                                <input type="button" id="fromWashHouse" name="commandWashHouse" value="������� � ���������">
                            </div>
                        </frame>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
