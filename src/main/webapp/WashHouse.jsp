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
                                <li><a href="SearchBy.jsp">����� �������</a></li>
                                <li><a href="ChangeDress.jsp">�������������� ������ � �������</a></li>
                                <li><a href="OrderPage.jsp">������ ������� � ������</a></li>
                                <li><a href="RegisterBack.jsp">����������� ��������</a></li>
                                <li><a href="WashHouse.jsp">������ � ���������</a></li>
                                <li><a href="AddDress.jsp">�������� ������</a></li>
                            </ul>
                        </div>
                        <div id="menubottom">
                            <form method="POST">
                                <ul>
                                    <li><input type="submit" value="�������" class="knopka_menu" id="command" name="command"></li>
                                    <li>|</li>
                                    <li><input type="submit" value="�����" class="knopka_menu" id="command" name="command"></li>
                                </ul>
                           </form>
                        </div>
                    </div>
                    <div id="right">
                        <div class="content">
                            <h2>������ � ���������</h2>
                            <form method="POST" name="poi">
                                <div align="center">
                                    � ������� <br>
                                    <input type="text" id="washHouse" name="washHouse" class="inptext">
                                </div>
                                <div align="right">
                                    <dd>&nbsp;</dd>
                                    <input type="submit" id="goToWashHouse" name="command" value="��������� � ���������"  class="knopka"><br>
                                    <input type="submit" id="fromWashHouse" name="command" value="������� � ���������"  class="knopka">
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
