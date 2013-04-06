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
        <!--[if IE]><link href="cssIE.css" rel="stylesheet" type="text/css"><![endif]-->
    </head>
    <body>
        <div id="container">
            <div id="header"></div>
            <div id="border">
                <div id="left">
                    <div id="menu"></div>
                    <div id="menubottom"></div>
                </div>
                <div id="right">
                    <div class="content">
                        <form method="POST">
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Login:</td>
                                        <td><input type="text" id="login" name="login" size="15"></td>
                                    </tr>
                                    <tr>
                                        <td>Password:</td>
                                        <td><input type="password" id="password" name="password" size="15" class="pas"></td>
                                    </tr>
                                </tbody>
                            </table>
                                </tbody>
                                </table>
                            <div align="right">
                                <dd>&nbsp;</dd>
                                <input type="submit" value="Enter" class="knopka">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div id="finish">
                
            </div>
        </div>
    </body>
</html>
