<!-- 
    Document   : ChangeDressSub
    Created on : 26.03.2013, 15:01:36
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
                        <form>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>�������� </td>
                                            <td><input type="text" id="name_dress" name="name_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="price_dress" name="price_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>��� </td>
                                            <td><input type="text" id="type_dress" name="type_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="genre_dress" name="genre_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>������� </td>
                                            <td><input type="text" id="subGenre_dress" name="subGenre_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="color_dress" name="color_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>������ </td>
                                            <td><input type="text" id="size_dress" name="size_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>����� ������������ </td>
                                            <td><input type="text" id="place_dress" name="place_dress"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            <div align="right">
                                <input type="button" id="change_dress" name="change_dress" value="�������������"><br>
                            </div>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
