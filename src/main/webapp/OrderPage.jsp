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
        <script lang="javascript">
            var d,m,summa;
            
            function count(d1,m1,d2,m2){
                if(d2 < d1 ){
                    d = (d2 + 30) - d1;
                }
                else if(d2 > d1){
                    d = d2 - d1;
                    
                }
                else if(d2 == d1){
                    d = d2;
                }
                if(m2 < m1){
                    m = (m2+12) - m1;
                }
                else if(m2 > m1){
                    m = m2 - m1;
                }
                else if(m2 == m1){
                    m = m2;
                }
                alert(d1); alert(d2); 
                alert("d"+d);alert("m"+m);
                summa = d*m*25;
                alert("Сумма оплаты: "+ summa);
            }
        </script>
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
                            <h2>Выдача костюма в прокат</h2>
                            <form method="POST">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>Номер костюма</td>
                                            <td><input type="text" id="id_dress" name="id_dress" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>Имя</td>
                                            <td><input type="text" id="name_order" name="name_order" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>Фамилия</td>
                                            <td><input type="text" id="secondName_order" name="secondName_order"  class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>Адресс</td>
                                            <td><input type="text" id="adress_order" name="adress_order" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>Эл. почта</td>
                                            <td><input type="text" id="eadress_order" name="eadress_order" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>Телефон</td> 
                                            <td><input type="text" id="tel_order" name="tel_order" class="inptext"></td>
                                        </tr>
                                        <tr>
                                            <td>Дата начала</td>
                                            <td>
                                                <div class="data_back">
                                                    <div class="date">
                                                        <select id="date_start_dress" name="date_start_dress" class='inpselect'>
                                                            <option value="1">01</option>
                                                            <option value="2">02</option>
                                                            <option value="3">03</option>
                                                            <option value="4">04</option>
                                                            <option value="5">05</option>
                                                            <option value="6">06</option>
                                                            <option value="7">07</option>
                                                            <option value="8">08</option>
                                                            <option value="9">09</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                    </div>
                                                    <div class="month">
                                                        <select id="month_start_dress" name="month_start_dress" class='inpselect'>
                                                            <option value="1">Январь</option>
                                                            <option value="2">Февраль</option>
                                                            <option value="3">Мари</option>
                                                            <option value="4">Апрель</option>
                                                            <option value="5">Май</option>
                                                            <option value="6">Июнь</option>
                                                            <option value="7">Июль</option>
                                                            <option value="8">Август</option>
                                                            <option value="9">Сентябрь</option>
                                                            <option value="10">Октябрь</option>
                                                            <option value="11">Ноябрь</option>
                                                            <option value="12">Декабрь</option>
                                                        </select>
                                                    </div>
                                                    <div>
                                                        <input type="text" id="year_start_dress" name="year_start_dress" class="inptext_year">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Дата окончания</td>
                                            <td>
                                                <div class="data_back">
                                                    <div class="date">
                                                        <select id="date_end_drress" name="date_end_dress" class='inpselect'>
                                                            <option value="1">01</option>
                                                            <option value="2">02</option>
                                                            <option value="3">03</option>
                                                            <option value="4">04</option>
                                                            <option value="5">05</option>
                                                            <option value="6">06</option>
                                                            <option value="7">07</option>
                                                            <option value="8">08</option>
                                                            <option value="9">09</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                    </div>
                                                    <div class="month">
                                                        <select id="month_end_dress" name="month_end_dress" class='inpselect'>
                                                            <option value="1">Январь</option>
                                                            <option value="2">Февраль</option>
                                                            <option value="3">Мари</option>
                                                            <option value="4">Апрель</option>
                                                            <option value="5">Май</option>
                                                            <option value="6">Июнь</option>
                                                            <option value="7">Июль</option>
                                                            <option value="8">Август</option>
                                                            <option value="9">Сентябрь</option>
                                                            <option value="10">Октябрь</option>
                                                            <option value="11">Ноябрь</option>
                                                            <option value="12">Декабрь</option>
                                                        </select>
                                                    </div>
                                                    <div>
                                                        <input type="text" id="year_end_dress" name="year_end_dress" class="inptext_year">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Дата возврата</td>
                                            <td>
                                                <div class="data_back">
                                                    <div class="date">
                                                        <select id="date_back_drress" name="date_back_dress" class='inpselect'>
                                                            <option value="1">01</option>
                                                            <option value="2">02</option>
                                                            <option value="3">03</option>
                                                            <option value="4">04</option>
                                                            <option value="5">05</option>
                                                            <option value="6">06</option>
                                                            <option value="7">07</option>
                                                            <option value="8">08</option>
                                                            <option value="9">09</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                            <option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                    </div>
                                                    <div class="month">
                                                        <select id="month_back_dress" name="month_back_dress" class='inpselect'>
                                                            <option value="1">Январь</option>
                                                            <option value="2">Февраль</option>
                                                            <option value="3">Мари</option>
                                                            <option value="4">Апрель</option>
                                                            <option value="5">Май</option>
                                                            <option value="6">Июнь</option>
                                                            <option value="7">Июль</option>
                                                            <option value="8">Август</option>
                                                            <option value="9">Сентябрь</option>
                                                            <option value="10">Октябрь</option>
                                                            <option value="11">Ноябрь</option>
                                                            <option value="12">Декабрь</option>
                                                        </select>
                                                    </div>
                                                    <div>
                                                        <input type="text" id="year_back_dress" name="year_back_dress" class="inptext_year">
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Оплата</td>
                                            <td><input type="text" id="prepaymant_order" name="prepaymant_order" class="inptext" 
                                                       onclick="javascript: count(date_start_dress.value,month_start_dress.value,
                                                                   date_end_dress.value,month_end_dress.value)"></td>
                                        </tr>
                                        <tr>
                                            <td>Размер штрафа</td>
                                            <td><input type="text" id="penalty_order" name="penalty_order" class="inptext"></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="right">
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="addOrder_order" name="command" value="Оформить"   class="knopka">
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
