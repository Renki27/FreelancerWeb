/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author alelizmu
 */
public class Request {
    
    private String customerName;
    private String description;
    private String location;
    private String fecha;
    private String hora;
    private boolean value = false;

    public Request(String customerName, String description, String location, String fecha, String hora) {
        this.customerName = customerName;
        this.description = description;
        this.location = location;
        this.fecha = fecha;
        this.hora = hora;
    }

    public String getCustomerName() {
        return customerName;
    }

    public boolean isValue() {
        return value;
    }

    public void setValue(boolean value) {
        this.value = value;
    }
    
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }
    
    
}
