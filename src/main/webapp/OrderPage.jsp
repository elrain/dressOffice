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
                                            <td>Номер костюма</td>
                                            <td><input type="text" id="id_dress" name="id_dress"></td>
                                        </tr>
                                        <tr>
                                            <td>Имя</td>
                                            <td><input type="text" id="name_order" name="name_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Фамилия</td>
                                            <td><input type="text" id="secondName_order" name="secondName_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Адресс</td>
                                            <td><input type="text" id="adress_order" name="adress_order"></td>
                                        </tr>
                                        <tr>
                                            <td>E-mail</td>
                                            <td><input type="text" id="eadress_order" name="eadress_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Телефон</td>
                                            <td><input type="text" id="tel_order" name="tel_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Дата начала</td>
                                            <td><input type="text" id="dateOfStart_order" name="dateOfStart_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Дата окончания</td>
                                            <td><input type="text" id="dateOfEnd_order" name="dateOfEnd_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Дата возврата</td>
                                            <td><input type="text" id="dateOfFinish_order" name="dateOfFinish_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Предоплата</td>
                                            <td><input type="text" id="prepaymant_order" name="prepaymant_order"></td>
                                        </tr>
                                        <tr>
                                            <td>Размер штрафа</td>
                                            <td><input type="text" id="penalty_order" name="penalty_order"></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="right">
                                    <input type="button" id="addOrder_order" name="addOrder_order" value="Оформить">
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
