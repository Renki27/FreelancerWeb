
//La funcion se encarga de evaluar todos los campos por medio de un booleano, este se 
//settea como falso si la expresion no se cumple y manda una alerta a la ventana del navegador
//de estar todo correto retorna true


function validateFields() {
    var todo_correcto = true;

//El nombre debe empezar con mayuscula y no puede tener caracteres especiales a excepcion de los agregados en la expresion
    var firstName = document.getElementById("firstNameInput").value;
    var nameTest = /^([A-Za-z]{2,25})$/;

    var lastName = document.getElementById("lastNameInput").value;
    var nameTest = /^([A-Za-z]{2,25})$/;

//el email permite mayusculas, minusculas y caracteres especiales
    var email = document.getElementById("emailInput").value;
    var emailTest = /^[\\w-]+(\\.[\\w-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$/;
// /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})$/

//la contraseña no admite caracteres especiales unicamente
    var password = document.getElementById("passwordInput").value;
    var passwordTest = /^[a-zA-Z0-9]{6,30}$/;


    var phone = document.getElementById("phoneInput").value;
    var phoneTest = /\D*([2-9]\d{2})(\D*)([2-9]\d{2})(\D*)(\d{4})\D*/;

    if (!nameTest.test(firstName)) {
        todo_correcto = false;
        alert("Invalid name  " + "'" + firstName + "'  " + ": The length must contain between 2 - 25. Special characters not allowed");
    }
    if (!nameTest.test(lastName)) {
        todo_correcto = false;
        alert("Invalid last name  " + "'" + lastName + "'  " + ": The length must contain between 2 - 25. Special characters not allowed");
    }
    if (!emailTest.test(email)) {
        todo_correcto = false;
        alert("Invalid e-mail " + "'" + email + "'  " + ": check your data again.");
    }
    if (!passwordTest.test(password)) {
        todo_correcto = false;
        alert("Invalid password. The length must be 6-15. ");
    }
    if (!phoneTest.test(phone)) {
        alert("Invalid phone number " + "'" + phone + "'  " + ": check your data again.");
    }


    if (!todo_correcto) {
        alert("Error, invalid field(s), check your data again.");
    }

    return todo_correcto;
    alert("Registered successfully. Redirecting to the Homepage, Thanks!");
}