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
                            <ul>
                                <li><a href="SearchBySize.jsp">����� �� �������</a></li>
                                <li><a href="SearchByColor.jsp">����� �� �����</a></li>
                                <li><a href="SearchByType.jsp">����� �� ����</a></li>
                                <li><a href="SearchByGenre.jsp">����� �� �����</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div id="finish"></div>
        </div>
    </body>
</html>
