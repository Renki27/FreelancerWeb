<%-- 
    Document   : LoginExitosoContractor
    Created on : Jul 9, 2017, 3:24:13 PM
    Author     : alelizmu
--%>

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
        ContractorUser contratista = (ContractorUser) cuenta.getUser();
        String descripcion = contratista.getDescription();
        double price = contratista.getPricePerHour();

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
                                            <button id="Agenda" onclick="menuSelector('Agenda')" value="Agenda" class="button" >Agenda</button>
                                            <button id="Bandeja" onclick="menuSelector('Bandeja')" value="Bandeja" class="button" >Bandeja de entrada</button>
                                            <button id="Cuenta" onclick="menuSelector('Cuenta')" value="Cuenta" class="button" >Cuenta</button>                                  
                                        </div>
                                    </center>

                                    <div id="agenda-conteiner"  >
                                        <h1>Estoy en la agenda</h1>
                                    </div>

                                    <div id="bandeja-conteiner" style="display:none;">
                                        <h1>Estoy en la bandeja</h1>
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
                                                    <h3 style="color: white">Descripcion</h3>

                                                    <div id="description-ta" class="control-group">
                                                        <textarea   maxlength="265" name="description" placeholder="<%=descripcion%>" cols="60" rows="4" wrap="hard"  required="required"></textarea>
                                                    </div>

                                                    <h3 style="color: white">Precio por Hora</h3>

                                                    <div class="control-group row-emailAdress">
                                                        <input type="number" id="price" name="price" value="" placeholder="$ <%=price%>" maxlength="320"/>
                                                    </div>
                                                    <fieldset>
                                                        <div class="control-group">
                                                            <div class="image-picker-container grid-50">
                                                                <p>Select you profile picture:</p>
                                                                <img class="profile-pic grid-100" src="Images/no-thumbnail.jpg" />
                                                                <label id="load-image-label" class="grid-100" for="upload-photo">Load Image</label>
                                                                <input onclick="imagePicker()" id="upload-photo" name="image-src" class="file-upload grid-100" type="file" accept="image/*" required="required"/>
                                                            </div>
                                                            <div id="jobs-checkbox-container"class="checkbox-input-container grid-50" >
                                                                <p>Select your work Area(s):</p>
                                                                <div class="checkbox-inner-div">
                                                                    <input class="job-checkbox" type="checkbox"  value="plumbing" id="pb"/>
                                                                    <label for="pb"> <span></span>Plumbing</label>
                                                                </div>

                                                                <div class="checkbox-inner-div">
                                                                    <input class="job-checkbox" type="checkbox"  value="various-reparations" id="vr"/>
                                                                    <label for="vr"> <span></span>Various Reparations</label>
                                                                </div>
                                                                <div class="checkbox-inner-div">
                                                                    <input class="job-checkbox" type="checkbox" value="removals" id="rm"/>
                                                                    <label for="rm"> <span></span>Removals</label>
                                                                </div>

                                                                <div class="checkbox-inner-div">
                                                                    <input class="job-checkbox" type="checkbox" value="electrical-works" id="ew"/>
                                                                    <label for="ew"> <span></span>Electrical Works</label>
                                                                </div>
                                                                <div class="checkbox-inner-div">
                                                                    <input class="job-checkbox" type="checkbox" value="cleaning" id="cn"/>
                                                                    <label for="cn"> <span></span>Cleaning</label>
                                                                </div>                  
                                                                <div class="checkbox-inner-div">
                                                                    <input class="job-checkbox" type="checkbox" value="errands" id="er"/>
                                                                    <label for="er"> <span></span>Errands</label>
                                                                </div>

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
                if (name === 'Agenda') {
                    $("#agenda-conteiner").show();
                    $("#bandeja-conteiner").hide();
                    $("#cuenta-conteiner").hide();
                } else {
                    if (name === 'Bandeja') {
                        $("#bandeja-conteiner").show();
                        $("#cuenta-conteiner").hide()
                        $("#agenda-conteiner").hide()
                    } else {
                        $("#cuenta-conteiner").show();
                        $("#agenda-conteiner").hide();
                        $("#bandeja-conteiner").hide();
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
        </script>
    </body>
</html>
