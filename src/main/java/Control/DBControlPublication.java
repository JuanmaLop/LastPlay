/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Control;

import Model.Publication;
import java.util.List;

/**
 *
 * @author juani
 */
public interface DBControlPublication {
    public void addPublication(Publication publication);
    public List<Publication> getPublications(int id);
}
