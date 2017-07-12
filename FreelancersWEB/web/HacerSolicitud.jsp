<%-- 
    Document   : HcaerSolicitud
    Created on : Jul 12, 2017, 5:22:32 AM
    Author     : alelizmu
--%>

<<<<<<< HEAD
<%@page import="Classes.ContractorUser"%>
<%@page import="Classes.FileWriterManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.Request"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="false" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       Account cuentaUser = (Account) session.getAttribute("account");
       ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");
       
       ContractorUser contratista = null;
       String emailContractor = request.getParameter("ContractorAccount");
       
       
       for (int idx = 0; idx < listaCuentas.size(); idx++) {
               if (listaCuentas.get(idx).getUser().getEmail().equals(emailContractor)){
                   contratista = (ContractorUser)listaCuentas.get(idx).getUser();
               }
               
           }
       String customerName = cuentaUser.getUser().getName();
       String descripcion = request.getParameter("description");
       String date = request.getParameter("date");
       String hour = request.getParameter("Hour");
       boolean value = false;
       Request myRequest = new Request(customerName, descripcion, "Costa Rica", date, hour);
    System.out.println("");
       contratista.addRequest(myRequest);
      
       cuentaUser.getUser().addRequest(myRequest);
       
           String filename = application.getRealPath("/") + "AccountList.bin";
           FileWriterManager writer = new FileWriterManager();
        for (int i = 0; i < listaCuentas.size(); i++) {
        if (listaCuentas.get(i).getUser().getEmail().equals(cuentaUser.getUser().getEmail())) {
           listaCuentas.set(i, cuentaUser);
        }
        if(listaCuentas.get(i).getUser().getEmail().equals(contratista.getEmail())){
           listaCuentas.set(i, listaCuentas.get(i));
        }
        

        if (writer.loadFileReplace(filename)) {
            for (int g = 0; g < listaCuentas.size(); g++) {
                writer.writeFile(listaCuentas.get(g));
            }
            writer.closeFile();
        }
        break;
    }
       
       
       response.sendRedirect("NormalUserProfile.jsp");
       %>     
    </body>
</html>
