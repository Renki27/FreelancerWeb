<%-- 
    Document   : Validar
    Created on : Jul 5, 2017, 2:05:59 PM
    Author     : alelizmu
--%>

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

        ArrayList<Account> listaCuentas = new ArrayList();
        String filename = application.getRealPath("/") + "AccountList.txt";

        FileInputStream lector = new FileInputStream(filename);

        Account persona;

        String carpeta = application.getRealPath("/") + "AccountList.txt";
        File directorio = new File(carpeta);
        int bytes = (int) directorio.length();
//
        int tamaño = bytes / 246;

        for (int i = 0; i < tamaño; i++) {
            try {
                ObjectInputStream in = new ObjectInputStream(lector);
                persona = (Account) in.readObject();
                listaCuentas.add(persona);
            } catch (EOFException e) {
                break;
            }
        }
        lector.close();

        Account cuentaPorValidar = null;
        for (int idx = 0; idx < listaCuentas.size(); idx++) {
            if (listaCuentas.get(idx).getUser().getEmail().equals(email)) {
                cuentaPorValidar = listaCuentas.get(idx);
            }
        }

        if (cuentaPorValidar.getUser().getPass().equals(password) && cuentaPorValidar.getActivated()) {
            response.sendRedirect("LoginExitoso.jsp");
        } else {
            if (cuentaPorValidar.getUser().getPass().equals(password) && !cuentaPorValidar.getActivated()) {
                request.getSession().setAttribute("cuenta", cuentaPorValidar);
                request.getSession().setAttribute("listaCuentas", listaCuentas);
                response.sendRedirect("VerificacionCuenta.jsp");
            } else {
                  out.println("<script>alert('Usuario o contraseña incorrecta');</script>");
                response.sendRedirect("Login.jsp");
            }
        }

    %>

</html>
