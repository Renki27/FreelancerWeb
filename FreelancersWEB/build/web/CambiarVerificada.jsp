<%-- 
    Document   : CambiarVerificada
    Created on : Jul 5, 2017, 4:07:30 PM
    Author     : alelizmu
--%>

<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%Account cuenta = (Account) session.getAttribute("cuenta");
    ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("listaCuentas");
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    String filename = application.getRealPath("/") + "AccountList.txt";
    ObjectOutputStream writer = new ObjectOutputStream(new FileOutputStream(filename, true));



    if (cuenta.getCode() == codigo) {
          cuenta.setActivated(true);
          writer.writeObject(cuenta);
          writer.close();
        response.sendRedirect("LoginExitoso.jsp");
    } else {
        response.sendRedirect("Login.jsp");
    }
%>
</html>
