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
        <%Account cuenta = (Account)session.getAttribute("cuenta");
        ArrayList<Account> listaCuentas = (ArrayList)session.getAttribute("listaCuentas");

        %>
        <h1>Hola <%=cuenta.getUser().getName()%> su cuenta no ha sido verificada, ingrese el codigo que le llego al correo para su verificacion</h1>

        <form action="CambiarVerificada.jsp" id="codigo" method="post" novalidate="novalidate" >
            <h3 style=""class="textoPregunta">Digite el codigo</h3>
            <div>
                <input type="text" id="codigo" name="codigo" value="" 
                       autocapitalize="on" required="required" 
                       spellcheck="off">
            </div>
            <button type="submit"class="boton"> <img class="imagen "src="Images/Enviar.png" style="width: 300px; height: 100px"></button>
        </form>
    </body>
</html>
