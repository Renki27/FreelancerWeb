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


    <%
        Account account = (Account) session.getAttribute("account");
        ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");
        String verificationCode = request.getParameter("verificationCode");
        String filename = application.getRealPath("/") + "AccountList.bin";
        FileWriterManager writer = new FileWriterManager();

//        for (int i = 0; i < listaCuentas.size(); i++) {
//            if (listaCuentas.get(i).getCode().equals(verificationCode)) {
//                account.setActivated(true);
//                listaCuentas.set(i, account);
//                break;
//            }
//        }

//        if (writer.loadFileReplace(filename)) {
//            for (int i = 0; i < listaCuentas.size(); i++) {
//                writer.writeFile(listaCuentas.get(i));
//            }
//            writer.closeFile();
//        }

        if (account.getCode().equals(verificationCode)) {
             response.sendRedirect("Preguntas.jsp");
        } else {
            response.sendRedirect("Login.jsp");
        }
    %>

