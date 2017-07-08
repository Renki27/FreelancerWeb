<%-- 
    Document   : CambiarVerificada
    Created on : Jul 5, 2017, 4:07:30 PM
    Author     : alelizmu
--%>

<%@page import="Classes.FileWriterManager"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        Account account = (Account) session.getAttribute("cuenta");
        ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("listaCuentas");
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String filename = application.getRealPath("/") + "AccountList.bin";
        FileWriterManager writer = new FileWriterManager();

        for (int i = 0; i < listaCuentas.size(); i++) {
            if (listaCuentas.get(i).getCode() == codigo) {
                account.setActivated(true);
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

        if (account.getCode() == codigo) {
            response.sendRedirect("LoginExitoso.jsp");
        } else {
            response.sendRedirect("Login.jsp");
        }
    %>
</html>
