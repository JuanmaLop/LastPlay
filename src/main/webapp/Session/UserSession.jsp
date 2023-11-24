<%-- 
    Document   : ComprobarRol
    Created on : 21/09/2021, 09:58:08 AM
    Author     : SENA
--%>

<%@page import="Model.User"%>

<%
    String nickname = "";
    try {
        HttpSession missesion = (HttpSession) request.getSession();
        User us = (User) missesion.getAttribute("user");
        nickname = us.getNickname();
        int id = us.getId();

        response.setHeader("cache-Control", "no-cache, no-store,must-revalidate");
        if (missesion.getAttribute("user") == null) {
            response.sendRedirect("login.jsp");
        }

    } catch (Exception e) {
        response.sendRedirect("login.jsp");
    }
%>