<!-- 
    Document   : RegisterBack
    Created on : 26.03.2013, 18:58:03
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
                        <table>
                            <tbody>
                                <tr>
                                    <td>
                                        ����� ������
                                    </td>
                                    <td>
                                        <input type="text" id="id_order" name="id_order">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        ���� ��������
                                    </td>
                                    <td>
                                        <input type="text" id="dateOfFinish_order" name="dateOfFinish_order">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        ����� ������
                                    </td>
                                    <td>
                                        <input type="text" id="penalty" name="penalty">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div align="right">
                            <input type="button" id="register_back" name="register_back" value="���������������� �������">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
