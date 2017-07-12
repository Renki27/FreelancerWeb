<%-- 
    Document   : SecurityQuestions
    Created on : Jul 4, 2017, 4:37:32 PM
    Author     : alelizmu
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

    </head >
    <%String email = request.getParameter("email");%>
    <body class="static-bg">
        <div class="main-container" style="margin-top: 100px;">
            <div class="creation-container">
                <div class="box-box"> 
                    <div id="signup-wrapper">
                        <div class id="information-container">
                            <div>
                                <h1><%=email%></h1>
                                <h2 class="info">Debes responder la siguientes preguntas</h2>
                            </div>

                            <div id="form-container">
                                <form action="RevisarPreguntas.jsp" id="account-creation" method="post" novalidate="novalidate" >
                                    <h2 class="linea">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h2>
                                    <h3 class="textoPregunta">¿Cual fue el nombre de tu primer mascota?</h3>
                                    <div class="preguntas">
                                        <input type="text" id="pregunta1" name="pregunta1" value="" 
                                                required="required" 
                                               >
                                    </div>
                                    <h2 class="linea">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h2>
                                    <h3 class="textoPregunta">¿Cual es tu artista favorito?</h3>
                                    <div class="preguntas">
                                        <input type="text" id="pregunta2" name="pregunta2" value="" 
                                                required="required" 
                                               >
                                    </div>
                                    <h2 class="linea">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h2>
                                    <h3 class="textoPregunta">¿Cual es su ciudad de nacimiento?</h3>
                                    <div class="preguntas">
                                        <input type="text" id="pregunta3" name="pregunta3" value="" 
                                               required="required" 
                                               >
                                    </div>
                                    <h2 class="linea">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h2>
                                    <h3 class="textoPregunta">¿Cual es tu fruta favorita?</h3>
                                    <div class="preguntas">
                                        <input type="text" id="pregunta4" name="pregunta4" value="" 
                                                required="required" 
                                               >
                                    </div>
                                    <h2 class="linea">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h2>
                                    <h3 class="textoPregunta">¿Cual es tu color favorito?</h3>
                                    <div class="preguntas">
                                        <input type="text" id="pregunta5" name="pregunta5" value="" 
                                                required="required" 
                                               >
                                    </div> 

                                    <input type="text" id="email" name="email" value="<%=email%>" style="visibility: hidden">
                                    <h2 class="linea">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h2>
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
