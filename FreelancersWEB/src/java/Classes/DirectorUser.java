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
public class DirectorUser {

    private BuilderUsers buildNormalUser;
    private BuilderUsersC buildContractor;

    public void createNormalUser(String name, String lastName, String email, String pass, String image) {

        buildNormalUser.create();
        buildNormalUser.buildName(name);
        buildNormalUser.buildLastName(lastName);
        buildNormalUser.buildEmail(email);
        buildNormalUser.buildPass(pass);
        buildNormalUser.buildImage(image);
    }

    public void createContratistUser(String name, String lastName, String email, String pass, String image,
            String id, String location, String activity, String days, String phone, String description, double price, ArrayList<String> jobList ) {

        buildContractor.create();
        buildContractor.buildName(name);
        buildContractor.buildLastName(lastName);
        buildContractor.buildEmail(email);
        buildContractor.buildPass(pass);
        buildContractor.buildImage(image);
        buildContractor.buildId(id);
        buildContractor.buildlocation(location);
        buildContractor.buildActivitys(activity);
        buildContractor.buildDays(days);
        buildContractor.buildPhone(phone);
        buildContractor.buildDescription(description);
        buildContractor.buildPrice(price);
        buildContractor.buildJobsList(jobList);

    }

    public void setUserBuilder(BuilderUsers bu) {
        buildNormalUser = bu;
    }

    public void setUserBuilderC(BuilderUsersC bu) {
        buildContractor = bu;
    }

    public NormalUser getNormalUser() {
        return buildNormalUser.getUser();
    }

    public ContractorUser getContractor() {

        return buildContractor.getUser();

    }

}
