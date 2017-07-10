<%-- 
    Document   : IngresarPreguntas
    Created on : Jul 7, 2017, 7:23:08 PM
    Author     : alelizmu
--%>

<%@page import="Classes.Preguntas"%>
<%@page import="Classes.FileWriterManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
          Account account = (Account) session.getAttribute("account");
        ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");
        String pregunta1 = request.getParameter("pregunta1");
        String pregunta2 = request.getParameter("pregunta2");
        String pregunta3 = request.getParameter("pregunta3");
        String pregunta4 = request.getParameter("pregunta4");
        String pregunta5 = request.getParameter("pregunta5");

        String filename = application.getRealPath("/") + "AccountList.bin";
        FileWriterManager writer = new FileWriterManager();

        for (int i = 0; i < listaCuentas.size(); i++) {
            if (listaCuentas.get(i).getUser().getEmail().equals(account.getUser().getEmail())) {
                account.setActivated(true);
                account.setPregunta(new Preguntas(pregunta1, pregunta2, pregunta3, pregunta4, pregunta5));
                listaCuentas.set(i, account);
                break;
            }
        }

        if (writer.loadFileReplace(filename)) {
            for (int i = 0; i < listaCuentas.size(); i++) {
                writer.writeFile(listaCuentas.get(i));
            }
            writer.closeFile();
        }

        response.sendRedirect("LoginExitoso.jsp");
    %>
</html>
