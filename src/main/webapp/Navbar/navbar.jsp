<%-- 
    Document   : navbar
    Created on : 22/11/2023, 9:11:05 p. m.
    Author     : juani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <nav class="navbar navbar-expand-lg navbar-light  ">
        <div class="container-fluid " style="background-color:#33322C; border-top: 0px solid #C2A10E; border-left: 0px solid #C2A10E; border-right: 0px solid #C2A10E" >
            <div class="principal">
                <a class="navbar-header" href="principal.jsp">				
                    <img src="images/logoLastPlay.png" class="navbar-brand" width="150" height = "50">
                </a>
                <a class="btn icons" type="button" href="principal.jsp">
                    <span><i class="fa-solid fa-home"></i></span>
                </a>
            </div>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
                <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll">
                    <form class="d-flexbtn">
                        <div class="botones-navbar">
                            <div class="principal">
                                <a class="btn icons" type="button">
                                    <% out.println(nickname);%><span><i class="fa-solid fa-user"></i></span>
                                </a>  
                                <a style="margin-left:2rem;" class="btn icons" data-bs-toggle="modal" data-bs-target="#modalclosesesion">
                                    <span><i class="fa-solid fa-arrow-right-from-bracket"></i></span>
                                </a>
                            </div>
                        </div>
                    </form>
                </ul>
            </div>
        </div>
    </nav>
</div>


<!--Modal Cerrar Sesión-->
<div class="modal fade" id="modalclosesesion" tabindex="-1" aria-labelledby="modalcloseS" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalcloseS">Cerrar Sesión</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ¿Realmente desea salir de LastPlay?
            </div>
            <div class="modal-footer">
                <a type="button" class="btn btn-primary" href="UserLogOut">Si</a>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>