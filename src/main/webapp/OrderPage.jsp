<!-- 
    Document   : OrderPage
    Created on : 26.03.2013, 16:48:53
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
                                    <td>����� �������</td>
                                    <td><input type="text" id="id_dress" name="id_dress"></td>
                                </tr>
                                <tr>
                                    <td>���</td>
                                    <td><input type="text" id="name_order" name="name_order"></td>
                                </tr>
                                <tr>
                                    <td>�������</td>
                                    <td><input type="text" id="secondName_order" name="secondName_order"></td>
                                </tr>
                                <tr>
                                    <td>������</td>
                                    <td><input type="text" id="adress_order" name="adress_order"></td>
                                </tr>
                                <tr>
                                    <td>E-mail</td>
                                    <td><input type="text" id="eadress_order" name="eadress_order"></td>
                                </tr>
                                <tr>
                                    <td>�������</td>
                                    <td><input type="text" id="tel_order" name="tel_order"></td>
                                </tr>
                                <tr>
                                    <td>���� ������</td>
                                    <td><input type="text" id="dateOfStart_order" name="dateOfStart_order"></td>
                                </tr>
                                <tr>
                                    <td>���� ���������</td>
                                    <td><input type="text" id="dateOfEnd_order" name="dateOfEnd_order"></td>
                                </tr>
                                <tr>
                                    <td>���� ��������</td>
                                    <td><input type="text" id="dateOfFinish_order" name="dateOfFinish_order"></td>
                                </tr>
                                <tr>
                                    <td>����������</td>
                                    <td><input type="text" id="prepaymant_order" name="prepaymant_order"></td>
                                </tr>
                                <tr>
                                    <td>������ ������</td>
                                    <td><input type="text" id="penalty_order" name="penalty_order"></td>
                                </tr>
                            </tbody>
                        </table>
                        <div align="right">
                            <input type="button" id="addOrder_order" name="addOrder_order" value="��������">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
