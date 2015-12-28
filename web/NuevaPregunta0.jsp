<%-- 
    Document   : NuevaPregunta0
    Created on : Dec 27, 2015, 6:50:56 PM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Getter"%>
<%@page import="org.input.negocio.Carrera"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Nueva pregunta</title>
    </head>
    <body>
        <h1>Agregar Nueva pregunta</h1>
        <h3>Elija la carrera: </h3>
        <form name='elegir' action='NuevaPregunta.jsp'>
            <select name='c'>
                <%

                        for(Carrera cs: Getter.getCarreras()){  %>
                        <option value='<%= cs.getCodigoCarrera()%>'><%=cs.getNombre() %></option>
                       <% }

                %>

            </select>
                <input type='submit' value="Continuar"/>
        </form>
    </body>
</html>
