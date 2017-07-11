/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.util.ArrayList;

/**
 *
 * @author Erik
 */
public class ContractorUserBuilder extends BuilderUsersC {

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

    @Override
    public void buildId(String id) {
        user.setId(id);
    }

    @Override
    public void buildlocation(String location) {
        user.setLocation(location);
    }

    @Override
    public void buildActivitys(String act) {
        user.setActivitys(act);
    }

    @Override
    public void buildDays(String days) {
        user.setDaysAndHours(days);
    }

    @Override
    public void buildPhone(String phone) {
        user.setPhoneNumber(phone);
    }

    @Override
    public void buildDescription(String des) {
        user.setDescription(des);
    }

    @Override
    public void buildPrice(double price) {
        user.setPricePerHour(price);
    }

    @Override
    public void buildJobsList(ArrayList<String> jobList) {
        user.setJobList(jobList);
    }

}
