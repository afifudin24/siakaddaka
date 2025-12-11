// ajax jquery

$(document).ready(function() {
   
    // Reset Password
    let modal = new bootstrap.Modal(document.getElementById('modalResetPassword'));
    $("#reset-password-btn").click(function(e) {
        console.log("reset password");
        modal.show();
    })
});