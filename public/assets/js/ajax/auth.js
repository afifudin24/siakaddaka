// ajax jquery

$(document).ready(function() {
    console.log("ajax");
    // Reset Password
    let modal = new bootstrap.Modal(document.getElementById('modalResetPassword'));
    $("#reset-password-btn").click(function(e) {
        console.log("reset password");
        modal.show();
    })
});