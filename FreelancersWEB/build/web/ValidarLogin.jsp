<%-- 
    Document   : Validar
    Created on : Jul 5, 2017, 2:05:59 PM
    Author     : alelizmu
--%>

<%@page import="Classes.ContractorUser"%>
<%@page import="Classes.FileReaderManager"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.EOFException"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Account"%>
<%@page import="Classes.Account"%>


    <%
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        //  ArrayList<Account> accountList = (ArrayList) session.getAttribute("listaCuentas");


        ArrayList<Account> accountList = new ArrayList();
        String filename = application.getRealPath("/") + "AccountList.bin";
        FileReaderManager reader = new FileReaderManager();

        if (reader.openFile(filename)) {
            Account acount = reader.readFile();
            while (acount != null) {
                accountList.add(acount);


                //               System.out.println(acount);


                acount = reader.readFile();

            }
        }
        reader.closeFile();



        //   System.out.println("hola");

        request.getSession().setAttribute("listaCuentas", accountList);
        Account validatingAccount = null;
        for (int idx = 0; idx < accountList.size(); idx++) {
            if (accountList.get(idx).getUser().getEmail().equals(email)) {
                validatingAccount = accountList.get(idx);
            }
        }

        
        if (validatingAccount == null){
            response.sendRedirect("Login.jsp");
        } else {
        if (validatingAccount.getUser().getPass().equals(password) && validatingAccount.getActivated()) {
            request.getSession().setAttribute("account", validatingAccount);
            request.getSession().setAttribute("accountList", accountList);


        String accountType = validatingAccount.getAccountType();

        //  System.out.println("valido esto " + validatingAccount.getActivated());
        if (validatingAccount.getUser().getPass().equals(password) && validatingAccount.getActivated()) {
            request.getSession().setAttribute("account", validatingAccount);
            request.getSession().setAttribute("accountList", accountList);
            if (accountType.equals("CONTRACTOR")) {
                response.sendRedirect("LoginExitosoContractor.jsp");
            } else if (accountType.equals("NORMAL")) {
                response.sendRedirect("NormalUserProfile.jsp");
            } else {
            }


            response.sendRedirect("LoginExitosoContractor.jsp");


        } else {

            if (validatingAccount.getUser().getPass().equals(password) && !validatingAccount.getActivated()) {
                request.getSession().setAttribute("account", validatingAccount);
                request.getSession().setAttribute("accountList", accountList);
                response.sendRedirect("VerificacionCuenta.jsp");
            } else {


                response.sendRedirect("Login.jsp?error=Correo o Contrase�a incorrectas");


                response.sendRedirect("Login.jsp?error=Correo o Contraseña incorrectas");

            }
            }
        }
        }
    %>
