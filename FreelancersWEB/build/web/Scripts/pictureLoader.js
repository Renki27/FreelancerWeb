//$(document).ready(function() {
function imagePicker() {

    var readURL = function (input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('.profile-pic').attr('src', e.target.result);

            };

            reader.readAsDataURL(input.files[0]);
            var avatar = document.getElementById('upload-photo').value;
            $('input[name="avatar-src"]').val(avatar);
            var p = document.getElementById('imgT');
            p.innerHTML = avatar;
        }
    };


    $(".file-upload").on('change', function () {
        readURL(this);
    });

//});
}