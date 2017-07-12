<%-- 
    Document   : generarSolicitud
    Created on : Jul 12, 2017, 3:58:06 AM
    Author     : alelizmu
--%>

<%@page import="Classes.ContractorUser"%>
<%@page import="Classes.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="false" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/global.css" rel="stylesheet">
        <link href="CSS/login.css" rel="stylesheet">
    </head>
    
    <%
    ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList"); 
    ContractorUser contratista;
    %>
    <body class="static-bg">
       
   <center>
         <h1 style="color: white">Estos son los resultados</h1> 
         </center>
        <%for (int idx = 0; idx < listaCuentas.size(); idx++) {
              if(listaCuentas.get(idx).getAccountType().equals("CONTRACTOR")){
                  contratista = (ContractorUser) listaCuentas.get(idx).getUser();
                %>
 
           <div style="margin-bottom: 100px; background-color: grey;margin-left: 400px;margin-right: 400px; border: solid 3px black">
              <div>
                  
              </div>
                  <h2 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre: <%=listaCuentas.get(idx).getUser().getName()%>&nbsp;<%=listaCuentas.get(idx).getUser().getLastName()%> <center><img src="<%=listaCuentas.get(idx).getUser().getImage()%>" style="width: 100px; height: 100px"> </center></h2>
            <h2 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripcion: <%=contratista.getDescription()%></h2>
            <h2 style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Precio por Hora: <%=contratista.getPrice()%></h2>
           <center>
               <form action="HacerSolicitud.jsp">            
               <input id="account" name="newPass" value="<%=listaCuentas.get(idx).getUser().getEmail()%>" style="display: none">
               <button type="submit"  class="btn-primary btn-large btn-block" >Hacer Solicitud</button>
           </form>
           </center>
           <br>
           
            <% }               
            }

        %>
       


        </div>

    
</body>
</html>
