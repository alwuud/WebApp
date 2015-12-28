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
            <form action='CarreraNueva.jsp' method="POST">
                Codigo: <input type="text" name="codigo" /> <br/><br/>
                Nombre: <input type="text" name="nombre" /> <br/>
                
                <input type="submit"/>

                   
                
            </form>
        </div>
    </body>
</html>
