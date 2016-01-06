<%-- 
    Document   : Desequipar
    Created on : Jan 6, 2016, 2:08:33 PM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Caller"%>
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
    <% 
        Usuario actual=(Usuario) session.getAttribute("theUser");
        boolean equipar=false;
        int indice=0;
        String peticion= request.getParameterNames().nextElement();
        indice= Integer.parseInt(peticion.split("-")[1]);
        
        if(peticion.charAt(0)!='d'){
            equipar=true;
            peticion="Equipando Item";
        }else{
            peticion= "Desequipando Item";
            
        }
       

    
    %>
    <body>
        <nav>
            <a href="Perfil.jsp" >Perfil </a>&nbsp;
         <a href="NuevaPregunta0.jsp" target="_blank">Nueva Pregunta</a>&nbsp;
          <a href="Inventario.jsp">Inventario</a>&nbsp;
          
        </nav>
        <h1><%=peticion%></h1><br/> <br/>
        <form action="EquiparItem.jsp">
            
                
        <%
            if(equipar){%>
                <h3>Seleccione el Item a equipar</h3>
                
                <select name="<%= indice%>" >
                
                <%for(Item i: Getter.getItemUsuarioLibre(actual.getId())){%>
                    <option value="<%= i.getId()%>"> <%= i.getNombre()%></option>
                <%} %>
                </select>
                <input type="Submit" value="Equipar">
                <%
               
                
                
                
                
                
                
            }else{
                boolean exito= Caller.desequiparItem(indice);  
                String resultado="";
                if(exito){
                    resultado= "Se descarto correctamente el item.";
                }else{
                    resultado= "Error al descartar el item";
                }%>
                <h1> <%= resultado%></h1>
                    
            
                
            <%}
            
        %>
            
        </form>
    </body>
</html>
