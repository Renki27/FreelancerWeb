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
                                        <center>
                                        <table style="background-color: white;" > 
                                            <br>
                                            <br>
                                            <tr>
                                                <td><strong>/////////////////</strong></td>
                                                <td><strong>Lunes</strong></td>
                                                <td><strong>Martes</strong></td>
                                                <td><strong>Miercoles</strong></td>
                                                <td><strong>Jueves</strong></td>
                                                <td><strong>Viernes</strong></td>
                                                <td><strong>Sabado</strong></td>
                                                
                                            </tr>
                                            
                                            <tr><td style="text-align: center">8:00am 9:00am</td> 
                                               
                                                <td><button id="8Lu" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('8Lu')"></button></td> 
                                                <td><button id="8Ma" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('8Ma')"></button></td> 
                                                <td><button id="8Mi" style="width:60px;height:40px; margin-left: 10px; background-color: green " onclick="setColor('8Mi')"></button></td> 
                                                <td><button id="8Ju" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('8Ju')"></button></td> 
                                                <td><button id="8Vi" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('8Vi')"></button></td>  
                                                <td><button id="8Sa" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('8Sa')"></button></td>  
                                               
                                            </tr>
                                            
                                               <tr><td style="text-align: center">10:00am 11:00am</td> 
                                                <td><button id="10Lu" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('10Lu')"></button></td> 
                                                <td><button id="10Ma" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('10Ma')"></button></td> 
                                                <td><button id="10Mi" style="width:60px;height:40px; margin-left: 10px; background-color: green "onclick="setColor('10Mi')"></button></td> 
                                                <td><button id="10Ju" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('10Ju')"></button></td> 
                                                <td><button id="10Vi" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('10Vi')"></button></td>  
                                                <td><button id="10Sa" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('10Sa')"></button></td>                                              
                                            </tr>
                                            <tr><td style="text-align: center">12:00md 1:00pm</td> 
                                                <td><button id="12Lu" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('12Lu')"></button></td> 
                                                <td><button id="12Ma" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('12Ma')"></button></td> 
                                                <td><button id="12Mi" style="width:60px;height:40px; margin-left: 10px; background-color: green" onclick="setColor('12Mi')"></button></td> 
                                                <td><button id="12Ju" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('12Ju')"></button></td> 
                                                <td><button id="12Vi" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('12Vi')"></button></td>  
                                                <td><button id="12Sa" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('12Sa')"></button></td>                                                  
                                            </tr>
                                               <tr><td style="text-align: center">2:00pm 3:00om</td> 
                                                <td><button id="2Lu" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('2Lu')"></button></td> 
                                                <td><button id="2Ma" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('2Ma')"></button></td> 
                                                <td><button id="2Mi" style="width:60px;height:40px; margin-left: 10px; background-color: green " onclick="setColor('2Mi')"></button></td> 
                                                <td><button id="2Ju" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('2Ju')"></button></td> 
                                                <td><button id="2Vi" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('2Vi')"></button></td>  
                                                <td><button id="2Sa" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('2Sa')"></button></td>                                                 
                                            </tr>
                                            <tr><td style="text-align: center">4:00pm 5:00pm</td> 
                                                <td><button id="4Lu" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('4Lu')"></button></td> 
                                                <td><button id="4Ma" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('4Ma')"></button></td> 
                                                <td><button id="4Mi" style="width:60px;height:40px; margin-left: 10px; background-color: green " onclick="setColor('4Mi')"></button></td> 
                                                <td><button id="4Ju" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('4Ju')"></button></td> 
                                                <td><button id="4Vi" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('4Vi')"></button></td>  
                                                <td><button id="4Sa" style="width:60px;height:40px; margin: 0px; background-color: green" onclick="setColor('4Sa')"></button></td>                                                
                                            </tr>
                                        </table>
                                            <br>
                                            <br>
                                            </center>
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
            
            function setColor(id){
                var property = document.getElementById(id);
                
              if (property.style.backgroundColor === 'green') {
                  property.style.backgroundColor = 'red';
              } else {
                   property.style.backgroundColor = 'green';
              }
            }
        </script>
    </body>
</html>
