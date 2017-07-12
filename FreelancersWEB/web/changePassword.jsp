<%-- 
    Document   : changePassword
    Created on : Jul 9, 2017, 7:02:58 PM
    Author     : alelizmu
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Classes.User"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.FileWriterManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
Account cuenta = (Account) session.getAttribute("account");
ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");
String newPass = request.getParameter("newPass");
    String filename = application.getRealPath("/") + "AccountList.bin";
    FileWriterManager writer = new FileWriterManager();
    for (int i = 0; i < listaCuentas.size(); i++) {
        if (listaCuentas.get(i).getUser().getEmail().equals(cuenta.getUser().getEmail())) {
            listaCuentas.get(i).getUser().setPass(newPass);
        }
        listaCuentas.set(i, listaCuentas.get(i));

        if (writer.loadFileReplace(filename)) {
            for (int g = 0; g < listaCuentas.size(); g++) {
                writer.writeFile(listaCuentas.get(g));
            }
            writer.closeFile();
        }
        break;
    }
    response.sendRedirect("LoginExitosoContractor.jsp");



%>
