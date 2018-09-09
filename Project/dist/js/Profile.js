$(document).ready(function () {
    $(window).on('resize', function () {
        var x = $(window).width();
        if (x < 1198) {
            $("#chatSide").removeClass("h-64p-w-300px");
            $("#chatSide").removeClass("d-block");
            $("#chatSide").removeClass("h-auto");
        }
        else if (x >= 1198) {
            $("#chatSide").addClass("h-64p-w-300px");
            $("#chatSide").addClass("d-block");
            //$("#chatSide").addClass("h-auto");
        }
    });
});