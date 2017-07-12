<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="false" errorPage="ErrorPage.jsp"%>
<%
session.invalidate();
response.sendRedirect("Login.jsp");
%>
