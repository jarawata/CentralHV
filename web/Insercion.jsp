<%-- 
    Document   : Insercion
    Created on : 16/02/2018, 11:11:00 AM
    Author     : adsi2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserción en MYSQL desde JAVA</title>
    </head>
    <body>
        <form action="Insercion" method="post">
            ID              :<input type="text" name="ide" required> <br><br>
            USUARIO         :<input type="text" name="usu"><br><br>
            PASSWORD        :<input type="text" name="pwd"><br><br>
            ROL             :<input type="text" name="rol"><br><br>
            HABILITADO      :<input type="text" name="hab"><br><br>
            <input type="submit" value="Insertar Registro">
        </form>
    </body>
</html>
