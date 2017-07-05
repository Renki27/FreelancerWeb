<%@page import="Classes.User"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.FileWriterManager"%>
<%@page pageEncoding="UTF-8" language="java" isErrorPage="false" errorPage="index.jsp"%>


<jsp:useBean id="user" scope="session" type="User" />


<%-- validación para obtener el nick de la pagina de registro y asignarlo al bean--%>
<%
    String firstname = "";
    String lastname = "";
    String emailAddress = "";
    String password = "";
    String imageURL = "";
    String filename = "accounts.bin";
    FileWriterManager writer = new FileWriterManager();

    if (!"".equals(request.getParameter("firstname"))) {
        firstname = request.getParameter("firstname");
    }

    if (!"".equals(request.getParameter("lastname"))) {
        lastname = request.getParameter("lastname");
    }

    if (!"".equals(request.getParameter("emailAddress"))) {
        emailAddress = request.getParameter("emailAddress");
    }

    if (!"".equals(request.getParameter("password"))) {
        password = request.getParameter("password");
    }

    if (!"".equals(request.getParameter("password"))) {
        password = request.getParameter("password");
    }
    if (!"".equals(request.getParameter("upload-photo"))) {
        imageURL = request.getParameter("upload-photo");
    }

    User user = new User(firstname, lastname, emailAddress, password, imageURL);
    Account account = new Account(user, false);
    writer.loadFile(filename);
    writer.writeFile(account);
    writer.closeFile();
    response.sendRedirect("index.jsp");
%>

