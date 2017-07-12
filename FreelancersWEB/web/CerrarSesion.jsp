<%-- 
    Document   : CerrarSesion
    Created on : Jul 12, 2017, 2:24:30 AM
    Author     : alelizmu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.invalidate();
response.sendRedirect("Login.jsp");
%>
