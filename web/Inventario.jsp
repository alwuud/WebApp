<%-- 
    Document   : Inventario
    Created on : Jan 2, 2016, 3:32:24 PM
    Author     : Daniel
--%>

<%@page import="org.input.negocio.Avatar"%>
<%@page import="org.input.negocio.Item"%>
<%@page import="Comunicacion.Getter"%>
<%@page import="org.input.negocio.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <% Usuario actual= (Usuario) session.getAttribute("theUser");

        
    
    
    %>
        
    
    <body>
        <h1>Inventario de <%= actual.getNombre()%></h1>
        <h2>Lista de Items: </h2>
        <form action="DescartarItem.jsp" method="PHOST">
        <table border="1">
        <%
                  for(Item i: Getter.getItemUsuario(actual.getId())){%> 
                  <tr>
                      <td>
                          <%=i.getNombre()%>
                      </td>
                      <td>
                          <%=i.getDescripcion()%>
                      </td>
                      <td>
                         <input type="submit" name="<%= i.getId()%>"  value='Descartar'>
                      </td>
                      
                          
                  </tr>
                  
                      
                 
                    <h1></h1>
        
        
                  <%}
        %>
         </table>
         </form>
         <h2>Lista de Avatares: </h2>
        <table border="1">
        <%
                  for(Avatar a: Getter.getAvataresUsuario(actual.getId())){%> 
                  <tr>
                      <td>
                          <%=a.getNombre()%>
                      </td>
                      
                          
                  </tr>
                  
                      
                 
                    
        
        
                  <%}
        %>
         </table>
    </body>
</html>
