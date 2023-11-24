/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DataBase;

import Control.DBControlVideogame;
import Model.Videogame;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author juani
 */
public class DAOVideogame implements DBControlVideogame{

    @Override
    public Videogame getVideogame(int id) {
        Connection conexion = ConnectionDB.getConnection();
        Videogame game = null;
        try {
            String query = "SELECT * FROM tblvideojuego WHERE id = ?";
            PreparedStatement preparedStatement = conexion.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                game = new Videogame(rs.getInt("id"), rs.getString("nombre"), rs.getDate("fechalanzamiento"), rs.getString("sinopsis"), rs.getString("desarrolladora"), rs.getString("rutafoto"));
            }

            rs.close();
            preparedStatement.close();
        } catch (SQLException e) {
            System.err.println("Error al obtener videojuego: " + e.getMessage());
        }
        ConnectionDB.closeConnection(conexion);
        return game;
    }
    
}
