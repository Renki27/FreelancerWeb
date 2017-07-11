<%-- 
    Document   : Search
    Created on : 11/07/2017, 11:26:42 AM
    Author     : Erik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<HTML>
    <HEAD>
        <TITLE>Work Form</TITLE>
    </HEAD>
    <BODY>
        <H1 ALIGN=CENTER> Work Form  </H1>
        <FORM>
            <B>WORK AREA:</B>
            <SELECT>
                <OPTION VALUE="Fontaneria">Fontaneria
                <OPTION VALUE="Mudanzas">Mudanzas
                <OPTION VALUE="Trabajos eléctricos">Trabajos eléctricos
                <OPTION VALUE="Limpieza"> Limpieza
                <OPTION VALUE="Mandados">Mandados
                <OPTION VALUE="Varias">Reparaciones Varias
            </SELECT>
            <BR>
            <BR>
            <B> PROVINCE: </B>
            <INPUT TYPE="radio" NAME="province"
                   VALUE="Alajuela">Alajuela
            <INPUT TYPE="radio" NAME="province"
                   VALUE="Cartago">Cartago
            <INPUT TYPE="radio" NAME="province"
                   VALUE="Puntarenas">Puntarenas
            <INPUT TYPE="radio" NAME="province"
                   VALUE="Guanacaste">Guanacaste
            <INPUT TYPE="radio" NAME="province"
                   VALUE="Limon">Limon
            <INPUT TYPE="radio" NAME="province"
                   VALUE="Heredia">Heredia
            <INPUT TYPE="radio" NAME="province"
                   VALUE="San Jose">San Jose
            <BR>
            <BR>
            <B> CANTONES: </B>
            <INPUT TYPE="radio" NAME=""
                   VALUE="Naranjo">Naranjo
            <INPUT TYPE="radio" NAME="Size"
                   VALUE="Zarcero">Zarcero
            <INPUT TYPE="radio" NAME="Size"
                   VALUE="Palmares">Palmares
            <INPUT TYPE="radio" NAME="Size"
                   VALUE="Guapiles">Guapiles
            <INPUT TYPE="radio" NAME="Size"
                   VALUE="Moin">Moin
            <INPUT TYPE="radio" NAME="Size"
                   <BR>
            <BR>
            <BR>
            Date of work: <INPUT
                TYPE="text"
                NAME="Date of work"
                VALUE="" SIZE=20>
            <BR>
            <BR>
            Hour of work: <INPUT
                TYPE="text"
                NAME="Hour of work"
                VALUE="" SIZE=20>
            <BR>
            <BR>
            <BR>
            <B>Work Description</B>
            <BR>
            <TEXTAREA NAME="Work Description" ROWS=10
                      COLS=50 WRAP>
            </TEXTAREA>
            <BR>
            <BR>
            <BR>
            <button>
                <a href="List.jsp">Search</a>
            </button>
        </FORM>
    </BODY>
</HTML>
