<%-- 
    Document   : ChangePass
    Created on : Jan 2, 2016, 1:16:28 PM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Caller"%>
<%@page import="org.input.negocio.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
       Usuario actual=(Usuario)session.getAttribute("theUser");
       String nueva= request.getParameter("pass");
       boolean exito= Caller.changePassword(actual.getId(), nueva);
       
    %>
    <body>
        <h1>Cambio de password</h1>
        <%if(exito){
            %><h2>Cambiada correctamente</h2>
        <%}else{%>
        <h2>Error al cambiar contrasena</h2>

        <%}

            
        %>
    </body>
</html>
