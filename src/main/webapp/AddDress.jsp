<!-- 
    Document   : shablonStranici
    Created on : 02.04.2013, 17:57:44
    Author     : Tanya
<%@page contentType="text/html" pageEncoding="windows-1251"%>
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>Welcome</title>
        <link href="css.css" rel="stylesheet" type="text/css">
        <!--[if IE]><link href="cssIE.css" rel="stylesheet" type="text/css"><![endif]-->
    </head>
    <body>
        <div id="container">
            <div id="header"></div>
            <div id="border">
                <div id="main">
                    <div id="left">
                        <div id="menu">
                            <ul>
                                <li><a href="SearchBy.jsp">����� �� ���������</a></li>
                                <li><a href="ChangeDress.jsp">�������������� ������ � �������</a></li>
                                <li><a href="OrderPage.jsp">������ ������� � ������</a></li>
                                <li><a href="RegisterBack.jsp">����������� ��������</a></li>
                                <li><a href="WashHouse.jsp">������ � ���������</a></li>
                                <li><a href="AddDress.jsp">�������� ������</a></li>
                            </ul>
                        </div>
                        <div id="menubottom"></div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <form method="POST">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>�������� </td>
                                            <td><input type="text" id="add_name_dress" name="add_name_dress" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td><input type="text" id="add_price_dress" name="add_price_dress" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>��� </td>
                                            <td>
                                                <select id="add_type_dress" name="add_type_dress" class='inpselect'>
                                                    <option value="1">�������</option>
                                                    <option value="2">�������</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
<!--here1-->
                                            <!--<td><input type="text" id="add_genre_dress" name="add_genre_dress"></td>-->
                                        </tr>
                                        <tr> 
                                            <td>������� </td>
<!--here2-->
                                            <!--<td><input type="text" id="add_subGenre_dress" name="add_subGenre_dress"></td>-->
                                        </tr>
                                        <tr>
                                            <td>���� </td>
<!--here3-->
                                           <!-- <td><input type="text" id="add_color_dress" name="add_color_dress"></td>-->
                                        </tr>
                                        <tr>
                                            <td>������ </td>
<!--here4-->
                                        </tr>
                                        <tr>
                                            <td>����� ������������ </td>
                                            <td><input type="text" id="add_place_dress" name="add_place_dress" class='inptext'></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="right">
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="add_dress" name="add_dress" value="��������"  class="knopka"><br>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div id="finish"></div>
        </div>
    </body>
</html>
