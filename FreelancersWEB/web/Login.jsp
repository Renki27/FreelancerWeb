<%-- 
    Document   : Login
    Created on : Jun 12, 2017, 6:08:06 PM
    Author     : ZERO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Account Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/global.css" rel="stylesheet">
        <link href="CSS/login.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script><!--URL de JQuery -->

    </head>
    <body class="static-bg">
        <div class="main-container">
            <h1 class="logo">Account Login</h1>
            <div class="login-box">

                <div class="input" id="login-wrapper">
                    <div class="login" >

                        <form action method="post" id="login-form" novalidate="novalidate">

                            <div id="login-input-container">

                                <div class="login-group">
                                    <label id="email-label" class="control-label" for="email">Email</label>
                                    <div class="controls">
                                        <input class="input-block input-large" id="email-input" type="email" name="email" placeholder="Email" autocorrect="off" spellcheck="false" />
                                    </div>
                                </div>

                                <div class="login-group">
                                    <label id="password-label" class="control-label" for="password">Password</label>
                                    <div class="controls">
                                        <input class="input-block input-large" id="password-input" type="password" name="password" autocomplete="off" placeholder="Password" autocorrect="off" spellcheck="false" />
                                    </div>
                                </div>

                            </div>
                            <div>
                                <button type="submit" class="btn-primary btn-large btn-block" >Log in</button>
                            </div>




                        </form>
                        <div class="separator-line">
                            <span>"OR"</span>
                        </div>

                        <ul id="help-links">
                            <li>
                                <a href="SignUp.jsp">Create a Free Account</a>
                            </li>
                            <li>
                                <a href="index.jsp">Can’t log in?</a>
                            </li>
                        </ul>   
                    </div>
                </div>
            </div>

        </div>


        <%@include file="footer.html" %>
    </body>
</html>