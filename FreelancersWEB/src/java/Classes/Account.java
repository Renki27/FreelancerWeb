/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author ZERO
 */
public class Account {

    private User user;
    protected boolean activated;

    public Account() {
    }

    public Account(User user, boolean activated) {
        this.user = user;
        this.activated = activated;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isActivated() {
        return activated;
    }

    public void setActivated(boolean activated) {
        this.activated = activated;
    }

    @Override
    public String toString() {
        return "Account{" + "user=" + user + ", activated=" + activated + '}';
    }
    
    

}
