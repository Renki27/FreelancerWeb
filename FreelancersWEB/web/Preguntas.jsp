<%-- 
    Document   : Preguntas
    Created on : Jul 7, 2017, 7:02:27 PM
    Author     : alelizmu
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="false" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions</title>
        <link href="CSS/global.css" rel="stylesheet">
        <link href="CSS/SignUp.css" rel="stylesheet">
        <link href="CSS/questions.css" rel="stylesheet">
        <link href="CSS/cantLogin.css" rel="stylesheet">
    </head>
    <body class="static-bg">
        <div class="creation-container">
            <div class="box-box"> 
                <div id="questions-wrapper">
                    <div class id="information-container">
                        <h1 style="color: white; text-align: center">Para seguridad de su cuenta debe contenstar la siguientes preguntas</h1>
                        <form action="IngresarPreguntas.jsp" id="account-creation" method="post" novalidate="novalidate" >
                            <div class="separator-line">
                                <span></span>
                            </div>
                            <h3 class="textoPregunta">¿Cual fue el nombre de tu primer mascota?</h3>
                            <div class="preguntas">
                                <input type="text" id="pregunta1" name="pregunta1" value="" 
                                       required="required" 
                                       >
                            </div>
                            <div class="separator-line">
                                <span></span>
                            </div>
                            <h3 class="textoPregunta">¿Cual es tu artista favorito?</h3>
                            <div class="preguntas">
                                <input type="text" id="pregunta2" name="pregunta2" value="" 
                                       required="required" 
                                       >
                            </div>
                            <div class="separator-line">
                                <span></span>
                            </div>
                            <h3 class="textoPregunta">¿Cual es su ciudad de nacimiento?</h3>
                            <div class="preguntas">
                                <input type="text" id="pregunta3" name="pregunta3" value="" 
                                       required="required" 
                                       >
                            </div>
                            <div class="separator-line">
                                <span></span>
                            </div>
                            <h3 class="textoPregunta">¿Cual es tu fruta favorita?</h3>
                            <div class="preguntas">
                                <input type="text" id="pregunta4" name="pregunta4" value="" 
                                       required="required" 
                                       >
                            </div>
                            <div class="separator-line">
                                <span></span>
                            </div>
                            <h3 class="textoPregunta">¿Cual es tu color favorito?</h3>
                            <div class="preguntas">
                                <input type="text" id="pregunta5" name="pregunta5" value="" 
                                       required="required" 
                                       >
                            </div>   
                            <div class="separator-line">
                                <span></span>
                            </div>
                            <div class="central-button" >                                  
                                <button id="submit-button" type="submit"  class="btn-primary btn-large btn-block">Send</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>