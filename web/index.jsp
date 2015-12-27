<%-- 
    Document   : FormCarrera
    Created on : Dec 27, 2015, 8:29:59 AM
    Author     : Daniel
--%>

<%@page import="Comunicacion.Caller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Carrera</title>
    </head>
    <body>
        <div name="formulario">
            <form method="POST">
                Codigo: <input type="text" name="codigo" value="80"/> <br/><br/>
                Nombre: <input type="text" name="nombre" value="Civil"/> <br/>
                
                <input type="submit"/>

                   
                <% 
                    
                    if(request.getParameter("codigo")!= null && (request.getParameter("nombre"))!=null){
                        int c= Integer.parseInt(request.getParameter("codigo"));
                        String n= request.getParameter("nombre");
                    

                        if(Caller.nuevaCarrera(c,n)){
                            System.out.println("It works");
                        }
                    }
                   
                    
                    
                
                
                %> 
                
            </form>
        </div>
    </body>
</html>
