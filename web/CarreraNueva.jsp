<%-- 
    Document   : CarreraNueva
    Created on : Dec 27, 2015, 4:28:02 PM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Caller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva carrera agregada</title>
    </head>
    <body>
        <%
                        int c= Integer.parseInt(request.getParameter("codigo"));
                        String n= request.getParameter("nombre");
                    

                        if(Caller.nuevaCarrera(c,n)){%>
                        <h1>Carrera Agregada con Exito</h1>
                        <%} else{%>
                        <h1>Error al agregar la carrera</h1>
                        <%}
        %>
        
    </body>
</html>
