<!-- 
    Document   : WashHouse
    Created on : 26.03.2013, 19:28:51
    Author     : Tanya
<%@page contentType="text/html" pageEncoding="windows-1251"%>
-->


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="100%" height="100%">
            <tbody>
                <tr>
                    <td width="30%" bgcolor="#7FF4F0">
                        logo place
                    </td>
                    <td bgcolor="#76A3F5">
                        head of the site
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#AFC5ED">
                        <menu>
                            <li><a href="SearchBy.jsp">Поиск по критериям</a></li>
                            <li><a href="ChangeDress.jsp">Редактирование данных о костюме</a></li>
                            <li><a href="OrderPage.jsp">Выдача костюма в прокат</a></li>
                            <li><a href="RegisterBack.jsp">Регистрация возврата</a></li>
                            <li><a href="WashHouse.jsp">Работа с прачечной</a></li>
                            <li><a href="AddDress.jsp">Добавить костюм</a></li>
                        </menu>
                    </td>
                    <td>
                        <frame>
                            <div align="center">
                                № костюма <br>
                                <input type="text" id="washHouse" name="washHouse">
                            </div>
                            <div align="right">
                                <input type="button" id="goToWashHouse" name="goToWashHouse" value="Отправить в прачечную"><br>
                                <input type="button" id="fromWashHouse" name="fromWashHouse" value="Принять с прачечной">
                            </div>
                        </frame>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
