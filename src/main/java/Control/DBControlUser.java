/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Control;

import Model.User;

/**
 *
 * @author juani
 */
public interface DBControlUser {
    public void addUser(User user);
    public User getUser(String email);
    public void updateUser(User user);
    public boolean validateUser(String email, String pass);
    public String getNick(int id);
}
