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
        <script lang="javascript">
            function io(jk){
                if(jk == "asd"){
                    
                }
                if(jk == "nmx"){
                   as4.hidden="1"
                }
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
                                <li><a href="SearchBy.jsp">����� �� ���������</a></li>
                                <li><a href="ChangeDress.jsp">�������������� ������ � �������</a></li>
                                <li><a href="OrderPage.jsp">������ ������� � ������</a></li>
                                <li><a href="RegisterBack.jsp">����������� ��������</a></li>
                                <li><a href="WashHouse.jsp">������ � ���������</a></li>
                                <li><a href="AddDress.jsp">�������� ������</a></li>
                            </ul>
                        </div>
                        <div id="menubottom"></div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <form method="POST" name="poi">
                                <div align="center">
                                    � ������� <br>
                                    <input type="text" id="washHouse" name="washHouse">
                                    <select id="gh" name="gh" onchange="javascript: io(gh.value)">
                                        <option value="asd">fghjkl</option>
                                        <option value="nmx">tyrtyr</option>
                                    </select>
                                    <select id="jh" name="jh2">
                                        <option value="1" id="as1" name="as11" >sad</option>
                                        <option value="2" id="as2" name="as22" >denis1</option>
                                        <option value="3" id="as3" name="as32" >asdasd</option>
                                        <option value="4" id="as4" name="as42" >denis3</option>
                                        <option value="5" id="as5" name="as42" >denis4</option>
                                        <option value="6" id="as6" name="as52" >ahjkl;sdasd</option>
                                    </select>
                                </div>
                                <div align="right"> 
                                    <input type="button" id="goToWashHouse" name="commandWashHouse" value="��������� � ���������"><br>
                                    <input type="button" id="fromWashHouse" name="commandWashHouse" value="������� � ���������">
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
