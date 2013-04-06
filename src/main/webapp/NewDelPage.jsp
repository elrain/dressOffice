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
                                <li><a href="Svodnaya.jsp">Сводная ведомость</a></li>
                                <li><a href="NewDelPage.jsp">Добавление/Удаление места расположения</a></li>
                                <li><a href="ChangePlace.jsp">Изменение места расположения</a></li>
                            </ul>
                        </div>
                        <div id="menubottom"></div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <form method="POST">
                                <div align="center">Место размещения</div>
                                <div align="center">
                                    <input type="text" id="place" name="place" value="0" class="inptext">
                                </div>
                                <div align="right">
                                    <dd>&nbsp;</dd>
                                    <input type="image" src="image/li_menu.gif" id="add" name="command" value="Добавить" class="knopka"><br>
                                    <input type="submit" id="delete" name="command" value="Удалить" class="knopka">
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
