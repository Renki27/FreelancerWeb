<%-- 
    Document   : Validar
    Created on : Jul 5, 2017, 2:05:59 PM
    Author     : alelizmu
--%>

<%@page import="Classes.FileReaderManager"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        ArrayList<Account> accountList = new ArrayList();
        String filename = application.getRealPath("/") + "AccountList.bin";
        FileReaderManager reader = new FileReaderManager();

        if (reader.openFile(filename)) {
            Account acount = reader.readFile();
            while (acount != null) {
                accountList.add(acount);
 //               System.out.println(acount);
                acount = reader.readFile();

            }
        }
        reader.closeFile();

        Account validatingAccount = null;
        for (int idx = 0; idx < accountList.size(); idx++) {
            if (accountList.get(idx).getUser().getEmail().equals(email)) {
                validatingAccount = accountList.get(idx);
            }
        }

        if (validatingAccount.getUser().getPass().equals(password) && validatingAccount.getActivated()) {
            response.sendRedirect("LoginExitoso.jsp");
        } else {
            if (validatingAccount.getUser().getPass().equals(password) && !validatingAccount.getActivated()) {
                request.getSession().setAttribute("cuenta", validatingAccount);
                request.getSession().setAttribute("listaCuentas", accountList);
                response.sendRedirect("VerificacionCuenta.jsp");
            } else {
                out.println("<script>alert('Wrong username or password');</script>");
                response.sendRedirect("index.jsp");
            }
        }

    %>

</html>
