<%-- 
    Document   : editAccount
    Created on : Jul 10, 2017, 1:34:44 AM
    Author     : alelizmu
--%>
<%@page import="Classes.NormalBuilderUser"%>
<%@page import="Classes.ContractorUserBuilder"%>
<%@page import="Classes.DirectorUser"%>
<%@page import="Classes.ContractorUser"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="Classes.User"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.FileWriterManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Account account2 = null;
    Account account = (Account) session.getAttribute("account");
    ArrayList<Account> listaCuentas = (ArrayList) session.getAttribute("accountList");
    ContractorUser contratista = (ContractorUser) account.getUser();

    String description = request.getParameter("description");;
    String imageURL = "NO IMAGE";
    double price;
    String priceS = request.getParameter("price");
    price = Double.parseDouble(priceS);

    String firstname = account.getUser().getName();
    String lastname = account.getUser().getLastName();
    String emailAddress = account.getUser().getEmail();
    String password = account.getUser().getPass();
    String id = contratista.getId();
    String phone = contratista.getPhoneNumber();

    DirectorUser directorUser = new DirectorUser();
    ContractorUserBuilder contractorBuilder = new ContractorUserBuilder();
    
    
//  
    ArrayList <String> array = new ArrayList<String>();
    directorUser.setUserBuilderC(contractorBuilder);
    directorUser.createContratistUser(firstname, lastname, emailAddress, password, imageURL, id, "none", "none", "none",
            phone, description, price,array);
    account2 = new Account(directorUser.getContractor(), true, "1234", "CONTRACTOR");

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
    response.sendRedirect("LoginExitosoContractor.jsp");
%>
