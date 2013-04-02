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
                            <table>
                                    <tbody>
                                        <tr>
                                            <td>Название </td>
                                            <td><input type="text" id="add_name_dress" name="add_name_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>Цена </td>
                                            <td><input type="text" id="add_price_dress" name="add_price_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>Тип </td>
                                            <td>
                                                <select id="add_type_dress" name="add_type_dress">
                                                    <option value="1">Мальчик</option>
                                                    <option value="2">Девочка</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Жанр </td>
<!--here1-->
                                            <!--<td><input type="text" id="add_genre_dress" name="add_genre_dress"></td>-->
                                        </tr>
                                        <tr>
                                            <td>Поджанр </td>
<!--here2-->
                                            <!--<td><input type="text" id="add_subGenre_dress" name="add_subGenre_dress"></td>-->
                                        </tr>
                                        <tr>
                                            <td>Цвет </td>
<!--here3-->
                                           <!-- <td><input type="text" id="add_color_dress" name="add_color_dress"></td>-->
                                        </tr>
                                        <tr>
                                            <td>Размер </td>
<!--here4-->
<!--                                            <td>
                                                <select id="add_size_dress" name="add_size_dress">
                                                    <option value='42'>42</option>
                                                    <option value='46'>46</option>
                                                    <option value='50'>50</option>
                                                </select>
                                            </td>-->
                                        </tr>
                                        <tr>
                                            <td>Место расположение </td>
                                            <td><input type="text" id="add_place_dress" name="add_place_dress"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            <div align="right">
                                <input type="submit" id="add_dress" name="add_dress" value="Добавить"><br>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div id="finish"></div>
        </div>
    </body>
</html>
