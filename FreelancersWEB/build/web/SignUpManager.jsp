<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Classes.User"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.FileWriterManager"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>

<%-- validación para obtener el nick de la pagina de registro y asignarlo al bean--%>


<%
    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", "smtp.gmail.com");
    props.put("mail.smtp.port", "587");
        
    String firstname = "";
    String lastname = "";
    String emailAddress = "";
    String password = "";
    String imageURL = "";
<<<<<<< HEAD
    String filename = application.getRealPath("/") + "AccountList.txt";
    ObjectOutputStream writer =  new ObjectOutputStream(new FileOutputStream(filename, true));
=======
    String filename = application.getRealPath("/") + "AccountList.txt"; //bin
    FileWriterManager writer = new FileWriterManager();
>>>>>>> 31bd4c2eea21fc4d99271093608fe0a7cee6b64a

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

<<<<<<< HEAD
    System.out.println(user.toString());
    double numeroRandom = Math.random() * 9999 + 1;;
    int random = (int) numeroRandom;
    Account account = new Account(user, false, random);
    System.out.println(account.toString());
    writer.writeObject(account);
    writer.close();
//    if (writer.loadFile(filename)) {
//        writer.writeFile(account);
//        writer.closeFile();
//    }
//    
            Session conection = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("grupo4lab7@gmail.com", "laboratorio7.");
                    }
                });

        try {

            Message message = new MimeMessage(conection);
            message.setFrom(new InternetAddress("grupo4lab7@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(emailAddress));
            message.setSubject("Verificacion");
            message.setText("Gracias por crear su cuenta, Ingrese el siguiente codigo para su verificacion: " + random);

            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
=======
    Account account = new Account(user, false);
    if (writer.loadFile(filename)) {
        writer.writeFile(account);
        writer.closeFile();
    }
>>>>>>> 31bd4c2eea21fc4d99271093608fe0a7cee6b64a

//    response.sendRedirect("index.jsp");
%>

