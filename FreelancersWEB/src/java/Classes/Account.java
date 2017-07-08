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
public class Account implements Serializable {

    private User user;
    protected boolean activated;
    private String code;
    private String accountType;

    public Account() {
    }

    public Account(User user, boolean activated, String code, String accountType) {
        this.user = user;
        this.activated = activated;
        this.code = code;
        this.accountType = accountType;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
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

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    @Override
    public String toString() {
        return "Account{" + "user=" + user + ", activated=" + activated + ", code=" + code + ", accountType=" + accountType + '}';
    }

}
