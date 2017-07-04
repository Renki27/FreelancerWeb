function checkPass()
{
    //Store the password field objects into variables ...
    var password = document.getElementById('password');
    var re_password = document.getElementById('rePassword');
    //Store the Confimation Message Object ...
    var message = document.getElementById('password-error-inline');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#cd0606";
    //Compare the values in the password field 
    //and the confirmation field
    if (password.value === re_password.value) {
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        re_password.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = ""
    } else {
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        re_password.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords must match."
    }
}  