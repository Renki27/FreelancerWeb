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
public class DirectorUser {
    
    private BuilderUsers builderUser;
    private BuilderUsersC builderContratist;
    
     void createNormalUser(String name,String lastName,String email,String pass,String image) {
         
        builderUser.create();
        builderUser.buildName(name);
        builderUser.buildLastNamel(lastName);
        builderUser.buildEmail(email);
        builderUser.buildPass(pass);
        builderUser.buildImage(image);
    }
     
     void createContratistUser(String name,String lastName,String email,String pass,String image,
     String id,String location,String activity,String days,String phone,String description,int price){
     
        builderContratist.create();
        builderContratist.buildName(name);
        builderContratist.buildLastNamel(lastName);
        builderContratist.buildEmail(email);
        builderContratist.buildPass(pass);
        builderContratist.buildImage(image);
        builderContratist.buildId(id);
        builderContratist.buildlocation(location);
        builderContratist.buildActivitys(activity);
        builderContratist.buildDays(days);
        builderContratist.buildPhone(phone);
        builderContratist.buildDescription(description);
        builderContratist.buildPrice(price);
     
     }
    
    public void setUserBuilder(BuilderUsers bu) {
        builderUser = bu;
    }
    
     public void setUserBuilderC(BuilderUsersC bu) {
        builderContratist = bu;
    }
    
    

    public User getUserBuilder() {
        return builderUser.getUser();
    }
    
    public ContractorUser getContractor(){
    
        return builderContratist.getUser();
    
    }
    
    
    
}
