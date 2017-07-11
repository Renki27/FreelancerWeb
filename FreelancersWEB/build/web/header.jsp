<%--<%@page import="Beans.User"%>--%>

<div id="header">
    <%--
    <jsp:useBean id="temp" scope="session" class="Beans.User" />
    <%

        if (temp.getNick() == null) {
    %>
    --%>

    <nav id="navButtons"><!-- botones de navegación-->
        <ul ><!--listas sin orden -->
            <li><a href="index.jsp">Home Page</a></li><!--Elementos de la lista, tiene un link para mandar a otra pagina-->
            <li><a href="Login.jsp">LOGIN</a></li>
        </ul>
    </nav>

    <%--  <%} else {%>
      <nav id="navButtons"><!-- botones de navegación-->
          <ul><!--listas sin orden -->
              <li><a href="index.jsp">Home Page</a></li><!--Elementos de la lista, tiene un link para mandar a otra pagina-->
              <li><a href="instructions.jsp">Instructions</a></li>
              <li><a href="characters.jsp">Characters</a></li>
              <li><a href="">Comics</a></li>
              <li><a href="">Profile</a></li>
          </ul>
      </nav>

    <%}
    %>
    --%>
</div>