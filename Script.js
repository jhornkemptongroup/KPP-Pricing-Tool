//$(document).ready(function () {
//    $('#mode-toggle').click(function () {
//        $('body').toggleClass('light-mode dark-mode');
//        // Optionally, save the user's mode preference here
//    });
//});
// Check if the user has a preferred mode stored in local storage
var preferredMode = localStorage.getItem('preferredMode');
if (preferredMode === 'dark') {
    $('body').addClass('dark-mode');
} else {
    $('body').addClass('light-mode');
}

$(document).ready(function () {
    $('#mode-toggle').click(function () {
        var body = $('body');
        if (body.hasClass('light-mode')) {
            body.removeClass('light-mode').addClass('dark-mode');
            localStorage.setItem('preferredMode', 'dark');
        } else {
            body.removeClass('dark-mode').addClass('light-mode');
            localStorage.setItem('preferredMode', 'light');
        }
    });
});

