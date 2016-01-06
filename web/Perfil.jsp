<%-- 
    Document   : Perfil
    Created on : Dec 30, 2015, 6:26:10 AM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Getter"%>
<%@page import="org.input.negocio.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
      Usuario u=(Usuario) session.getAttribute("theUser");
      
      
    %>
    <body>
       
         
         
        <h1>Perfil de <%=  u.getUser()%></h1>
        
        <h2>Correo Electronico:  <%= u.getEmail()%></h2>
        <h2>Experiencia Acumulada: <%= u.getExp()%></h2>
        <form action="ChangePass.jsp" method="PHOST">
            <h2>Contrasena: <input type="text" name="pass" value="<%= u.getPassword()%>"></h2>
            <input type="submit" value="Cambiar Password">
                
            
        </form>
        
        
        
        
      
        
        
        
        
                
     
            
            
          
        <h1></h1>
    </body>
</html>
