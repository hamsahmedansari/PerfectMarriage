<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPlan.aspx.cs" Inherits="PerfetMarriage_01March2018_.PaymentPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="dist/css/bootstrap.css" rel="stylesheet" />
    <script src="dist/js/jquery-slim.min.js"></script>
    <script src="dist/js/bootstrap.js"></script>
    <script src="dist/js/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="dist/js/PaymentPlan.js"></script>
    <script type="text/javascript" src="dist/js/main.js"></script>
</head>
<body style="background-color: #f1f1f2!important;">
    <form id="form1" runat="server">
        <!-- Nav Start -->
        <nav class="navbar navbar-expand-md bg-danger navbar-dark text-center">
            <!-- Brand -->
            <a class="navbar-brand logo-img" href="Home">
                <img src="img/Logo.png" class="img img-fluid" alt="Alternate Text" />
            </a>

            <!-- Toggler/collapsibe Button -->
            <div class="navbar-toggler p-0 mr-s-n20-m-n60">
                <a class="nav-link" href="#" onclick="return false;">
                    <div class="profile-picture-container-mobile text-center">
                        <img runat="server" id="profileImage1" src="img/test.jpg" class="" alt="Alternate Text" onclick="profileDPDMenu()" style="max-width: 48px; border-radius: 10%;" />
                    </div>
                    <div id="profileDropDown" class="dropdown-content text-left">
                        <a href="MyProfile"><span class="fa fa-user"></span>&nbsp; Profile</a>
                        <asp:LinkButton runat="server" ID="btnLogout1" OnClick="btnLogout1_Click"><span class="fa fa-sign-out"></span>&nbsp; Logout</asp:LinkButton>
                    </div>
                </a>
            </div>
            <div class="navbar-toggler p-0" data-toggle="collapse" data-target="#collapsibleNavbar">
                <div class="mr-0 d-inline-block">
                    <i class="fa fa-bars" style="font-size: 48px;"></i>
                </div>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse w-100 display-5 text-light" id="collapsibleNavbar">
                <div class="ml-xl-20 ml-lg-10 p-1">
                    <ul class="navbar-nav UnderLine-DropDown">
                        <li class="nav-item">
                            <a class="nav-link" href="Home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Inbox">Inbox</a>
                        </li>
                    </ul>
                </div>
                <div class="ml-lg-10 ml-md-5 UnderLine-DropDown d-inline mt-2">
                    <ul class="navbar-nav mt-1">
                        <li class="nav-item">
                            <asp:Button runat="server" ID="btnUpgrade" Text="Upgrade" CssClass="btn btn-outline-light" />
                        </li>
                        <li class="nav-item">
                            <a class="nav-link border-right-2-ccc no-border-at-mobile" href="PaymentPlan">Help</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="return false;">
                                <div class="profile-picture-container text-center">
                                    <img runat="server" id="profileImage2" src="img/test.jpg" class="mt-n8 d-lg-inline d-md-inline d-sm-none" alt="Alternate Text" onclick="profileDPDMenu2()" style="max-width: 48px; width:100%; border-radius: 10%;" />
                                </div>
                                <div id="profileDropDown2" class="dropdown-content text-left">
                                    <a href="MyProfile"><span class="fa fa-user"></span>&nbsp; My Profile</a>
                                    <asp:LinkButton runat="server" OnClick="Unnamed_Click"><span class="fa fa-sign-out"></span>&nbsp; Logout</asp:LinkButton>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Nav End -->

        <!-- Body Start -->
        <div class="container-fluid mt-3">
            <div class="row pl-xl-5 pl-lg-4 pl-md-0 pl-sm-0">
                <div class="col-xl-8 col-lg-8 col-md-8 col-sm-6">
                    <div style="height: 700px; overflow: hidden;">
                        <%--Prepaid Plan--%>
                        <div class="row mb-2">
                            <div class="col-12">
                                <div class="payment-plan-box" onclick="expandPrepaidPlan()" id="paymentPlanPrepaid">
                                    <div class="row" style="cursor: pointer;">
                                        <div class="col-6 text-center">
                                            <h3 style="color: #89c965 !important">Prepaid Package</h3>
                                        </div>
                                        <div class="col-6 text-center">
                                            <h3 class="d-inline" style="color: #89c965 !important;">$1</h3>
                                            <p class="d-inline">&nbsp;</p>
                                            <span class="fa fa-angle-down fa-lg d-inline"></span>
                                            <p class="">Per profile</p>
                                        </div>
                                    </div>
                                    <hr />
                                    <ul class="list-unstyled ml-5">
                                        <li>
                                            <span class="fa fa-comments-o fa-lg"></span>
                                            Chat With Your Match
                                        </li>
                                        <li>
                                            <span class="fa fa-mobile-phone fa-lg"></span>
                                            View contact number of your match
                                        </li>
                                    </ul>
                                    <div class="text-center">
                                        <asp:Button ID="btnContinueWithPrepaid" runat="server" CssClass="btn btn-primary" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Prepaid Plan End--%>
                        <%--Friendly Plan--%>
                        <div class="row mb-2">
                            <div class="col-12">
                                <div class="payment-plan-box" onclick="expandFriednlyPlan()" id="paymentPlanFriendly">
                                    <div class="row" style="cursor: pointer;">
                                        <div class="col-6 text-center">
                                            <h3 style="color: #c491ef !important">Friendly Package</h3>
                                            <p>3 Month Package</p>
                                        </div>
                                        <div class="col-6 text-center">
                                            <h3 class="d-inline" style="color: #c491ef !important;">$30</h3>
                                            <p class="d-inline">&nbsp;</p>
                                            <span class="fa fa-angle-down fa-lg d-inline"></span>
                                            <p class="">$10 Per Month</p>
                                        </div>
                                    </div>
                                    <hr />
                                    <ul class="list-unstyled ml-5">
                                        <li>
                                            <span class="fa fa-comments-o fa-lg"></span>
                                            Chat With Your Matches
                                        </li>
                                        <li>
                                            <span class="fa fa-mobile-phone fa-lg"></span>
                                            View contact number of 40 profiles
                                        </li>
                                    </ul>
                                    <div class="text-center">
                                        <asp:Button ID="btnContinueWithFriendly" runat="server" CssClass="btn btn-primary" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Prepaid Plan End--%>
                        <%--Love Plan--%>
                        <div class="row mb-2">
                            <div class="col-12">
                                <div class="payment-plan-box" onclick="expandLovePlan()" id="paymentPlanLove">
                                    <div class="row" style="cursor: pointer;">
                                        <div class="col-6 text-center">
                                            <h3 style="color: #f2a4aa !important">Love Package</h3>
                                            <p>6 Month Package</p>
                                        </div>
                                        <div class="col-6 text-center">
                                            <h3 class="d-inline" style="color: #f2a4aa !important;">$60</h3>
                                            <p class="d-inline">&nbsp;</p>
                                            <span class="fa fa-angle-down fa-lg d-inline"></span>
                                            <p class="">$9.18 Per Month</p>
                                        </div>
                                    </div>
                                    <hr />
                                    <ul class="list-unstyled ml-5">
                                        <li>
                                            <span class="fa fa-comments-o fa-lg"></span>
                                            Chat With Your Matches
                                        </li>
                                        <li>
                                            <span class="fa fa-mobile-phone fa-lg"></span>
                                            View contact number of 90 profiles
                                        </li>
                                    </ul>
                                    <div class="text-center">
                                        <asp:Button ID="btnContinueWithLove" runat="server" CssClass="btn btn-primary" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Prepaid Plan End--%>
                        <%--Partner Plan--%>
                        <div class="row mb-2">
                            <div class="col-12">
                                <div class="payment-plan-box" onclick="expandPartnerPlan()" id="paymentPlanPartner">
                                    <div class="row" style="cursor: pointer;">
                                        <div class="col-6 text-center">
                                            <h3 style="color: #cf93a7 !important">Partner Package</h3>
                                            <p>12 Month Package</p>
                                        </div>
                                        <div class="col-6 text-center">
                                            <h3 class="d-inline" style="color: #cf93a7 !important;">$100</h3>
                                            <p class="d-inline">&nbsp;</p>
                                            <span class="fa fa-angle-down fa-lg d-inline"></span>
                                            <p class="">$8.33 Per Month</p>
                                        </div>
                                    </div>
                                    <hr />
                                    <ul class="list-unstyled ml-5">
                                        <li>
                                            <span class="fa fa-comments-o fa-lg"></span>
                                            Chat With Your Matches
                                        </li>
                                        <li>
                                            <span class="fa fa-mobile-phone fa-lg"></span>
                                            View contact number of 200 profiles
                                        </li>
                                    </ul>
                                    <div class="text-center">
                                        <asp:Button ID="btnContinteWithPartner" runat="server" CssClass="btn btn-primary" Text="Continue" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Partner Plan End--%>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
                    <div class="my-Box p-2">
                        <div class="container">
                            <h5 class="text-center">Our Promise</h5>
                            <hr />
                            <ul class="list-unstyled">
                                <li class="m-1">
                                    <span class="fa fa-smile-o fa-lg border rounded-circle p-3"></span>
                                    Best Matches
                                </li>
                                <li class="m-1">
                                    <span class="fa fa-address-book-o fa-lg border rounded-circle p-3"></span>
                                    Verified Profiles
                                </li>
                                <li class="m-1">
                                    <span class="fa fa-lock fa-lg border rounded-circle p-3"></span>
                                    Privacy Controls
                                </li>
                                <li class="m-1">
                                    <span class="fa fa-shield fa-lg border rounded-circle p-3"></span>
                                    Fully Secure
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Body End -->

        <!-- Footer Start-->
        <footer id="myFooter">
            <div class="container-fluid bg-danger">
                <div class="container text-center p-2">
                    <img src="img/Logo.png" class="img-fluid w-25" alt="Alternate Text" />
                    <h5>Copy Right &copy; 2018- All Rights Reserved</h5>
                    <div class="d-inline p-2">
                        <a href="#">
                            <span class="fa fa-facebook fa-2x facebookIcon"></span>
                        </a>
                        <a href="#">
                            <span class="fa fa-twitter fa-2x twitterIcon"></span>
                        </a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer End-->
    </form>
</body>
</html>

