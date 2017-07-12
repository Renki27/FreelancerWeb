<%-- 
    Document   : NormalUserProfile
    Created on : Jul 11, 2017, 9:39:33 AM
    Author     : ZERO
--%>


<%@page import="java.util.ArrayList"%>
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
         ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");
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
                                            <form action="CerrarSesion.jsp">
                                                <br>
                                                <button id="Cerrar" value="CerrarSesion" class="button">CerrarSesion</button>
                                            </form>                                           
                                        </div>
                                        <h1 style="color: gray; margin-top: -2px">-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-</h1>
                                    </center>
                                    <center> 
                                        <div id="GenerarSolicitud-conteiner">
                                            <form action="generarSolicitud.jsp">
                                                <div>
                                                    <p style="color: white">Select the work Area(s):</p>

                                                    <input class="job-checkbox" type="checkbox"  value="plumbing" id="pb"/>
                                                    <label for="pb"> <span></span>Plumbing</label>
                                                    <input class="job-checkbox" type="checkbox"  value="various-reparations" id="vr"/>
                                                    <label for="vr"> <span></span>Various Reparations</label>
                                                    <input class="job-checkbox" type="checkbox" value="removals" id="rm"/>
                                                    <label for="rm"> <span></span>Removals</label>
                                                    <input class="job-checkbox" type="checkbox" value="electrical-works" id="ew"/>
                                                    <label for="ew"> <span></span>Electrical Works</label>
                                                    <input class="job-checkbox" type="checkbox" value="cleaning" id="cn"/>
                                                    <label for="cn"> <span></span>Cleaning</label>
                                                    <input class="job-checkbox" type="checkbox" value="errands" id="er"/>
                                                    <label for="er"> <span></span>Errands</label>
                                                </div>

                                                <h2 style="color: white">__________</h2>


                                                <h2 style="color: white"> Fecha</h2>
                                                <div class="grid-50" style="width: 100%; margin-top: 20px; display: flex; align-items: center; justify-content: center;">
                                                    <input type="text" id="date" name="date" value="" 
                                                           maxlength="25" required="required" 
                                                           > 
                                                </div>
                                                <h2 style="color: white">__________</h2>
                                                <div>
                                                    <p style="color: white">Select the hour:</p>
                                                    <input name="Hour" class="job-checkbox" type="radio"  value="8:00am - 9:00am" id="8-9"/>
                                                    <label for="8-9"> <span></span>8:00am - 9:00am</label>
                                                <input name="Hour" class="job-checkbox" type="radio"  value="10:00am - 11:00am" id="10-11"/>
                                                <label for="10-11"> <span></span>10:00am - 11:00am</label>
                                                <input name="Hour" class="job-checkbox" type="radio" value="12:00md - 1:00pm" id="12-1"/>
                                                <label for="12-1"> <span></span>12:00md - 1:00pm</label>
                                                <input name="Hour" class="job-checkbox" type="radio" value="2:00pm - 3:00" id="2-3"/>
                                                <label for="2-3"> <span></span>2:00pm - 3:00pm</label>
                                                <input name="Hour" class="job-checkbox" type="radio" value="4:00pm - 5:00pm" id="4-5"/>
                                                <label for="4-5"> <span></span>4:00pm - 5:00pm</label> 

                                                <h2 style="color: white">__________</h2>
                                                <h3 style="color: white">Descripcion del trabajo</h3>
                                                <div id="description-ta" class="control-group">
                                                    <textarea   maxlength="265" name="description" cols="60" rows="4" wrap="hard"  required="required"></textarea>
                                                </div>       
                                            </div>

                                                    <input name="Hour" class="job-checkbox" type="radio"  value="10-11" id="10-11"/>
                                                    <label for="10-11"> <span></span>10:00am - 11:00am</label>
                                                    <input name="Hour" class="job-checkbox" type="radio" value="12-1" id="12-1"/>
                                                    <label for="12-1"> <span></span>12:00md - 1:00pm</label>
                                                    <input name="Hour" class="job-checkbox" type="radio" value="2-3" id="2-3"/>
                                                    <label for="2-3"> <span></span>2:00pm - 3:00pm</label>
                                                    <input name="Hour" class="job-checkbox" type="radio" value="4-5" id="4-5"/>
                                                    <label for="4-5"> <span></span>4:00pm - 5:00pm</label> 

                                                    <h2 style="color: white">__________</h2>
                                                    <h3 style="color: white">Descripcion del trabajo</h3>
                                                    <div id="description-ta" class="control-group">
                                                        <textarea   maxlength="265" name="description" cols="60" rows="4" wrap="hard"  required="required"></textarea>
                                                    </div>       
                                                </div>

                                                <br>
                                                <button type="submit"  class="btn-primary btn-large btn-block"> <img class="imagen " src="Images/buscar.png" alt="no Image"></button>


                                    <div id="VerSolicitudesPendientes-conteiner" style="display:none;">
                                        <%for (int idx = 0; idx < cuenta.getUser().getRequestList().size(); idx++) {
                                        %>

                                        <div style= "background-color: grey; border: solid 3px black; margin-bottom: 20px">
                                            <div>
                                            </div>
                                            <h3 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Solicitante: <%=cuenta.getUser().getRequestList().get(idx).getCustomerName()%><center></center></h3>
                                            <h3 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripcion: <%=cuenta.getUser().getRequestList().get(idx).getDescription()%><center></center></h3>
                                            <h3 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Localizacion: <%=cuenta.getUser().getRequestList().get(idx).getLocation()%><center></center></h3>
                                           <% if (cuenta.getUser().getRequestList().get(idx).isValue()){ %>
                                             <h3 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estado de la solicitud: Aceptada<center></center></h3>  
                                           <% }else{%>
                                           <h3 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Estado de la solicitud: Pendiente<center></center></h3>  
                                           <%}%>
                                            <center>
<!--                                                <form action="HacerSolicitud.jsp">            
                                                    <input id="ContractorAccount" name="ContractorAccount" value="<%//=listaCuentas.get(idx).getUser().getEmail()%>" style="display: none">
                                                    <input id="descripcion" name="description" value="<%//=description%>" style="display: none">
                                                    <input id="date" name="date" value="<%//=date%>" style="display: none">
                                                    <input id="Hour" name="Hour" value="<%//=hour%>" style="display: none">

                                                    <button type="submit" class="button" style="background-color: lightgray" >Hacer Solicitud</button>
                                                </form>-->
                                            </center>
                                            <br>
           </div>
                                              <% }
                                                  

                                              %>
                                    </div>
                                   
                                   <div id="cuenta-conteiner" style="display:none;">
                                       <center>

                                            </form>
                                            <br>
                                        </div>
                                    </center>

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
                                            <br>
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
                                                <form action="editAccountUser.jsp" method="post">   
                                                    <div class="control-group">
                                                        <div class="grid-50">
                                                            <h3 style="color: white">Nombre</h3>
                                                            <input type="text" id="firstname" name="firstname" value="" 
                                                                   maxlength="25" placeholder="<%=user.getName()%>" required="required" 
                                                                   /> 
                                                        </div>
                                                        <div class="grid-50">
                                                            <h3 style="color: white">Apellido</h3>
                                                            <input type="text" id="lastname" name="lastname" value="" 
                                                                   maxlength="25" placeholder="<%=user.getLastName()%>" required="required" 
                                                                   /> 
                                                        </div>

                                                    </div>

                                                    <fieldset>
                                                        <div class="control-group">

                                                            <div  style="align-content: center">
                                                                <p>Select you profile picture:</p>
                                                                <img class="profile-pic grid-100" src="Images/no-thumbnail.jpg" alt="Image not Found"/>
                                                                <label id="load-image-label" class="grid-100" for="upload-photo">Load Image</label>
                                                                <input onclick="imagePicker()" id="upload-photo" name="image-src" class="file-upload grid-100" type="file" accept="image/*" required="required"/>
                                                            </div>

                                                        </div>
                                                    </fieldset>

                                                    <br>
                                                    <br>
                                                    <div>
                                                        <center>
                                                            <h4 style="color: white">Nota: Para que el cambio se haga efectivo, debera cerrar sesion</h4>
                                                        </center>
                                                        <button type="submit"> Enviar </button>

                                                    </div>
                                                </form>  
                                                <br>
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
                    $("#VerSolicitudesPendientes-conteiner").hide();
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


