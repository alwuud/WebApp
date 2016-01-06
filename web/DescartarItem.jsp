<%-- 
    Document   : DescartarItem
    Created on : Jan 2, 2016, 4:27:20 PM
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
        int index= Integer.parseInt(request.getParameterNames().nextElement());
        
        boolean exito= Caller.descartarItem(index);
        
        
    %>
    <body>
        <nav>
            <a href="Inventario.jsp">Regresar</a>&nbsp;
        </nav>
         
        <h1>Descartando Item</h1>
        
        <p>
            <% if(exito){%>
                Se descarto correctamente el item.
            <%}else{%>
                Error al descartar el item.
             <%}
            %>
        </p>
        
    </body>
</html>
