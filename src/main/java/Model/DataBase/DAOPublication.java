/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DataBase;

import Control.DBControlPublication;
import Model.Publication;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author juani
 */
public class DAOPublication implements DBControlPublication{
    @Override
    public void addPublication(Publication publication) {
        Connection connection = ConnectionDB.getConnection();
        try {
            String query = "INSERT INTO tblpublicacion (id, publicacion, fechapublicacion, usuario, videojuego) VALUES (null, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            // Se asignan los parámetros
            preparedStatement.setString(1, publication.getPublicacion());
            preparedStatement.setString(2,  publication.getFechaPublicacion());
            preparedStatement.setInt(3, publication.getUsuario());
            preparedStatement.setInt(4, publication.getVideojuego());

            // Se insertan los datos
            int filasAfectadas = preparedStatement.executeUpdate();
            if (filasAfectadas > 0) {
                System.out.println("Pregunta agregada exitosamente a la base de datos.");
            } else {
                System.err.println("Error al agregar pregunta a la base de datos.");
            }

            preparedStatement.close();

        } catch (Exception e) {
            System.err.println("Error al agregar pregunta: " + e.getMessage());
        }

        ConnectionDB.closeConnection(connection);
    }

    @Override
    public List<Publication> getPublications(int id) {
        Connection connection = ConnectionDB.getConnection();
        List<Publication> publications = new ArrayList<>();
        DAOUser daouser = new DAOUser();
        String nick;
        
        try {
            String consulta = "SELECT * FROM tblpublicacion WHERE videojuego = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(consulta);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                nick = daouser.getNick(resultSet.getInt("usuario"));
                Publication publication = new Publication(resultSet.getInt("id"), resultSet.getString("publicacion"), resultSet.getString("fechapublicacion"), resultSet.getInt("usuario"), resultSet.getInt("videojuego"));
                publication.setNickName(nick);
                publications.add(publication);
            }

            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            System.err.println("Error al obtener preguntas: " + e.getMessage());
        }
        ConnectionDB.closeConnection(connection);
        return publications;
    }
    
}
