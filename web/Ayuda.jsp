<%-- 
    Document   : RegistrarEmpleado
    Created on : 12/12/2017, 12:01:31 PM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@include file="Banner.jsp" %>
        <%@include file="NavBar.jsp" %>
    <div class="w3-white" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">  
<h2 class="w3-wide">MODULO HOJA DE VIDA</h2>
<p class="w3-justify">Este módulo consta de 6 sub-módulos que contienen la información de el aspirante o empleado de CORINGE.
Los submódulos son:

Datos básicos:   Información básica del aspirante o empleado.
Perfil profesional:  Perfil laboral, descripción de las competencias para las que está capacitado.
Estudios realizados:  Todos los estudios de Media Vocacional, Pregrados y Posgrados, en orden cronológico.
Experiencia laboral:  Datos de los empleos de los 5 últimos años, en orden cronológico desde el mas reciente hacia atrás.
Referencias personales:  Información básica de personas que conozcan bien al aspirante/empleado.
Referencias Comerciales: Información básica de entidades con las que haya establecido relacion economica y que avalen su comportamiento financiero</p>        
        
<h2 class="w3-wide">MODULO USUARIOS</h2>
<p class="w3-justify">Este módulo permite el manejo de los datos del aspirante al registrarse en el sistema
Permite al seleccionador de personar hacer la búsqueda de los aspirantes por perfiles requeridos.
Adicionalmente.
Manejo de la bitácora de las hojas de vida.</p>        

        <%@include file="Footer.jsp" %>        
        
    </body>
</html>
