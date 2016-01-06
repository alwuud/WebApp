<%-- 
    Document   : EquiparItem.
    Created on : Jan 6, 2016, 4:11:31 PM
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
    <%
        String parametro=request.getParameterNames().nextElement();
        
        int avatar= Integer.parseInt(parametro);
        int item= Integer.parseInt(request.getParameter(parametro));
        boolean exito=  Caller.equiparItem(avatar, item);
        String resultado="";
        if(exito){
            resultado= "Se equipo Correctamente el Item";
        }else{
            resultado= "Error al equipar el Item";
        }
        
        
    %>
        
   
    <body>
        <nav>
            <a href="Perfil.jsp" >Perfil </a>&nbsp;
         <a href="NuevaPregunta0.jsp" target="_blank">Nueva Pregunta</a>&nbsp;
          <a href="Inventario.jsp">Inventario</a>&nbsp;
          
          <br/>
          <br/>
          <br/>
          <h1> <%=resultado%></h1>
          
        </nav>
    </body>
</html>
