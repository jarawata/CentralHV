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
        <title>Datos Personales</title>
    </head>
    <body>
    <center>
        <fieldset style="width:30%"> <legend> Formulario </legend>
            <form  action="Insercion2" method="POST"> 
                <p>
                    <label for="ide">Id:</label>
                    <input type="text" id="ide" name="ide" pattern="[0-9]" placeholder="Introducir Id" value="" required/>
                <p>
                    <label for="nom">Nombres:</label>
                    <input type="text" id="nom" name="nom" pattern="[a-zA-Z ]+" placeholder="Introducir Nombres" value="" required/>
                <p>
                    <label for="ape">Apellidos:</label>
                    <input type="text" id="ape" name="ape" pattern="[a-zA-Z ]+" placeholder="Introducir Apellidos" value="" required/>
                <p>
                    <label for="tel">Teléfono:</label> 
                    <input type="tel" id="tel" name="tele" pattern="[0-9]{7}" placeholder="Max 7 números sin '-'">
                <p>
                    <label for="dir">Dirección:</label>
                    <input type="text" id="dir" name="dir" placeholder="Ingresar Dirección" value=""/>
                <p>
                    <label for="fec">Fecha Nac:</label>
                    <input type="date" id="fec" name="fec" required/>
                <p>
                    <label for="ema">Usuario(email):</label>
                    <input  type="email" id="ema" name="ema" placeholder="Ingrese email valido" required/>
                <p>
                    <label for="pas">Contraseña:</label>
                    <input  type="password" id="pas" name="pas" placeholder="Máximo 4 caracteres" required/>
                <p>
                    <label for="pas2">Confirmar contraseña:</label>
                    <input  type="password" id="pas2" name="pas2" placeholder="Máximo 4 caracteres" onforminput="setCustomValidity(value != pas.value ? 'Las contraseñas deben ser iguales.' : '')" required/>
                <p>
                    <input type="submit" name="ins_reg" value="Insertar Registro">
            </form> 
        </fieldset>
    </center>
</body>
</html>

