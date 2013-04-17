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
                            <h2>����������� ��������</h2>
                            <form method="POST">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>����� ������ </td>
                                            <td>
                                                <input type="text" id="id_order" name="id_order" class="inptext">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>���� �������� </td>
                                            <td>
                                                <!--<input type="text" id="dateOfFinish_order" name="dateOfFinish_order" class="inptext">-->
                                                <div class="data_back">
                                                    <div class="date">
                                                        <select id="date_back_drress" name="date_back_dress" class='inpselect'>
                                                            <option value="1">01</option>
                                                            <option value="2">02</option>
                                                            <option value="3">03</option>
                                                            <option value="4">04</option>
                                                            <option value="5">05</option>
                                                            <option value="6">06</option>
                                                            <option value="7">07</option>
                                                            <option value="8">08</option>
                                                            <option value="9">09</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                    </div>
                                                    <div class="month">
                                                        <select id="month_back_dress" name="month_back_dress" class='inpselect'>
                                                            <option value="1">������</option>
                                                            <option value="2">�������</option>
                                                            <option value="3">����</option>
                                                            <option value="4">������</option>
                                                            <option value="5">���</option>
                                                            <option value="6">����</option>
                                                            <option value="7">����</option>
                                                            <option value="8">������</option>
                                                            <option value="9">��������</option>
                                                            <option value="10">�������</option>
                                                            <option value="11">������</option>
                                                            <option value="12">�������</option>
                                                        </select>
                                                    </div>
                                                    <div>
                                                        <input type="text" id="year_back_dress" name="year_back_dress" class="inptext_year">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                ����� ������ 
                                            </td>
                                            <td>
                                                <input type="text" id="penalty" name="penalty" class="inptext">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="right"> 
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="register_back" name="command" value="����������� ��������"  class="knopka">
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
