<!-- 
    Document   : NewDelPage
    Created on : 26.03.2013, 12:14:55
    Author     : Tanya

<%@page contentType="text/html" pageEncoding="cp1251"%>
-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=cp2151">
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
                            <div align="center">Место размещения</div>
                            <div align="center">
                                <input type="text" id="place" name="place" value="0">
                            </div>
                            <div align="right">
                                <input type="submit" id="add" name="add" value="Добавить">
                                <br>
                                <input type="submit" id="delete" name="delete" value="Удалить">
                            </div>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
