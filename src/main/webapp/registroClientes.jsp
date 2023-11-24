<%-- 
    Document   : RegistroClientes
    Created on : 30/08/2021, 07:58:22 PM
    Author     : ALEXIS
--%>

<!-- jsp para que el usuario (cliente) se registre en chabstore-->
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file = "./Resources/links.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/registroCliente.css"/>    
        <link rel="stylesheet" href="css/sweetalert.css"/>
        <title>Crear cuenta - LastPlay</title>  
        <script src="js/verificarCampos.js"></script>
        <script src="js/sweetalert.min.js"></script>
    </head>
    <body>          
        
        <!-- Alerts -->
        <% 
            if (request.getAttribute("stRegistro") != null){
            
        %>
        <script>
            swal("Listo!", "Te has registrado correctamente, ya puedes entrar a LastPlay", "success")
        </script>
        <% 
            }            
        %>
        <div class="body-registro-cliente" style="min-width: 100%; min-height: 100%">
            <div class="container-column" >
                <a type="button" href="login.jsp" style="font-size: 24px !important; color: #c2a20e !important; padding: 6px 2px !important; ">
                    <span><i class="fas fa-undo">  Ya tienes una cuenta? Da click aquí</i></span>
                </a>
                <form action="UserRegister" method="post" id ="formregistro" >
                    <div class="topleft" align="center">
                        <img src="images/logoLastPlay.png" class="image-reponsive" width="30%" height="20%"
                             style="overflow: hidden ;max-height: 700px; max-width: 400px; min-height: 2rem; min-width: 10rem; padding-bottom: 30px;"  >
                    </div>
                    <h1>Ingresa los datos para crear una cuenta</h1>
                    <h5>Los campos opcionales permiten que puedas interactuar con las personas que conoces aquí</h5>
                    <br>
                    <div id="msg"></div>

                    <!-- Mensajes de Verificación -->
                    <div id="error" class="alert alert-danger ocultar" role="alert">
                        Rellena todos los campos que no son opcionales para poder continuar!
                    </div>

                    <!--Mensaje de verificación -->

                    <br>
                    <div class="left-column" style="min-width: 171px ">
                        <div class="titulo-input">LastPlay ID (Como quieres ser llamado en LastPlay)</div>
                        <input type="text" name="nickname" placeholder="LastPlay ID" id="nick">

                        <div class="titulo-input">Nombre (OPCIONAL)</div>
                        <input type="text" name="nombre" placeholder="Nombre" id= "name">

                        <div class="titulo-input">Apellidos (OPCIONAL)</div>
                        <input type="text" name="apellidos" placeholder="Apellidos" id = "lastname">

                    </div>                    
                    <div class="right-column"  style="min-width: 171px ">
                        <div class="titulo-input">Correo</div>
                        <input type="email" name="correo" placeholder="Correo" id="email">

                        <div class="titulo-input">Celular (OPCIONAL)</div>
                        <input type="number" name="celular" placeholder="Celular" id="cel">

                        <div class="titulo-input">Contraseña</div>
                        <input type="password" name="contrasenia" placeholder="Contraseña" id = "pass">   
                    </div>               
            </div>
            <div class="terminar-btn "> 
                <input type="button"  class="btn-termi btn-danger" value="Crear cuenta" id="btncrearcuenta">
            </div>
        </form>
    </div>
    <%@include file = "./Resources/scripts.jsp" %>                     
</body>
</html>
