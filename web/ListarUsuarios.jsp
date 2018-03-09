<%--
Document   : ListarUsuarios
    Created on : 23/02/2018, 12:48:56 PM
    Author     : adsi2
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.UsuariosHV"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Usuarios C.H.V.O.L</title>
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bien.js"></script>
    </head>
    <body>
        <%  HttpSession cons = request.getSession();
            ArrayList<UsuariosHV> list = (ArrayList) cons.getAttribute("lista");
        %>
        <%@include file ="BarraNav.jsp" %>
    <center>
        <table style="width:60%" class="table table-condensed">
            <thead>
            <th>Id</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Telefono</th>
            <th>Dirección</th>
            <th>Fecha</th>
            <th>Email</th>
            </thead>
            <tbody>
                <% for (int i = 0; i < list.size(); i++) {%>
                <tr>
                    <td><%= ((UsuariosHV) list.get(i)).getId()%></td>
                    <td><%= ((UsuariosHV) list.get(i)).getNombres()%></td>
                    <td><%= ((UsuariosHV) list.get(i)).getApellidos()%></td>
                    <td><%= ((UsuariosHV) list.get(i)).getTelefono()%></td>
                    <td><%= ((UsuariosHV) list.get(i)).getDireccion()%></td>
                    <td><%= ((UsuariosHV) list.get(i)).getFecha()%></td>
                    <td><%= ((UsuariosHV) list.get(i)).getEmail()%></td>
                    <td><a href=""> <span class="glyphicon glyphicon-eye-open" /> </a> </td>
                    <td><a href=""> <span class="glyphicon glyphicon-pencil" /> </a> </td>
                    <td><a href=""> <span class="glyphicon glyphicon-remove" /> </a> </td>
                </tr>
                <%}%>
            </tbody>
        </table>
    </center>
            <%@include file ="Footer.jsp" %>
</body>
</html>