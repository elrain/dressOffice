<!-- 
    Document   : shablonStranici
    Created on : 02.04.2013, 17:57:44
    Author     : Tanya
<%@page contentType="text/html" pageEncoding="windows-1251"%>
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>Welcome</title>
        <link href="css/css.css" rel="stylesheet" type="text/css">
        <!--[if IE]><link href="css/cssIE.css" rel="stylesheet" type="text/css"><![endif]-->
    </head>
    <body>
        <div id="container">
            <div id="header"></div>
            <div id="border">
                <div id="main">
                    <div id="left">
                        <div id="menu">
                            <ul>
                                <li><a href="SearchBy.jsp">����� �������</a></li>
                                <li><a href="ChangeDress.jsp">�������������� ������ � �������</a></li>
                                <li><a href="OrderPage.jsp">������ ������� � ������</a></li>
                                <li><a href="RegisterBack.jsp">����������� ��������</a></li>
                                <li><a href="WashHouse.jsp">������ � ���������</a></li>
                                <li><a href="AddDress.jsp">�������� ������</a></li>
                            </ul>
                        </div>
                        <div id="menubottom">
                            <form method="POST">
                                <ul>
                                    <li><input type="submit" value="�������" class="knopka_menu" id="command" name="command"></li>
                                    <li>|</li>
                                    <li><input type="submit" value="�����" class="knopka_menu" id="command" name="command"></li>
                                </ul>
                           </form>
                        </div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <h2>�������� ������</h2>
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
                                                <div class="styled-select">
                                                    <select id="add_type_dress" name="add_type_dress" class='inpselect'>
                                                        <option value="1">�������</option>
                                                        <option value="2">�������</option>
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td>
                                                <div class="styled-select">
<!--here1-->
                                                </div>
                                            </td>

                                            <!--<td><input type="text" id="add_genre_dress" name="add_genre_dress"></td>-->
                                        </tr>
                                        <tr> 
                                            <td>������� </td>
                                            <td>
                                                <div class="styled-select">
<!--here2-->
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td>
                                                <div class="styled-select">
<!--here3-->
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>������ </td>
                                            <td>
                                                <div class="styled-select">
<!--here4-->
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>����� ������������ </td>
                                            <td><input type="text" id="add_place_dress" name="add_place_dress" class='inptext'></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="right">
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="add_dress" name="command" value="��������"  class="knopka"><br>
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
