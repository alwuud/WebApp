<%-- 
    Document   : NuevaPregunta
    Created on : Dec 27, 2015, 4:36:19 PM
    Author     : Daniel
--%>

<%@page import="org.input.negocio.Dificultad"%>
<%@page import="Comunicacion.Getter"%>
<%@page import="org.input.negocio.Curso"%>
<%@page import="org.input.negocio.Pregunta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <% 
           
           
           int carrera= Integer.parseInt(request.getParameter("c"));
            
           
            
        
        %>
        
        
        <h2>Formulario Nueva Pregunta</h2>
        <form action='AgregandoPregunta.jsp' method="PHOST">
            Pregunta: &nbsp; <input type="text"   name="p" ><br/><br/>
            
            Tiempo de Respuesta: &nbsp; <br/> Dias: <input type="number" name="dia" min="0" max="7" ><br/><br/>
            Horas:  <input type="number" name="hora" min="0" max="23" value="dias"> <br/><br/>
            Minutos: <input type="number" name="minuto" min="0" max="59" > <br/><br/><br/>
            
            Curso: 
             <select name="curso">
                <%
                    
                     for(Curso cs: Getter.getCurso(carrera)){  %>
                    <option value='<%= cs.getCodigo()  %>'><%= cs.getNombre() %></option>
                   <% }
                    
                %>
            </select> <br/><br/><br/>
            
            Dificultad: 
            
            <select name="dificultad">
                <%
                    
                     for(Dificultad d: Getter.getDificultades()){  %>
                    <option value='<%= d.getId()  %>'><%= d.getNombre() %></option>
                   <% }
                    
                %>
            </select><br/>
            
            Respuestas: (Marque la correcta) <br/><br/>
            <input type="text" name="r1"> <input type="radio" name="correcta" value="0"> <br/><br/>
            <input type="text" name="r2"> <input type="radio" name="correcta" value="1"> <br/><br/>
            <input type="text" name="r3"> <input type="radio" name="correcta" value="2"> <br/><br/>
            
            <input type="submit"/>
            
           
            
        </form>
    </body>
</html>
