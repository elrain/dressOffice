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
                            </ul>
                        </div>
                        <div id="menubottom"></div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <form method="POST">
                            <div align="center">����� ����������</div>
                            <div align="center">
                                <input type="text" id="place" name="place" value="0">
                            </div>
                            <div align="right">
                                <input type="submit" id="add" name="command" value="��������">
                                <br>
                                <input type="submit" id="delete" name="command" value="�������">
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
