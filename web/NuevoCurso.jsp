<%-- 
    Document   : NuevoCurso
    Created on : Dec 27, 2015, 1:39:42 PM
    Author     : Daniel
--%>

<%@page import="org.input.negocio.Carrera"%>
<%@page import="Comunicacion.Getter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Curso</title>
    </head>
    <body>
        <h3>Agregando Nuevo Curso</h3>
        <form action="CursoNuevo.jsp" method="PHOST">
            Carrera: <select name="carrera">
                <%
                    
                    for(Carrera cs: Getter.getCarreras()){  %>
                    <option value='<%= cs.getCodigoCarrera()%>'><%=cs.getNombre() %></option>
                   <% }
                    
                %>
            </select><br/><br/>
            Codigo: <input type='text' name='c'/><br/><br/>
            Nombre: <input name='n' type='text'/><br/><br/>
            Activo:
            <select name='activo'>
                <option value='True'>Activo</option>
                <option value='False'>Inactivo</option>
            </select>
            
            <input type='submit'>
            
            
            
            
        </form>
    </body>
</html>
