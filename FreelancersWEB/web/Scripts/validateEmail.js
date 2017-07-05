/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function checkEmail() {
    var email = document.getElementById('emailAddress');
    var reEmail = document.getElementById('emailAddressConfirmation');
    var message = document.getElementById('emailAddressConfirmation-error-inline');
    var goodColor = "#66cc66";
    var badColor = "#cd0606";
    
//    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
//    var emailTest = /^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$/;
//    if (emailTest.test(email.value) === false) {
//        email.style.borderColor = badColor;
//        message.style.color = badColor;
//        message.innerHTML = "This is not a valid e-mail address."
//    }




    if (email.value === reEmail.value) {
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        reEmail.style.borderColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = ""
    } else {
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        reEmail.style.borderColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "E-mails must match."
    }

}