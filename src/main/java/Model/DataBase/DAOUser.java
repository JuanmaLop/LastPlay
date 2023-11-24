/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.DataBase;

import Control.DBControlUser;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author juani
 */
public class DAOUser implements DBControlUser {

    @Override
    public void addUser(User user) {
        Connection connection = ConnectionDB.getConnection();
        try {
            String query = "INSERT INTO tblusuario (id, nickname, nombre, apellidos, correo, celular, contrasenia) VALUES (null, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            // Se asignan los parámetros
            preparedStatement.setString(1, user.getNickname());
            preparedStatement.setString(2, user.getNombre());
            preparedStatement.setString(3, user.getApellidos());
            preparedStatement.setString(4, user.getCorreo());
            preparedStatement.setString(5, user.getCelular());
            preparedStatement.setString(6, user.getContrasenia());

            // Se insertan los datos
            int filasAfectadas = preparedStatement.executeUpdate();
            if (filasAfectadas > 0) {
                System.out.println("Persona agregada exitosamente a la base de datos.");
            } else {
                System.err.println("Error al agregar persona a la base de datos.");
            }

            preparedStatement.close();

        } catch (Exception e) {
            System.err.println("Error al agregar persona: " + e.getMessage());
        }

        ConnectionDB.closeConnection(connection);
    }

    @Override
    public User getUser(String email) {
        Connection conexion = ConnectionDB.getConnection();
        User user = null;
        try {
            String query = "SELECT * FROM tblusuario WHERE correo = ?";
            PreparedStatement preparedStatement = conexion.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user = new User(rs.getInt("id"), rs.getString("nickname"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("correo"), rs.getString("celular"), rs.getString("contrasenia"));
            }

            rs.close();
            preparedStatement.close();
        } catch (SQLException e) {
            System.err.println("Error al obtener persona: " + e.getMessage());
        }
        ConnectionDB.closeConnection(conexion);
        return user;
    }

    @Override
    public void updateUser(User user) {
        Connection connection = ConnectionDB.getConnection();
        try {
            String query = "UPDATE tblusuario SET nickname = ?, nombre = ?, apellidos = ?, correo = ?, celular = ?, contrasenia = ? WHERE id = " + user.getId() + "";
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            // Se asignan los parámetros
            preparedStatement.setString(1, user.getNickname());
            preparedStatement.setString(2, user.getNombre());
            preparedStatement.setString(3, user.getApellidos());
            preparedStatement.setString(4, user.getCorreo());
            preparedStatement.setString(5, user.getCelular());
            preparedStatement.setString(6, user.getContrasenia());

            // Se insertan los datos
            int filasAfectadas = preparedStatement.executeUpdate();
            if (filasAfectadas > 0) {
                System.out.println("Usuario actualizada exitosamente.");
            } else {
                System.err.println("Error al actualizar  al usuaio.");
            }

            preparedStatement.close();
        } catch (Exception e) {
            System.err.println("Error al actulizar al usuario persona: " + e.getMessage());
        }

        ConnectionDB.closeConnection(connection);
    }

    public boolean validateUser(String email, String pass) {
        Connection conexion = ConnectionDB.getConnection();
        try {
            String query = "SELECT * FROM tblusuario WHERE correo = ? and contrasenia = ?;";
            PreparedStatement preparedStatement = conexion.prepareStatement(query);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, pass);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                ConnectionDB.closeConnection(conexion);
                rs.close();
                preparedStatement.close();
                return true;
            }

            rs.close();
            preparedStatement.close();
        } catch (SQLException e) {
            System.err.println("Error al encontrar usuario: " + e.getMessage());
        }
        ConnectionDB.closeConnection(conexion);
        return false;
    }

    @Override
    public String getNick(int id) {
        Connection conexion = ConnectionDB.getConnection();
        String nick = null;
        try {
            String query = "SELECT nickname FROM tblusuario WHERE id = ?";
            PreparedStatement preparedStatement = conexion.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                nick = rs.getString("nickname");
            }

            rs.close();
            preparedStatement.close();
        } catch (SQLException e) {
            System.err.println("Error al obtener persona: " + e.getMessage());
        }
        ConnectionDB.closeConnection(conexion);
        return nick;
    }
}
