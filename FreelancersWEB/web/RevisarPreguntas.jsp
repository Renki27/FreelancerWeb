<%-- 
    Document   : RevisarPreguntas
    Created on : Jul 7, 2017, 7:46:37 PM
    Author     : alelizmu
--%>
<%@page import="java.util.ArrayList"%>
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

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    String email = request.getParameter("email");
    String pregunta1 = request.getParameter("pregunta1");
    String pregunta2 = request.getParameter("pregunta2");
    String pregunta3 = request.getParameter("pregunta3");
    String pregunta4 = request.getParameter("pregunta4");
    String pregunta5 = request.getParameter("pregunta5");

    String mensaje1 = "nada";
    String mensaje2 = pregunta1 + " " + pregunta2 + " " + pregunta3 + " " + pregunta4 + " " + pregunta5;

    ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("listaCuentas");
               String filename = application.getRealPath("/") + "AccountList.bin";
                FileWriterManager writer = new FileWriterManager();
    for (int i = 0; i < listaCuentas.size(); i++) {
        if (listaCuentas.get(i).getUser().getEmail().equals(email)) {

            if (listaCuentas.get(i).getPregunta().toString().equals(mensaje2)) {
                mensaje1 = listaCuentas.get(i).getPregunta().toString();

                double numeroRandom = Math.random() * 9999 + 1;;
                int random = (int) numeroRandom;
                listaCuentas.get(i).getUser().setPass(random + "");
                listaCuentas.set(i, listaCuentas.get(i));

                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

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
                            InternetAddress.parse(email));
                    message.setSubject("Contraseña cambiada");
                    message.setText("Su nueva contraseña es " + random);

                    Transport.send(message);

                } catch (MessagingException e) {
                    throw new RuntimeException(e);
                }
                

            }
            
                                    if (writer.loadFileReplace(filename)) {
            for (int g = 0; g < listaCuentas.size(); g++) {
                writer.writeFile(listaCuentas.get(g));
            }
            writer.closeFile();
        }

            break;
        }
    }

    response.sendRedirect("Login.jsp");
%>


