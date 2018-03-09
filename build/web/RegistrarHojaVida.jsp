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

    <% int a = 1; %>
    <center>
        <iframe src="HojaVida<%=a%>.jsp" width="1500" height="500" name="iframe_1"> </iframe>
         <p><a href="HojaVida1.jsp" target="iframe_1">Anterior</a></p>  <p><a href="HojaVida<%=a++%>.jsp" target="iframe_1">Siguiente</a></p> </center>


     <% System.out.println("valor de a: "+a); %>
        <%@include file="Footer.jsp" %>
    </body>
</html>
