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
    </head>
    <body>
        <%
            Account cuenta = (Account) session.getAttribute("account");
            ArrayList<Account> accountList = (ArrayList) session.getAttribute("accountList");

        %>
        <h1>Hello! <%=cuenta.getUser().getName()%>Your account has not been activated yet, Please open your mail and paste the code here!</h1>

        <form action="CambiarVerificada.jsp" id="setVerify-form" method="post" novalidate="novalidate" >
            <h3 style=""class="textoPregunta">Please enter your code</h3>
            <div>
                <input type="text" id="verification-code" name="verificationCode" value="" 
                       autocapitalize="on" required="required" 
                       spellcheck="off">
            </div>
            <button type="submit" class="btn-primary btn-large btn-block">Verify</button>
        </form>
    </body>
</html>
