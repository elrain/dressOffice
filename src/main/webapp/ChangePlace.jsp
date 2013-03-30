<!-- 
    Document   : ChangePlace
    Created on : 26.03.2013, 12:17:40
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
                            <li><a href="Svodnaya.jsp">Сводная ведомость</a></li>
                            <li><a href="NewDelPage.jsp">Добавление/Удаление места расположения</a></li>
                            <li><a href="ChangePlace.jsp">Изменение места расположения</a></li>
                        </menu>
                    </td>
                    <td>
                        <form method="POST">
                            <div align="center">Старое место размещения <br>
                                <input type="text" id="old_place" name="old_place">
                            </div>
                            <div align="center">Новое место размещения <br>
                                <input type="text" id="new_place" name="new_place">
                            </div>
                            <div align="right">
                                <input type="submit" id="change" name="change" value="Изменить">
                            </div>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
