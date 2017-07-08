/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author Erik
 */
public class NormalUser extends User {

    public NormalUser() {
    }

    public NormalUser(String name, String lastName, String email, String pass, String image) {
        super(name, lastName, email, pass, image);
    }

    @Override
    public String toString() {
        return super.toString();
    }

}
