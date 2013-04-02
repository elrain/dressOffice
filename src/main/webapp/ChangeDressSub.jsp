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
                                <li><a href="SearchBy.jsp">Поиск по критериям</a></li>
                                <li><a href="ChangeDress.jsp">Редактирование данных о костюме</a></li>
                                <li><a href="OrderPage.jsp">Выдача костюма в прокат</a></li>
                                <li><a href="RegisterBack.jsp">Регистрация возврата</a></li>
                                <li><a href="WashHouse.jsp">Работа с прачечной</a></li>
                                <li><a href="AddDress.jsp">Добавить костюм</a></li>
                            </ul>
                        </div>
                        <div id="menubottom"></div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <form method="POST">
<!--here-->
<!--                            <table>
                                <tbody>
                                    <tr>
                                        <td>Название </td>
                                        <td><input type="text" id="name_dress" name="name_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Цена </td>
                                        <td><input type="text" id="price_dress" name="price_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Тип </td>
                                        <td><input type="text" id="type_dress" name="type_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Жанр </td>
                                        <td><input type="text" id="genre_dress" name="genre_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Поджанр </td>
                                        <td><input type="text" id="subGenre_dress" name="subGenre_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Цвет </td>
                                        <td><input type="text" id="color_dress" name="color_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Размер </td>
                                        <td><input type="text" id="size_dress" name="size_dress"></td>
                                    </tr>
                                    <tr>
                                        <td>Место расположение </td>
                                        <td><input type="text" id="place_dress" name="place_dress"></td>
                                    </tr>
                                </tbody>
                            </table>
-->
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
