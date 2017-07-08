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
public class NormalBuilderUser extends BuilderUsers {

    @Override
    public void buildName(String name) {
        user.setName(name);
    }

    @Override
    public void buildLastName(String lastName) {

        user.setLastName(lastName);
    }

    @Override
    public void buildEmail(String email) {
        user.setEmail(email);

    }

    @Override
    public void buildPass(String pass) {
        user.setPass(pass);
    }

    @Override
    public void buildImage(String image) {
        user.setImage(image);
    }

}
