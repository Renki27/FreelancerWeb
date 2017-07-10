<%@page import="Classes.CodeGenerator"%>
<%@page import="Classes.NormalBuilderUser"%>
<%@page import="Classes.ContractorUserBuilder"%>
<%@page import="Classes.DirectorUser"%>
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
    String imageURL = "NO IMAGE";
    String id = "";
    String phone = "";
    double price = 0;
    String description = "";
    String filename = application.getRealPath("/") + "AccountList.bin";
    String accountType = "contractor";

    Account account = null;
    FileWriterManager writer = new FileWriterManager();
    DirectorUser directorUser = new DirectorUser();
    ContractorUserBuilder contractorBuilder = new ContractorUserBuilder();
    NormalBuilderUser normalBuilder = new NormalBuilderUser();
    CodeGenerator codeGenerator = new CodeGenerator();

//    if (request.getParameter("radio-selector").equals("normal")) {
//        accountType = "normal";
//    }
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

    if (!"".equals(request.getParameter("image-src"))) {
        imageURL = request.getParameter("image-src");
    }

    if (!"".equals(request.getParameter("phone"))) {
        phone = request.getParameter("phone");
    }

    if (!"".equals(request.getParameter("ced-id"))) {
        id = request.getParameter("ced-id");
    }

    if (!"".equals(request.getParameter("price"))) {
        String priceS = request.getParameter("price");
        priceS = priceS.substring(1);
        price = Double.parseDouble(priceS);
    }

    if (!"".equals(request.getParameter("description"))) {
        description = request.getParameter("description");
    }

    String verificationCode = codeGenerator.generateRandomChars();
    if (accountType.equals("contractor")) {
        directorUser.setUserBuilderC(contractorBuilder);
        directorUser.createContratistUser(firstname, lastname, emailAddress, password, imageURL, id, "none", "none", "none",
        phone, description, price);
        account = new Account(directorUser.getContractor(), false, verificationCode, "CONTRACTOR");
        System.out.println(account.toString());
    } else if (accountType.equals("normal")) {
        directorUser.setUserBuilder(normalBuilder);
        directorUser.createNormalUser(firstname, lastname, emailAddress, password, imageURL);
        account = new Account(directorUser.getNormalUser(), false, verificationCode, "NORMAL");
        System.out.println(account.toString());
    }

    if (writer.loadFile(filename)) {
        writer.writeFile(account);
        writer.closeFile();
    }

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
        message.setSubject("Account Verification");
        message.setText("Thanks for creating your account, \n To activate your account please use this code:  " + verificationCode);

        Transport.send(message);

    } catch (MessagingException e) {
        throw new RuntimeException(e);
    }

    response.sendRedirect(
            "Login.jsp");
%>

