<%-- 
    Document   : videogameSection
    Created on : 23/11/2023, 6:21:36 p. m.
    Author     : juani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Videogame"%>
<%@page import="Model.Publication"%>
<%@page import="java.util.List"%>
<%@include file = "Session/UserSession.jsp"%>
<%@include  file = "./Resources/links.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/5aa10a833a.js" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/navbar.css"/>
        <link rel="stylesheet" href="css/gameSection.css"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><!-- comment -->
    </head>
    <body>
        <%@ include file = "Navbar/navbar.jsp"%>
            <aside class="slide-principal">
                <div class="functitulo">
                    <h1>Detalles Videojuego</h1>
                </div>
                <%
                    Videogame game = (Videogame) request.getAttribute("Videogame");
                    out.println("<div class = 'Videogame'>");
                    out.println("<div class ='ImagenGame' style = 'background-image: url(images/videogames/" + game.getRutaFoto() + ");'></div>");
                    out.println("<div class = 'InfoGame'>");
                    out.println("<h1 class = 'NombreGame' style = 'color: #C2A10E;'>" + game.getNombre() + "</h1>");
                    out.println("<h5 style = 'color: #C2A10E;'>Sobre este videojuego </h5>");
                    out.println("<div><p style = 'color: white;'>Desarrolladora: " + game.getDesarrolladora() + "</p></div>");
                    out.println("<div><p style = 'color: white;'>Fecha de lanzamiento: " + game.getFechaLanzamiento() + "</p></div>");
                    out.println("<div style = 'color: white; '>" + game.getSipnosis() + "</div><br>");
                    out.println("</div>");
                    out.println("</div>");
                %> 
            </aside>

            <%
                out.println("<h5 style = 'color: white; font-size: 50px; text-align: center; margin-top: 15px;'>¡Bienvenido al foro de " + game.getNombre() + "!</h5>");
                out.println("<h3 style = 'color: white; font-size: 30px; text-align: center; margin-top: 15px;'>Aquí inicia tu partida</h3>");
                out.println("<div class='mt-4 publication'>");
                out.println("<div class = 'secPublicaciones'>");
                out.println("<ul style = 'list-style: none;'>");
                List<Publication> Publication = (List<Publication>) request.getAttribute("Publicaciones");
                for (int i = 0; i < Publication.size(); i++) {
                    out.println("<li class = 'ListPub'>");
                    out.println("<div class = 'ContPub'>" + Publication.get(i).getPublicacion() + " <p class = 'infoPub'>   -  " + Publication.get(i).getNickName() + " / " + Publication.get(i).getFechaPublicacion() + "</p></div>");
                    out.println("</li>");
                }
                out.println("</div>");
                out.println("</ul>");
                out.println("<div class = 'input-group' style = 'width : 100% !important;'>");
                out.println("<form action='AttachPublication' method='post' class = 'd-flex formPub' id='formrlzpub'>");
                out.println("<input type='text' id='Pub' class='form-control InputPub' name='publicacion' placeholder = 'Escribe lo que piensas' aria-label='Escribe lo que piensas' aria-describedby ='btnPub'>");
                out.println("<button id = 'btnPub' class = 'btnPubs' name='codigo' value='" + game.getId() + "'>Publicar</button>");
                out.println("</form>");
                out.println("</div>");
                out.println("</div>");
            %>
    </body>
</html>
