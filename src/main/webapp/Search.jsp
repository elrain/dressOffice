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
                                <li><a href="Svodnaya.jsp">������� ���������</a></li>
                                <li><a href="NewDelPage.jsp">����������/�������� ����� ������������</a></li>
                                <li><a href="ChangePlace.jsp">��������� ����� ������������</a></li>
                                <li><a href="Search.jsp"> ����� �������</a></li>
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
                            <h2>����� �������</h2>
                            <form method="POST">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
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
                                                    <select id='add_genre_dress' name='add_genre_dress' class='inpselect'>
<!--here1-->
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr> 
                                            <td>������� </td>
                                            <td>
                                                <div class="styled-select">
                                                    <select id='add_subGenre_dress' name='add_subGenre_dress' class='inpselect'>
<!--here2-->
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>���� </td>
                                            <td>
                                                <div class="styled-select">
                                                    <select id='add_color_dress' name='add_color_dress' class='inpselect'>
<!--here3-->
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>������ </td>
                                            <td>
                                                <div class="styled-select">
                                                    <select id='add_size_dress' name='add_size_dress' class='inpselect'>
<!--here4-->
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="left">
                                                <input type="checkbox" id="c1" name="second" class="check">
                                                <label for="c1"><span></span>������ �����</label>
                                            </td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="right">
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="searchAdmin" name="command" value="�����" class="knopka">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div id="finish">
                
            </div>
        </div>
    </body>
</html>
