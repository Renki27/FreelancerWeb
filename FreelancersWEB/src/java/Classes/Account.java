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

    private U user;

    public Account() {
    }

    public Account(U user) {
        this.user = user;
    }

    public U getUser() {
        return user;
    }

    public void setUser(U user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Account{" + "user=" + user + '}';
    }

}
