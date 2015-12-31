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
    <body>
        
        <%
          
        session = request.getSession(true);  
        session.setAttribute("nombre", "Pedro");

            
        %>
        
        
        <%= session.getAttribute("nombre") %>
                
     
            
            
          
        <h1></h1>
    </body>
</html>
