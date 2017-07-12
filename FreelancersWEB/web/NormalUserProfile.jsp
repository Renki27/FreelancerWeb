<%-- 
    Document   : NormalUserProfile
    Created on : Jul 11, 2017, 9:39:33 AM
    Author     : ZERO
--%>


<%@page import="Classes.NormalUser"%>
<%@page import="Classes.ContractorUser"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up!</title>
        <link href="CSS/global.css" rel="stylesheet">
        <link href="CSS/SignUp.css" rel="stylesheet">
        <link href="CSS/newcss.css" rel="stylesheet">
        <!--        <link href="CSS/bootstrap.css" rel="stylesheet">-->
        <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
        <script src="Scripts/pictureLoader.js" type="text/javascript"></script>
        <script src="Scripts/accountTypeSelector.js" type="text/javascript"></script>
        <script src="Scripts/validatePass.js" type="text/javascript"></script>
        <script src="Scripts/validateEmail.js" type="text/javascript"></script>
        <!--<script src="Scripts/jobsCheckboxCounter.js" type="text/javascript"></script>-->
        <script src="Scripts/validateSignupForm.js" type="text/javascript"></script>
        <script src="js/cleave.min.js" type="text/javascript"></script>
        <script src="js/cleave-phone.cr.js" type="text/javascript"></script>
        <script src="Scripts/inputFormatter.js" type="text/javascript"></script>
    </head>
    <%
        Account cuenta = (Account) session.getAttribute("account");
        NormalUser user = (NormalUser) cuenta.getUser();
    %>
    <body class="static-bg">
        <div class="main-container">
            <div class="creation-container">
                <div class="box-box"> 
                    <div id="signup-wrapper">
                        <div class id="information-container">
                            <div id="form-container">
                                <div class="account-type-selector">
                                    <center>
                                        <div>
                                            <button id="GenerarSolicitud" onclick="menuSelector('GenerarSolicitud')" value="GenerarSolicitud" class="button" >Generar Solicitud</button>
                                            <button id="VerSolicitudesPendientes" onclick="menuSelector('VerSolicitudesPendientes')" value="VerSolicitudesPendientes" class="button" >Ver Solicitudes Pendientes</button>
                                            <button id="Cuenta" onclick="menuSelector('Cuenta')" value="Cuenta" class="button" >Cuenta</button>                                  
                                        </div>
                                    </center>

                                    <div id="GenerarSolicitud-conteiner">
                                    <h1>Estoy en generar Solicitud</h1>
                                    </div>

                                    <div id="VerSolicitudesPendientes-conteiner" style="display:none;">
                                    <h1>Estoy en ver solicitudes</h1>
                                    </div>
                                    <div id="cuenta-conteiner" style="display:none;">
                                        <center>
                                            <div id="MenuAccount">
                                                <h1><%=cuenta.getUser().getName()%></h1>
                                                <button onclick="changePass()">Cambiar contraseña</button>
                                                <button onclick="editAccount()">Editar Cuenta</button>  
                                            </div>


                                            <div id="changePassword" style="display: none">
                                                <form action="changePassword.jsp" method="post">                                           
                                                    <h3 style="color: white">Ingrese su nueva contraseña</h3>
                                                    <div>
                                                        <input type="password" id="newPass" name="newPass" value="" 
                                                               required="required">                                                       
                                                    </div>
                                                    <div>
                                                        <button type="submit"> Enviar </button>
                                                    </div>
                                                </form>                                          
                                            </div>



                                            <div id="editAccount" style="display: none">
                                                <h1>Ingrese los nuevo datos</h1>
                                                <br>
                                                <form action="editAccount.jsp" method="post">   
                                                <div class="control-group">
                                                    <div class="grid-50">
                                                        <h3 style="color: white">Nombre</h3>
                                                        <input type="text" id="firstname" name="firstname" value="" 
                                                               autocapitalize="on" autocomplete="off" autocorrect="off" 
                                                               maxlength="25" placeholder="<%=user.getName()%>" required="required" 
                                                               spellcheck="off"/> 
                                                    </div>
                                                    <div class="grid-50">
                                                        <h3 style="color: white">Apellido</h3>
                                                        <input type="text" id="lastname" name="lastname" value="" 
                                                               autocapitalize="on" autocomplete="off" autocorrect="off" 
                                                               maxlength="25" placeholder="<%=user.getLastName()%>" required="required" 
                                                               spellcheck="off"/> 
                                                    </div>

                                                </div>
                                                   
                                                    <fieldset>
                                                        <div class="control-group">
                                                           
                                                            <div  style="align-content: center">
                                                                <p>Select you profile picture:</p>
                                                                <img class="profile-pic grid-100" src="Images/no-thumbnail.jpg" />
                                                                <label id="load-image-label" class="grid-100" for="upload-photo">Load Image</label>
                                                                <input onclick="imagePicker()" id="upload-photo" name="image-src" class="file-upload grid-100" type="file" accept="image/*" required="required"/>
                                                            </div>
                                                          
                                                        </div>
                                                    </fieldset>
 
                                                    <br>
                                                    <br>
                                                    <div>
                                                        <button type="submit"> Enviar </button>
                                                    </div>
                                                </form>                                          
                                            </div>      


                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function menuSelector(id) {
                var property = document.getElementById(id);
                name = property.value;
                if (name === 'GenerarSolicitud') {
                    $("#GenerarSolicitud-conteiner").show();
                    $("#bandeja-conteiner").hide();
                    $("#cuenta-conteiner").hide();
                } else {
                    if (name === 'VerSolicitudesPendientes') {
                        $("#VerSolicitudesPendientes-conteiner").show();
                        $("#cuenta-conteiner").hide()
                        $("#GenerarSolicitud-conteiner").hide()
                    } else {
                        $("#cuenta-conteiner").show();
                        $("#GenerarSolicitud-conteiner").hide();
                        $("#VerSolicitudesPendientes-conteiner").hide();
                        $("#MenuAccount").show();
                        $("#changePassword").hide();
                        $("#editAccount").hide();
                    }

                }
            }

            function changePass() {
                $("#MenuAccount").hide();
                $("#changePassword").show();
            }

            function editAccount() {
                $("#MenuAccount").hide();
                $("#editAccount").show();
            }

            function setColor(id) {
                var property = document.getElementById(id);

                if (property.style.backgroundColor === 'red') {
                    property.style.backgroundColor = 'green';

                } else {
                    property.style.backgroundColor = 'red';
                }
            }
        </script>
    </body>
</html>


