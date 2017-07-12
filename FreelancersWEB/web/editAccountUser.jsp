<%-- 
    Document   : editAccountUser
    Created on : Jul 12, 2017, 1:59:04 AM
    Author     : alelizmu
--%>

<%@page import="Classes.FileWriterManager"%>
<%@page import="Classes.NormalBuilderUser"%>
<%@page import="Classes.ContractorUserBuilder"%>
<%@page import="Classes.DirectorUser"%>
<%@page import="Classes.NormalUser"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="false" errorPage="ErrorPage.jsp"%>
<%
    Account account2 = null;
    Account account = (Account) session.getAttribute("account");
    ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");

    String imageURL = "NO IMAGE";
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String emailAddress = account.getUser().getEmail();
    String password = account.getUser().getPass();

    
    
    DirectorUser directorUser = new DirectorUser();
    NormalBuilderUser normalBuilder = new NormalBuilderUser();
       
    directorUser.setUserBuilder(normalBuilder);
    directorUser.createNormalUser(firstname, lastname, emailAddress, password, imageURL);
    account2 = new Account(directorUser.getNormalUser(), true, "1234", "NORMAL");

    String filename = application.getRealPath("/") + "AccountList.bin";
    FileWriterManager writer = new FileWriterManager();

    for (int i = 0; i < listaCuentas.size(); i++) {
        if (listaCuentas.get(i).getUser().getEmail().equals(emailAddress)) {
            listaCuentas.set(i, account2);
        }
        if (writer.loadFileReplace(filename)) {
            for (int g = 0; g < listaCuentas.size(); g++) {
                writer.writeFile(listaCuentas.get(g));
            }
            writer.closeFile();
        }
        break;
    } 
    //request.getSession().setAttribute("accountList", accountList);
    response.sendRedirect("NormalUserProfile.jsp");
%>