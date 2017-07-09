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
public abstract class BuilderUsersC {

    protected ContractorUser user;

    public ContractorUser getUser() {
        return user;
    }

    public void create() {
        user = new ContractorUser();
    }

    public abstract void buildName(String name);

    public abstract void buildLastName(String lastname);

    public abstract void buildEmail(String e);

    public abstract void buildPass(String pass);

    public abstract void buildImage(String image);

    public abstract void buildId(String id);

    public abstract void buildlocation(String location);

    public abstract void buildActivitys(String act);

    public abstract void buildDays(String days);

    public abstract void buildPhone(String phone);

    public abstract void buildDescription(String des);

    public abstract void buildPrice(double price);

}
