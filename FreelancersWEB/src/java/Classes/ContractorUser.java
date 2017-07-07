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
public class ContractorUser extends User {
    
    private String id;
    private String location; 
    private String activitys; 
    private String daysAndHours; 
    private String phoneNumber;
    private String description;
    private double pricePerHour;

    public ContractorUser() {
    }

    public ContractorUser(String id, String location, String activitys, String daysAndHours, String phoneNumber, String description, double pricePerHour, String name, String lastName, String email, String pass, String image) {
        super(name, lastName, email, pass, image);
        this.id = id;
        this.location = location;
        this.activitys = activitys;
        this.daysAndHours = daysAndHours;
        this.phoneNumber = phoneNumber;
        this.description = description;
        this.pricePerHour = pricePerHour;
    }

    public String getId() {
        return id;
    }

    public String getLocation() {
        return location;
    }

    public String getActivitys() {
        return activitys;
    }

    public String getDaysAndHours() {
        return daysAndHours;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getDescription() {
        return description;
    }

    public double getPricePerHour() {
        return pricePerHour;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setActivitys(String activitys) {
        this.activitys = activitys;
    }

    public void setDaysAndHours(String daysAndHours) {
        this.daysAndHours = daysAndHours;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setPricePerHour(double pricePerHour) {
        this.pricePerHour = pricePerHour;
    }
    
    

    @Override
    public String toString() {
        return "Contractor User "+"\nUser: "+super.getName()+"\nApellido: "+super.getLastName()+"\nEmail: "+super.getEmail()+"\nPass: "+super.getPass()+
             "\nImage: "+super.getImage()+ "\nid = " + id + ",\nlocation = " + location + ",\nactivitys = " + activitys + ",\ndaysAndHours = " + daysAndHours + ",\nphoneNumber = " + phoneNumber + ",\ndescription = " + description + ",\npricePerHour = " + pricePerHour + '}';
    }
    
    
    
    
}