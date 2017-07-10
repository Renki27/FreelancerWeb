/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




function menuSelector() {

    var value = $(this).attr('radio-selector');
   // var value = $('input[name=radio-selector]:checked').val();

    if (value === "Bandeja de Entrada") {
        $("#agenda").hide();

    } else {
        if (value === "Agenda") {
            $("#agenda").show();
        }
    }
}

