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
public class ContractorUser extends User {

    private String id;
    private String location;
    private String activity;
    private String phone;
    private String description;
    private double price;
    private ArrayList<Request> requestList;
    private ArrayList<String> jobsList;

    public ContractorUser() {
    }

    public ContractorUser(String name, String lastName, String email, String pass, String image,
            String id, String location, String activity, String phone, String description, double price, ArrayList<String> jobsList) {
        super(name, lastName, email, pass, image);
        this.id = id;
        this.location = location;
        this.activity = activity;
        this.phone = phone;
        this.description = description;
        this.price = price;
        this.jobsList = jobsList;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public ArrayList<Request> getRequestList() {
        return requestList;
    }

    public void setRequestList(ArrayList<Request> requestList) {
        this.requestList = requestList;
    }

    public ArrayList<String> getJobsList() {
        return jobsList;
    }

    public void setJobsList(ArrayList<String> jobsList) {
        this.jobsList = jobsList;
    }

    @Override
    public String toString() {
        return "ContractorUser{" + "id=" + id + ", location=" + location + ", activity=" + activity + ", phone=" + phone + ", description=" + description + ", price=" + price + ", requestList=" + requestList + ", jobsList=" + jobsList + '}';
    }

}
