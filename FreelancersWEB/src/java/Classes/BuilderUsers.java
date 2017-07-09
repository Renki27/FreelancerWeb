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
public abstract class BuilderUsers {

    protected NormalUser user;

    public NormalUser getUser() {
        return user;
    }

    public void create() {
        user = new NormalUser();
    }

    public abstract void buildName(String firstname);

    public abstract void buildLastName(String lastname);

    public abstract void buildEmail(String email);

    public abstract void buildPass(String pass);

    public abstract void buildImage(String image);
}
