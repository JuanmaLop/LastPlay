<%-- 
    Document   : login
    Created on : 20/11/2023, 2:50:01 p. m.
    Author     : juani
--%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file = "./Resources/links.jsp"%>
<html>
    <head>
        <title>LastPlay - Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/login.css" />
        <link rel="stylesheet" href="css/sweetalert.css"/>
        <script src="js/verificarLogin.js"></script>
        <script src="js/sweetalert.min.js"></script>
    </head>

    <body> 
        <%
            if (request.getAttribute("stLogin") != null) {
        %>
        <script>
            swal("Vaya!", "El correo o la contraseña que has ingresado no son correctos, inténtalo de nuevo", "warning")
        </script>
        <%            }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <div class="container" id="container">
            <div class="panel panel-danger">
                <div class="panel-body text-center">

                    <form action="UserLogin" method="post" id="formlogin">
                        <div class="topleft" align="center">
                            <img src="images/logo2.png" class="image-reponsive" width="50%" height="20%"
                                 style="overflow: hidden ;max-height: 700px; max-width: 400px; min-height: 2rem; min-width: 10rem; padding-bottom: 50px;"  >
                        </div>

                        <!-- Mensajes de Verificación -->
                        <div id="error" class="alert alert-danger ocultar" role="alert">
                            Rellena todos los campos para poder continuar!
                        </div>
                        <!-- Mensajes de Verificación -->

                        <div class=" form-group">
                            <input type="text" class="form-control" name="correo" placeholder="Correo Electrónico"
                                   id="email"><br>
                        </div>
                        <div>
                            <input type="password" name="contrasenia" class="form-control" placeholder="Contraseña"
                                   id="pass"><br>
                        </div>
                        <input type="button" class="btn btn-warning" value="Ingresar" id="btniniciar"
                               style="width: auto; margin-bottom: 1rem">
                        <a class="btn btn-light" href="index.html" style="width: auto; margin-bottom: 1rem">Volver</a>
                        <br>
                    </form>
                </div>
            </div>
        </div>
        <div class="container" id="container">
            <div class="panel panel-danger">
                <div class="panel-heading text-center">
                    <br><br>
                    <h4 style="color: #ffffff">¿Eres nuevo en LastPlay?</h4>
                </div>

                <div class="panel-body text-center">
                    <a class="btn btn-warning" href="registroClientes.jsp">Crea una cuenta</a>
                </div>
            </div>
        </div>
    </body>
    <%@include file = "./Resources/scripts.jsp" %>   
</html>
</html>
