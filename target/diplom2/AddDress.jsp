<!-- 
    Document   : AddDress
    Created on : 26.03.2013, 19:37:05
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
                                            <td><input type="text" id="add_name_dress" name="add_name_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="add_price_dress" name="add_price_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>��� </td>
                                            <td><input type="text" id="add_type_dress" name="add_type_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="add_genre_dress" name="add_genre_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>������� </td>
                                            <td><input type="text" id="add_subGenre_dress" name="add_subGenre_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="add_color_dress" name="add_color_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>������ </td>
                                            <td><input type="text" id="add_size_dress" name="add_size_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>����� ������������ </td>
                                            <td><input type="text" id="add_place_dress" name="add_place_dress"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            <div align="right">
                                <input type="button" id="add_dress" name="add_dress" value="��������"><br>
                            </div>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
