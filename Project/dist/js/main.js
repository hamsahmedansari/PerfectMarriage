$(document).ready(function () {    
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 5,
        responsiveClass: true,
        nav: true,
        navText: ["<span class='fa fa-chevron-left left-slider'></span>", "<span class='fa fa-chevron-right right-slider'></span>"],
        autoplay: true,
        autoplayTimeout: 1000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            400: {
                items: 1
            },
            530: {
                items: 2
            },
            768: {
                items: 3
            },
            1000: {
                items: 3
            }
        }
    });
});
document.addEventListener("contextmenu", function (e) {
    if (e.target.nodeName == "IMG") {
        e.preventDefault();
    }
}, false);
function profileDPDMenu() {
    document.getElementById("profileDropDown").classList.toggle("d-block");
}
function profileDPDMenu2() {
    document.getElementById("profileDropDown2").classList.toggle("d-block");
}
$(document).ready(function () {
    $(window).on('scroll', function () {
        var scrollPosition = scrollY;
        var windowWidth = $(window).width();
        if (scrollPosition > 275 && windowWidth > 1198) {
            $("#chatSide").addClass("h-97p");
            $("#chatSearchBar").addClass("bottom-21");
        }
        else if (scrollPosition < 275 && windowWidth > 1198) {
            $("#chatSide").removeClass("h-97p");
            $("#chatSearchBar").removeClass("bottom-21");
        }
        if (windowWidth < 1198) {
            $("#chatSide").removeClass("h-97p");
            $("#chatSearchBar").removeClass("bottom-21");
        }
    });
});
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
function openNav() {
    document.getElementById("filter").style.width = "80%";
    document.getElementById("filterButton").style.display = "none";
    document.getElementById("closeButton").style.display = "block";
}

function closeNav() {
    document.getElementById("filter").style.width = "0";
    document.getElementById("filterButton").style.display = "block";
    document.getElementById("closeButton").style.display = "none";
}
function openChat() {
    var x = document.getElementById("chatSide");
    x.style.height = "80%";
    x.style.display = "block";
}
function closeChat() {
    var x = document.getElementById("chatSide");
    x.style.height = "0";
    x.style.display = "none";
}
function openChatBox() {
    var x = document.getElementById("chat-box");
    x.style.display = "block";
};
function closeChatBox() {
    var x = document.getElementById("chat-box");
    x.style.display = "none";
};
function minimizeChatBox() {
    //var x = document.getElementById("btnMinimizeChat");
    var chatBox = document.getElementById("chat-box");
    var chatFooter = document.getElementById("chat-footer");
    if (chatBox.style.height == "300px") {
        chatBox.style.height = "38px";
        chatFooter.style.display = "none";
    }
    else {
        chatBox.style.height = "300px";
        chatFooter.style.display = "block";
        //chatFooter.style.display = "none";
    }
    
};