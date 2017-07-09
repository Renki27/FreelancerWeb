/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.io.Serializable;

/**
 *
 * @author ZERO
 */
public class Account implements Serializable{

    private User user;
    protected boolean activated;
    private int code = 0;
    private Preguntas pregunta;

    public Account() {
    }

    
    
    public Account(User user, boolean activated, int code) {
        this.user = user;
        this.activated = activated;
        this.code = code;
        this.pregunta = pregunta;
    }

    public Preguntas getPregunta() {
        return pregunta;
    }

    public void setPregunta(Preguntas pregunta) {
        this.pregunta = pregunta;
    }
 
    
    
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public User getUser() {
        return user;
    }

    
    public void setUser(User user) {
        this.user = user;
    }

    public boolean getActivated() {
        return activated;
    }

    public void setActivated(boolean activated) {
        this.activated = activated;
    }

    @Override
    public String toString() {
        return  user + " " + activated + " " +code;
    }
    
    

}
