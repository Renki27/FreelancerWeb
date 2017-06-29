
$(document).ready(function () {
    var currencyFormatter = new Cleave('.input-price', {
        numeral: true,
        prefix: '$'
    });


    var phoneFormatter = new Cleave('.input-phone', {
        phone: true,
        phoneRegionCode: 'CR'
    });

});