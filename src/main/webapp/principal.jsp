<%-- 
    Document   : principal
    Created on : 22/11/2023, 8:05:44 p. m.
    Author     : juani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Session/UserSession.jsp"%>
<%@include  file = "./Resources/links.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LastPlay</title>
        <script src="https://kit.fontawesome.com/5aa10a833a.js" crossorigin="anonymous"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/navbar.css"/>
        <link rel="stylesheet" href="css/principal.css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><!-- comment -->
    </head>
    <body>
        <%@ include file = "Navbar/navbar.jsp"%>
        <aside class="slide-principal">
            <div class="functitulo">
                <h1>Videojuegos</h1>
            </div>
            <ul>
                <li><form action='GetVideogame' method='post'><button name="code" value="1">The Last of Us</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="2">Red Dead Redemption 2</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="3">God of War 3</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="4">Fornite</button></form></li> 
                <li><form action='GetVideogame' method='post'><button name="code" value="5">League of Legends</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="6">Genshin Impact</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="7">Resident Evil 8</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="8">Elden Ring</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="9">Persona 5</button></form></li>
                <li><form action='GetVideogame' method='post'><button name="code" value="10">Marvel's Spider-Man</button></form></li>
            </ul>
        </aside>
        
        <br>
        <div class="topleft" align="center">
            <img src="images/logo2.png" class="image-reponsive" width="30%" height="40%"
                 style="overflow: hidden ;max-height: 700px; max-width: 400px; min-height: 2rem; min-width: 10rem; padding-bottom: 30px;"  >
        </div>
        <h1 class = "welcome">Bienvenido a LastPlay!</h1>
        <h3 class = "welcome2">Elige un videojuego para adentrarte a esta experiencia!</h5>
</body>
</html>
