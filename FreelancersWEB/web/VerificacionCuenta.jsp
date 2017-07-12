<%-- 
    Document   : VerificacionCuenta
    Created on : Jul 5, 2017, 2:02:43 PM
    Author     : alelizmu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/global.css" rel="stylesheet">
        <link href="CSS/SignUp.css" rel="stylesheet">
        <link href="CSS/cantLogin.css" rel="stylesheet">
    </head>
    <body>
        <%
            Account cuenta = (Account) session.getAttribute("account");
        //    ArrayList<Account> accountList = (ArrayList) session.getAttribute("accountList");

        %>
    <body class="static-bg">
        <div class="main-container" style="margin-top: 100px;">
            <div class="creation-container">
                <div class="box-box"> 
                    <div id="signup-wrapper">
                        <div class id="information-container">
                            <div>
                                <h1>¿CODE?</h1>
                            </div>
                            <div id="form-container">
                                <form action="CambiarVerificada.jsp" id="setVerify-form" method="post" novalidate="novalidate" >
                                    <h3 style="text-align: center; color: white; padding-top: 50px;">Hello! <%=cuenta.getUser().getName()%> Your account has not been activated yet, Please open your mail and paste the code here!</h3>
                                    <div>
                                        <center>
                                        <input type="text" id="verification-code" name="verificationCode" value="" 
                                               autocapitalize="on" required="required" 
                                               spellcheck="off">
                                        </center>
                                    </div>
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