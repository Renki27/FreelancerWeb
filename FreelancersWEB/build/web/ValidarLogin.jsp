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



<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    //  ArrayList<Account> accountList = (ArrayList) session.getAttribute("listaCuentas");
    ArrayList<Account> accountList = new ArrayList();
    String filename = application.getRealPath("/") + "AccountList.bin";
    FileReaderManager reader = new FileReaderManager();

    if (reader.openFile(filename)) {
            Account account = reader.readFile();
            while (true) {
                if (account != null) {
                    accountList.add(account);
                    account = reader.readFile();
                } else {
                    break;
                }
            }
        }
        reader.closeFile();
  


    //   System.out.println("hola");
    // request.getSession().setAttribute("accountList", accountList);
    Account validatingAccount = null;
    for (int idx = 0; idx < accountList.size(); idx++) {
        if (accountList.get(idx).getUser().getEmail().equals(email)) {
            validatingAccount = accountList.get(idx);
        }
    }
    System.out.println("mi cuenta es " + validatingAccount.getUser().getName());
    if (validatingAccount == null) {
        response.sendRedirect("Login.jsp?error=Correo o Contraseña incorrectas");
    } else {
        String accountType = validatingAccount.getAccountType();

        //  System.out.println("valido esto " + validatingAccount.getActivated());
        if (validatingAccount.getUser().getPass().equals(password) && validatingAccount.getActivated()) {
            request.getSession().setAttribute("account", validatingAccount);
            request.getSession().setAttribute("accountList", accountList);
            if (accountType.equals("CONTRACTOR")) {
                response.sendRedirect("LoginExitosoContractor.jsp");
            } else if (accountType.equals("NORMAL")) {
                response.sendRedirect("NormalUserProfile.jsp");
            }

        } else {

            if (validatingAccount.getUser().getPass().equals(password) && !validatingAccount.getActivated()) {
                request.getSession().setAttribute("account", validatingAccount);
                request.getSession().setAttribute("accountList", accountList);
                System.out.println("C mamut");
                response.sendRedirect("VerificacionCuenta.jsp");
            }
        }
    }

%>
