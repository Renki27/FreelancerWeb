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
    
     protected User user;

    public User getUser() {
        return user;
    }
    
    public void create() {
        user = new User();
    }
    
    public abstract void buildName(String name);
    public abstract void buildLastNamel(String l);
    public abstract void buildEmail(String e);
    public abstract void buildPass(String pass);
    public abstract void buildImage(String image);
}
