<%-- 
    Document   : SignUp
    Created on : Jun 12, 2017, 7:09:06 PM
    Author     : ZERO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up!</title>
        <link href="CSS/global.css" rel="stylesheet">
        <link href="CSS/SignUp.css" rel="stylesheet">
        <link href="CSS/cantLogin.css" rel="stylesheet">
        <!--        <link href="CSS/bootstrap.css" rel="stylesheet">-->


        <!--Hola prros XdxdDdXD-->
    </head >
    <body class="static-bg">
        <div class="main-container" style="margin-top: 100px;">
            <div class="creation-container">
                <div class="box-box"> 
                    <div id="signup-wrapper">
                        <div class id="information-container">
                            <div>
                                <h1>¿No recuerdas tu contraseña?</h1>
                            </div>

                            <div id="form-container">
                                <form action="SecurityQuestions.jsp" id="account-creation" method="post" novalidate="novalidate" >
                                    <h3 style="text-align: center; color: white; padding-top: 50px;">Ingrese el nombre de usuario con el cual se registro</h3>
                                    <div class="grid-50" style="width: 100%; margin-top: 20px; display: flex; align-items: center; justify-content: center; padding-bottom: 30px;">
                                        <input type="text" id="nickName" name="nickName" value="" 
                                               autocapitalize="on" autocomplete="off" autocorrect="off" 
                                               maxlength="25" placeholder="Nick Name" required="required" 
                                               spellcheck="off">/> 
                                    </div>
                          
                                    <center>
                                        <img src="Images/recordarContraseña.png" style="width: 100px; height: 100px;"/> 
                                    </center>
                                   
                                    <div id="signup-submit" >
                                       
                                      
                                        <button type="submit"class="boton"> <img class="imagen "src="Images/Enviar.png" ></button>
                                    </div>
                                </form>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <%@include file="footer.html" %>
    </body>
</html>
