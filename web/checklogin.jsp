<%-- 
    Document   : checklogin
    Created on : Dec 30, 2015, 4:34:48 AM
    Author     : Daniel
--%>

<%@page import="org.input.negocio.Usuario"%>
<%@page import="Comunicacion.Getter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   String name = request.getParameter( "u" );
   
   Usuario actual=null;
   String rol="";
   actual= Getter.checkPassword(request.getParameter("u"), request.getParameter("p"));
   session.setAttribute( "theUser", actual );     

           switch(actual.getRol()){
               case 1:
                   rol= "administrador";
                   
                   break;
               case 2:
                   rol= "moderador";
                   break;
               case 3:
                   rol="jugador";
                  
                  break;
                   
             
                   
           }
           
           session.setAttribute("soy", rol);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
       
        
        <nav>
            <a href="Perfil.jsp" >Perfil </a>&nbsp;
         <a href="NuevaPregunta0.jsp" target="_blank">Nueva Pregunta</a>&nbsp;
          <a href="Inventario.jsp">Inventario</a>&nbsp;
          <a href="Avatares.jsp">Avatares</a>
        </nav>
      
         
        <h1> Bienvenido <%=actual.getUser()%></h1>
        <h3> Usted es &nbsp; <%= rol%></h3>
    </body>
</html>
