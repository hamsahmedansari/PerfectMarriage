
function expandPrepaidPlan() {
    var x = document.getElementById("paymentPlanPrepaid");
    if (x.style.height == "100px") {
        x.style.height = "100%";
        document.getElementById("paymentPlanFriendly").style.height = "100px";
        document.getElementById("paymentPlanLove").style.height = "100px";
        document.getElementById("paymentPlanPartner").style.height = "100px";
    }
    else {
        x.style.height = "100px";
    }
}
function expandFriednlyPlan() {
    var x = document.getElementById("paymentPlanFriendly");
    if (x.style.height == "100px") {
        x.style.height = "100%";
        document.getElementById("paymentPlanPrepaid").style.height = "100px";
        document.getElementById("paymentPlanLove").style.height = "100px";
        document.getElementById("paymentPlanPartner").style.height = "100px";
    }
    else {
        x.style.height = "100px";
    }
}
function expandLovePlan() {
    var x = document.getElementById("paymentPlanLove");
    if (x.style.height == "100px") {
        x.style.height = "100%";
        document.getElementById("paymentPlanPrepaid").style.height = "100px";
        document.getElementById("paymentPlanFriendly").style.height = "100px";
        document.getElementById("paymentPlanPartner").style.height = "100px";
    }
    else{
        x.style.height = "100px";
    }
}
function expandPartnerPlan() {
    var x = document.getElementById("paymentPlanPartner");
    if (x.style.height == "100px") {
        x.style.height = "100%";
        document.getElementById("paymentPlanPrepaid").style.height = "100px";
        document.getElementById("paymentPlanFriendly").style.height = "100px";
        document.getElementById("paymentPlanLove").style.height = "100px";
    }
    else{
        x.style.height = "100px";
    }
}