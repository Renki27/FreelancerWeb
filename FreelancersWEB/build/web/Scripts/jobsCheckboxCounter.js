$(document).ready(function () {
    global;
    $('input[type="checkbox"]').click(function () {
        global = ($('.job-checkbox:checked').length);
    });
});