/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author Erik
 */
public class User implements Serializable {

    private String name;
    private String lastName;
    private String email;
    private String pass;
    private String image;
    private ArrayList <Request> requestList = new ArrayList(); 

    public User() {
    }

    public User(String name, String lastName, String email, String pass, String image) {
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.pass = pass;
        this.image = image;
    }

    public ArrayList<Request> getRequestList() {
        return requestList;
    }

    public void setRequestList(ArrayList<Request> requestList) {
        this.requestList = requestList;
    }

    
    
    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPass() {
        return pass;
    }

    public String getImage() {
        return image;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return name + " " + lastName + " " + email + " " + pass + " " + image;
    }

}
