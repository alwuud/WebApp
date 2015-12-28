<%-- 
    Document   : CursoNuevo
    Created on : Dec 27, 2015, 3:32:18 PM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Caller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            int codigo= Integer.parseInt(request.getParameter("c"));
            String nombre= request.getParameter("n");
            int carrera= Integer.parseInt(request.getParameter("carrera"));
            
            boolean activo= Boolean.parseBoolean(request.getParameter("activo"));
            boolean exito= Caller.addCurso(codigo, nombre, activo, "", carrera);
            
            if(exito){%>
            <h1>Curso Agregado correctamente</h1>
            <h2>Curso: </h2><%=nombre%>
            <h2>Codigo: </h2> <%=codigo%>
            <h2>Carrera: </h2><%= Caller.getCarrera(carrera) %> 
           <% }else{%>
                <h1>Error al Agregar Curso</h1>
                <h3> Intente de nuevo<h3/>

            <%}
            
        
        
        %>
        
    </body>
</html>
