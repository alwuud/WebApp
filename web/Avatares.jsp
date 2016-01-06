<%-- 
    Document   : Avatares
    Created on : Jan 6, 2016, 10:31:40 AM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Getter"%>
<%@page import="org.input.negocio.Avatar"%>
<%@page import="org.input.negocio.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <%
      Usuario actual=(Usuario) session.getAttribute("theUser");
      
      
    %>
    <body>
        <nav>
            <a href="Perfil.jsp" >Perfil </a>&nbsp;
         <a href="NuevaPregunta0.jsp" target="_blank">Nueva Pregunta</a>&nbsp;
          <a href="Inventario.jsp">Inventario</a>&nbsp;
          
        </nav>
        
        <h1>Avatares</h1>
        
         <h2>Lista de Avatares: </h2><br/><br/><br/>
         <form action="Desequipar.jsp">
        <table border="1">
            <tr>
                <td> <h2>Nombre</h2></td>
                <td> <h2>Equipo 1</h2></td>
                <td> <h2>Equipo 2</h2></td>
            </tr>
        <%
                  for(Avatar a: Getter.getAvataresUsuario(actual.getId())){%> 
                  <tr>
                      <td>
                          <%=a.getNombre()%>
                      </td>
                      
                     
                          
                  
                  
                    <td>
                          <% if(a.getUno()!=null){%>
                          <%= a.getUno().getNombre()%> <br/>
                          <input type="submit" name="d-<%=a.getUno().getId()%>" value="Desequipar">
                          <%}else{%>
                          <input type="submit" name="e-<%= a.getId()%>" value="Equipar">
                          
                           <% }
                          %>
                          
                          
                          
                      </td>
                      
                      <td>
                          <% if(a.getDos()!=null){%>
                          <%= a.getDos().getNombre()%> <br/>
                          <input type="submit" name="d-<%=a.getDos().getId()%>" value="Desequipar">
                          <%}else{%>
                          <input type="submit" name="e-<%= a.getId()%>" value="Equipar">
                          
                           <% }
                          %>
                          
                          
                          
                      </td>
                         
                 
                    </tr>
        
        
                  <%}
        %>
         </table>
         </form>
    </body>
</html>
