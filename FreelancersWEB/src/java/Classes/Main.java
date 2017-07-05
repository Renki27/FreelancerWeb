/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import javax.swing.JOptionPane;

/**
 *
 * @author Erik
 */
public class Main {
    
     public static void main(String[] args) {
         
         DirectorUser di = new DirectorUser();
         ContractorUserBuilder co = new ContractorUserBuilder();
         NormalBuilderUser no = new NormalBuilderUser();
         
         String type = "Contractor";
         
         if (type.toLowerCase().equals("normal")) {

             di.setUserBuilder(no);
             di.createNormalUser("Max", "Acuña", "Email", "Pass", "Image");
             User user = di.getUserBuilder();

             JOptionPane.showMessageDialog(null, user.toString());

         }
         else {
             di.setUserBuilderC(co);
             di.createContratistUser("Max", "Acuña", "email", "pass", "image", "id", "location", "act", "days",
                     "phone", "des", 0);
             ContractorUser con = di.getContractor();
             JOptionPane.showMessageDialog(null, con.toString());

         }
    
}
     
}
