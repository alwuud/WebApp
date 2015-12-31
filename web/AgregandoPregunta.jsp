<%-- 
    Document   : AgregandoPregunta.jsp
    Created on : Dec 30, 2015, 5:52:13 AM
    Author     : Daniel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Comunicacion.Caller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            
            String p= request.getParameter("p");
            int dia= Integer.parseInt(request.getParameter("dia"));
            int hora= Integer.parseInt(request.getParameter("hora"));
            int minuto= Integer.parseInt(request.getParameter("minuto"));
            String tiempo= ((24*dia)+hora)+ ":" + minuto;
            int curso= Integer.parseInt(request.getParameter("curso"));
            int dificultad= Integer.parseInt(request.getParameter("dificultad"));
            int correcta= Integer.parseInt(request.getParameter("correcta"));
            ArrayList<String> respuestas= new ArrayList<String>();
            
            
            for(int i=0; i<3; i++){
                if(i==correcta)
                    respuestas.add( "1~" + request.getParameter("r"+(i+1)));
                else
                    respuestas.add("0~" + request.getParameter("r"+(i+1)));
            }
            
            Caller.addPregunta(p, tiempo, curso, dificultad, respuestas);
            
            
        
        
        %>
    </body>
</html>
