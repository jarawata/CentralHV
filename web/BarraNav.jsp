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
        <%@include file="Banner.jsp" %>
        <title>Sesión Activa</title>
        <%
            HttpSession sesion = request.getSession();
            String usua = (String) sesion.getAttribute("usuhv");
            String rol = (String) sesion.getAttribute("rolhv");
        %>
        <nav class="navbar navbar-inverse bg-primary" id="barra" >
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img src="LogoSimbolo.gif" width="27" height="27" alt="">
                    </a>
                </div>
                <ul class="nav navbar-nav">
                    <%
                        System.out.println(usua);
                        System.out.println(rol);
                    %>
                    <li class="active"><a href="#">Inicio</a></li>

                    <% if (usua.equals(null)) {%> 
                        <li class="active"><a href="#">Registro Usuario</a></li>
                        
                    <% } else { %>
                        <li class="active"><a href="#">Modificar Perfil</a></li>
                    <% } %>
                        <% if ((rol.equals("admin")) || (rol.equals("empleado")) || (rol.equals("cliente"))) {%> 
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Hoja Vida<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Nueva</a></li>
                            <li><a href="#">Consultar</a></li>
                        </ul>
                    </li>
                    <% } %>    
                    
<!--
                    <% if ((rol.equals("admin"))) {%> 
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Control Usuarios<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Registrar</a></li>
                                <% if ((rol.equals("admin")) || (rol.equals("empleado"))) {%> 
                            <li><a href="#">Consultar</a></li>
                                <% } %>    
                        </ul>
                    </li>
                    <% } %>       
-->

                    <% if ((rol.equals("admin"))) {%> 
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Reportes<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Listar">Listado de Aspirantes / Empleados (consulta 1)</a></li>
                            <li><a href="#">Listado de Empleados por Área</a></li>
                            <li><a href="#">Listado de Empleados por Sede</a></li>
                            <li><a href="#">Listado de Aspirantes / Empleados por Cargo</a></li>                            
                            <li><a href="#">Listado de Aspirantes / Empleados por Profesión</a></li>
                        </ul>
                    </li>
                    <% }%>       
                    <% if ((rol.equals("admin"))) {%> 
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Bitácora<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="Listar">Consultar</a></li>
                        </ul>
                    </li>
                    <% }%>       
                    <li><a href="#">Nosotros</a></li>
                    <li><a href="#">Contáctenos</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Que tal <%=usua%> (<%=rol%>)</a></li>
                    <li><a href="CerrarSesion"><span class="glyphicon glyphicon-log-out"></span> Salir</a></li>
                </ul>
            </div>
        </nav>
    </body>
</html>
