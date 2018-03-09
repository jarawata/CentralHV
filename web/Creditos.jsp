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
      <h2 class="w3-wide w3-center">SISTEMA INTEGRADO MANEJO DE HOJAS DE VIDA CORPORATIVA ON-LINE</h2>
      <p class="w3-opacity w3-center"><i>CORINGE</i></p><br>

      <ul class="w3-ul w3-border w3-white w3-text-black">
        <li class="w3-padding">Paula Aristizabal <span class="w3-tag w3-red w3-margin-left">Jefe Tesorería - tesoreria@coringe.com</span></li>
        <li class="w3-padding">Marcela Rodriguez <span class="w3-tag w3-red w3-margin-left">Jefe Gestión Humana - ghumana@coringe.com</span></li>
        <li class="w3-padding">Maria Elsy Londoño<span class="w3-tag w3-red w3-margin-left">Jefe Contabilidad - contabilidad@coringe.com</span></li>
        <li class="w3-padding">Diego M. Jiménez  <span class="w3-tag w3-red w3-margin-left">Auxiliar Archivo - archivo@coringe.com</span></li>
        <li class="w3-padding">Jorge E. Velásquez<span class="w3-tag w3-red w3-margin-left">Analista y Desarrollador de Software - gerencia@solucionesmultimedia.tk</span></li>
      </ul>

      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
            <div class="w3-container w3-white">
            <p><b>Programa:  Análisis y Desarrollo de Sistemas de Información</b></p>
            <p>Centro de Diseño Textil de Confección y Moda</p>
            <p class="w3-opacity">Ficha: 1364793</p>
            <p>2017</p>
           </div>
        </div> 
        
        
        <%@include file="Footer.jsp" %>        
    </body>
</html>
