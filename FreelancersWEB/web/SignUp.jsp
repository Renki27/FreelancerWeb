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
        <!--        <link href="CSS/bootstrap.css" rel="stylesheet">-->
        <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
        <script src="Scripts/pictureLoader.js" type="text/javascript"></script>
        <script src="Scripts/accountTypeSelector.js" type="text/javascript"></script>
        <script src="Scripts/validatePass.js" type="text/javascript"></script>
        <script src="Scripts/validateEmail.js" type="text/javascript"></script>
        <script src="Scripts/jobsCheckboxCounter.js" type="text/javascript"></script>
        <script src="Scripts/validateSignupForm.js" type="text/javascript"></script>
        <script src="js/cleave.min.js" type="text/javascript"></script>
        <script src="js/cleave-phone.cr.js" type="text/javascript"></script>
        <script src="Scripts/inputFormatter.js" type="text/javascript"></script>
        <!--    <script src="js/bootstrap.min.js"></script>-->

        <!--Hola prros XdxdDdXD-->
    </head >
    <body class="static-bg">
        <div class="main-container">
            <div class="creation-container">
                <div class="box-box"> 
                    <div id="signup-wrapper">
                        <div class id="information-container">
                            <div>
                                <h1>Create an Account</h1>
                            </div>

                            <div id="form-container">
                                <div class="account-type-selector">
                                    <div id="radio1" class="grid-50">
                                        <input name="radio-selector" onclick="accountTypeSelector()"type="radio" id="contractor-radio" value="contractor" checked />
                                        <label class="grid-100" for="contractor-radio"><span></span>Contractor Account</label>
                                    </div>
                                    <div id="radio2" class="grid-50">
                                        <input  name="radio-selector" onclick="accountTypeSelector()" type ="radio" id="normal-radio" value="normal" />
                                        <label class="grid-100" for="normal-radio"><span></span>Normal User Account</label>
                                    </div>                               
                                </div>

                                <form action="" id="account-creation" method="post" novalidate="novalidate">
                                    <fieldset class="first"> 
                                        <div class="control-group">
                                            <div class="grid-50">
                                                <input type="text" id="firstname" name="firstname" value="" 
                                                       autocapitalize="on" autocomplete="off" autocorrect="off" 
                                                       maxlength="25" placeholder="First Name" required="required" 
                                                       spellcheck="off"/> 
                                            </div>
                                            <div class="grid-50">
                                                <input type="text" id="lastname" name="lastname" value="" 
                                                       autocapitalize="on" autocomplete="off" autocorrect="off" 
                                                       maxlength="25" placeholder="Last Name" required="required" 
                                                       spellcheck="off"/> 
                                            </div>

                                        </div>

                                        <div id="phone-container" class="control-group number-fields-inline grid-33">
                                            <input class="grid-100 input-phone" type="text"  id="phone" name="phone" value="" autocomplete="off" maxlength="10" placeholder="Phone Number"
                                                   required="required" spellcheck="off"
                                                   />
                                        </div>
                                        <div id="ced-id-container" class="control-group number-fields-inline grid-33">
                                            <input class="grid-100" type="text"  id="ced-id" name="ced-id" value="" autocomplete="off" maxlength="50" placeholder="ID Number"
                                                   required="required" spellcheck="off"
                                                   />
                                        </div>
                                        <div id="price-container" class="control-group grid-33"> 
                                            <input class="grid-100 input-price" type="text"  id="price-per-hour" name="price" value=""  autocomplete="off" maxlength="15" placeholder="Price per Hour"
                                                   required="required" spellcheck="off"
                                                   />
                                        </div>

                                    </fieldset>
                                    <fieldset>
                                        <div class="control-group row-emailAdress">
                                            <input type="email" id="emailAddress" name="emailAddress" value="" placeholder="Email" maxlength="320" autocomplete="off" class="grid-100" required="required" spellcheck="false" onblur="validateEmail(this)"/>
                                        </div>
                                        <div class="control-group row-emailAdress">
                                            <input type="email" id="emailAddressConfirmation" name="emailAddressConfirmation" value="" placeholder="Confirm Email" maxlength="320" autocomplete="off" class="grid-100" required="required" spellcheck="false"  onkeyup="checkEmail(); return false;"/>
                                            <span id="emailAddressConfirmation-error-inline" class="help-block"></span>
                                        </div>
                                        <div class="control-group row-password">
                                            <input type="password" id="password" name="password" value="" maxlength="16" placeholder="Password" class="password-input" autocapitalize="off" autocomplete="off" required="required" spellcheck="false"/>
                                        </div>
                                        <div class="control-group row-password">
                                            <input type="password" id="rePassword" name="rePassword" value="" maxlength="16" placeholder="Confirm Password" class="password-input"  required="required" onkeyup="checkPass(); return false;"/>
                                            <span id="password-error-inline" class="help-block"></span>
                                        </div>
                                    </fieldset>
                                    <fieldset>
                                        <div id="description-ta" class="control-group">
                                            <textarea   maxlength="265" name="description" placeholder="Work Description" cols="60" rows="4" wrap="hard"  required="required"></textarea>
                                        </div>
                                        <div class="control-group">

                                            <div class="image-picker-container grid-50">
                                                <p>Select you profile picture:</p>
                                                <img class="profile-pic grid-100" src="Images/no-thumbnail.jpg" />
                                                <label id="load-image-label" class="grid-100" for="upload-photo">Load Image</label>
                                                <input onclick="imagePicker()" id="upload-photo" class="file-upload grid-100" type="file" accept="image/*" required="required"/>
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

                                    <div id="signup-submit">
                                        <button id="signnup-button" type="submit" class="btn-primary btn-large btn-block"  onclick="submitForm()">Sign Up</button>
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
