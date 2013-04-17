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
                                <li><a href="SearchBy.jsp">Поиск костюма</a></li>
                                <li><a href="ChangeDress.jsp">Редактирование данных о костюме</a></li>
                                <li><a href="OrderPage.jsp">Выдача костюма в прокат</a></li>
                                <li><a href="RegisterBack.jsp">Регистрация возврата</a></li>
                                <li><a href="WashHouse.jsp">Работа с прачечной</a></li>
                                <li><a href="AddDress.jsp">Добавить костюм</a></li>
                            </ul>
                        </div>
                        <div id="menubottom">
                            <form method="POST">
                                <ul>
                                    <li><input type="submit" value="Главная" class="knopka_menu" id="command" name="command"></li>
                                    <li>|</li>
                                    <li><input type="submit" value="Выход" class="knopka_menu" id="command" name="command"></li>
                                </ul>
                           </form>
                        </div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <form method="POST">
                                <div align="center"> Размер
<!--here-->
                                    <!--<input type="text" id="size" name="size">-->
                                </div>
                                <div align="right"> 
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="searchBySize" name="command" value="Искать"  class="knopka">
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
