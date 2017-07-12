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
<%--<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="false" errorPage="ErrorPage.jsp"%>--%>
<!DOCTYPE html>

<%
    Account cuentaUser = (Account) session.getAttribute("account");
    ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");

 
    String emailContractor = request.getParameter("ContractorAccount");

   

    
    String customerName = cuentaUser.getUser().getName();
    String descripcion = request.getParameter("description");
    String date = request.getParameter("date");
    String hour = request.getParameter("Hour");
   
    Request myRequest = new Request(customerName, descripcion, "Costa Rica", date, hour);
    System.out.println("");
  

    cuentaUser.getUser().addRequest(myRequest);

    String filename = application.getRealPath("/") + "AccountList.bin";
    FileWriterManager writer = new FileWriterManager();
    for (int i = 0; i < listaCuentas.size(); i++) {
        if (listaCuentas.get(i).getUser().getEmail().equals(cuentaUser.getUser().getEmail())) {
            listaCuentas.set(i, cuentaUser);
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

