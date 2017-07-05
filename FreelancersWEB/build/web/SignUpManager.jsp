<%@page import="javax.swing.JOptionPane"%>
<%@page import="Classes.User"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.FileWriterManager"%>


<%-- validación para obtener el nick de la pagina de registro y asignarlo al bean--%>
<%

    String firstname = "";
    String lastname = "";
    String emailAddress = "";
    String password = "";
    String imageURL = "";
    String filename = application.getRealPath("/") + "AccountList.txt"; //bin
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
    if (!"".equals(request.getParameter("imgT"))) {
        imageURL = request.getParameter("imgT");
    }

    User user = new User(firstname, lastname, emailAddress, password, imageURL);

    Account account = new Account(user, false);
    if (writer.loadFile(filename)) {
        writer.writeFile(account);
        writer.closeFile();
    }

//    response.sendRedirect("index.jsp");
%>

