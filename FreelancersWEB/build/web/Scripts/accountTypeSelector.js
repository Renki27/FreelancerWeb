/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




function accountTypeSelector() {

    var value = $('input[name=radio-selector]:checked').val();

    if (value === "normal") {
        $("#phone-container").hide();
        $("#ced-id-container").hide();
        $("#price-container").hide();
        $("#description-ta").hide();
        $("#jobs-checkbox-container").hide();
        $("#load-image-label").removeAttr('required');

    } else {
        if (value === "contractor") {
            $("#phone-container").show();
            $("#ced-id-container").show();
            $("#price-container").show();
            $("#description-ta").show();
            $("#jobs-checkbox-container").show();
            $("#load-image-label").attr('required', '');
        }
    }
}

