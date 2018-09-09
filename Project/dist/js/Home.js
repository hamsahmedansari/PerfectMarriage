
$(document).ready(function () {
    $(window).on('resize', function () {
        var x = $(window).width();
        if (x >= 576) {
            $("#filter").addClass("w-100");
        }
        else if (x <= 576) {
            $("#filter").removeClass("w-100");
        }
    })
});
