<%-- 
    Document   : PagLogin
    Created on : 9/02/2018, 07:29:32 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>C.H.V.O.L</title>
        <link rel="icon" href="coringe.ico" type="image/x-icon">
        <link rel="shortcut icon" href="coringe.ico" type="image/x-icon"> 
        <link href="CSS/EstiloCentralHV.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bien.js"></script>
    </head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <body>

        <%
            HttpSession sesion1 = request.getSession();
            String usua1 = (String) sesion1.getAttribute("rolhv");
            String rol1 = (String) sesion1.getAttribute("rolhv");
        %>

        <% if (rol1 == null) {%> 
        <%@include file="Banner.jsp" %>
        <nav class="navbar navbar-inverse bg-primary" id="barra" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img src="LogoSimbolo.gif" width="27" height="27">
                    </a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Inicio</a></li>
                    <li><a href="DatosUsuario">Registro Usuario</a></li>
                    <li><a href="#">Acerca de</a></li> 
                    <li><a href="#">Nosotros</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sesión Inactiva</a></li>
                </ul>
            </div>
        </nav>

    <center>
        <fieldset style="width:30%"> <legend> Datos Login </legend>
            <form action="Autenticacion" method="post">
                <p>
                    <label for="usr">Usuario/Email:</label>
                    <input type="text" name="usr">
                <p>
                    <label for="pwd">Contraseña   :</label>
                    <input type="password" name="pwd">
                <p>
                    <input type="submit" value="Logearse">
            </form>
        </fieldset>
    </center>
    <%} else {%>
    <%@include file ="BarraNav.jsp" %> 
    <%}%>
    <%@include file="Footer.jsp" %>    
</body>
</html>
