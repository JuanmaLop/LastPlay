/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.Date;

/**
 *
 * @author juani
 */
public class Publication {
    private int id;
    private String publicacion;
    private String fechaPublicacion;
    private int usuario;
    private int videojuego;
    private String nickname;

    public Publication(){
    }
    
    public Publication(int id, String publicacion, String fechaPublicacion, int usuario, int videojuego) {
        this.id = id;
        this.publicacion = publicacion;
        this.fechaPublicacion = fechaPublicacion;
        this.usuario = usuario;
        this.videojuego = videojuego;
    } 
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPublicacion() {
        return publicacion;
    }

    public void setPublicacion(String publicacion) {
        this.publicacion = publicacion;
    }

    public String getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(String fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public int getUsuario() {
        return usuario;
    }

    public void setUsuario(int usuario) {
        this.usuario = usuario;
    }

    public int getVideojuego() {
        return videojuego;
    }

    public void setVideojuego(int videojuego) {
        this.videojuego = videojuego;
    }
    
    public String getNickName(){
        return nickname;
    }
    
    public void setNickName(String nickname){
        this.nickname = nickname;
    }
    
}
