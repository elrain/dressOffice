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
        <table width="100%" height="100%" name="table">
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
                            <li><a href="SearchBy.jsp">����� �� ���������</a></li>
                            <li><a href="ChangeDress.jsp">�������������� ������ � �������</a></li>
                            <li><a href="OrderPage.jsp">������ ������� � ������</a></li>
                            <li><a href="RegisterBack.jsp">����������� ��������</a></li>
                            <li><a href="WashHouse.jsp">������ � ���������</a></li>
                            <li><a href="AddDress.jsp">�������� ������</a></li>
                        </menu>
                    </td>
                    <td>
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
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
