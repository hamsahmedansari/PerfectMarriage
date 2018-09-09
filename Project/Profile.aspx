<%@ Page Title="" Language="C#" MasterPageFile="~/PerfectMarriage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="PerfetMarriage_01March2018_.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="dist/js/ViewProfile.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <!-- Profile/Middle Section Start -->
    <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12">
        <div class="my-Box p-2">
            <div class="row p-3">
                <div class="col-5">
                    <div id="other-user-profile-picture" class="my-Box p-2 position-absolute text-center" style="width: 250px;">
                        <img runat="server" id="txtImage" src="img/test.jpg" class="img-fluid" alt="Alternate Text" />
                    </div>
                </div>
                <div class="col-7">
                    <h4 class="d-inline" runat="server" id="txtName">Naziha A.</h4>
                    <%--<h6 class="d-inline">(PM03132120)</h6>--%>
                    <p class="border-bottom-2-ccc d-table">
                        Profile Created By <i>Parent</i> | &nbsp Online Now 
                                    <asp:Label runat="server" ID="pnlOnline" CssClass="d-inline fa fa-comment text-success" Visible="true"></asp:Label>
                        <asp:Label runat="server" ID="Label1" CssClass="d-inline fa fa-comment text-ccc" Visible="true"></asp:Label>
                    </p>
                    <asp:Panel runat="server" ID="pnlConnected" Visible="true">
                        <h4>Connected Member Take The Next Step...
                        </h4>
                        <asp:Button Text="Send Mail" ID="btnSendMail" CssClass="btn btn-info pr-4 pl-4" runat="server" />
                        <asp:Panel runat="server" ID="pnlContactDetails" Visible="false">
                            <div class="rounded p-2">
                                <span>Contact No.:&nbsp</span>
                                <asp:Label ID="lblContactNo" runat="server" Text="0000000"></asp:Label><br />
                                <span>Email:&nbsp</span>
                                <asp:Label ID="lblEmail" runat="server" Text="email@gmail.com"></asp:Label>
                            </div>
                        </asp:Panel>
                    </asp:Panel>
                </div>
            </div>
            <div id="other-user-profile-bottom" class="row bg-ccc" style="padding: 1% 0 1% 48%">
                <asp:Label runat="server" ID="pnlLocked" CssClass="d-inline fa fa-lock fa-lg text-danger p-2" Visible="true">
                </asp:Label>
                <asp:Label runat="server" ID="pnlUnLocked" CssClass="d-inline fa fa-unlock-alt fa-lg text-success p-2" Visible="false">
                </asp:Label>
                &nbsp;
                            &nbsp;
                            <asp:Button Text="Chat Now" ID="btnChatNow" CssClass="btn btn-ccc" runat="server" />
            </div>
            <div class="row mt-2">
                <div class="col-lg-4 d-md-4 d-lg-block d-md-block d-sm-none">
                </div>
                <div class="col-lg-8 d-md-8 d-sm-12">
                    <div class="my-Box p-2">
                        <div class="row">
                            <div>
                                <ul class="list-unstyled pl-3">
                                    <li>
                                        <span class="fa fa-user" style="color: #91b5ea !important;"></span>
                                        &nbsp; <span runat="server" id="txtAge">43 yrs, 5' 3", Virgo</span>
                                    </li>
                                    <li>
                                        <span class="fa fa-star" style="color: #f4bf56 !important;"></span>
                                        &nbsp; <span runat="server" id="txtMaritalStatus">Never Married</span>
                                    </li>
                                    <li>
                                        <span class="fa fa-book" style="color: #89d7cf !important;"></span>
                                        &nbsp; <span runat="server" id="txtReligion">Muslim, Punjabi</span>
                                    </li>
                                    <li>
                                        <span class="fa fa-black-tie" style="color: #e4cdcd !important"></span>
                                        &nbsp; <span runat="server" id="txtProfession">Training Professional</span>
                                    </li>
                                    <li>
                                        <span class="fa fa-map-marker" style="color: #f0836c !important"></span>
                                        &nbsp; Lives in,<span runat="server" id="txtCity">&nbsp;Sharjah,&nbsp;<span runat="server" id="txtCountry">United Arab Emirates</span></span>
                                    </li>
                                    <%--<li>
                                        <span class="fa fa-home" style="color: #ffcc33 !important"></span>
                                        &nbsp; Grew up in, United Arab Emirates, Pakistan, Kuwait
                                    </li>--%>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <div class="my-Box p-2">
                        <div class="row">
                            <div class="col-12 border-bottom-2-info pb-0 pt-2">
                                <h4 class="d-inline text-info p-2">Detailed Profile</h4>
                                <a href="#partnerPreference" class="text-ccc text-decoration-none">
                                    <h4 class="d-inline hov-text-info p-2">Partner Preference <span class="fa fa-arrow-down"></span></h4>
                                </a>
                            </div>
                        </div>
                        <%--About Her/His--%>
                        <div class="row mt-1">
                            <div class="col-12">
                                <h4>
                                    <span class="fa fa-quote-left border p-3 text-ccc rounded-circle"></span>
                                    <span class="text-danger ml-2">About</span>
                                </h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <p class="border-left-2-ccc pl-3 ml-4" runat="server" id="txtAbout">
                                    Im a social, confident and optimistic person, always busy doing different things. I like to aim for perfection in everything I do. 
                                                By nature I am health conscious and a fitness enthusiast.
                                                I like honesty in close relationships and have a strong dislike for dishonest and conniving people.
                                                 Family relationships and self respect are very important to me. While I?m ambitious about my goals in life, 
                                                I am also very practical and realistic. 
                                                Family members and close friends find me very modest and caring. 
                                                I love to travel to new places, meet new people and understand newer cultures. 
                                                I would like to lead a good and respectable life with an educated partner who is responsible, self-reliant and independent. 
                                                I?d like my partner to be presentable, stable and having self-esteem. He should have respect for women and family relationships 
                                                both old and young. He should also be reasonably health conscious (non-smoking/non-drinking) with a taste for good things in life 
                                                including travelling for pleasure..
                                </p>
                            </div>
                        </div>
                        <%--About Her/His End--%>
                        <%--Life Style And Appearance--%>
                        <div class="row">
                            <div class="col-12">
                                <h4>
                                    <span class="fa  fa-glass border p-3 text-ccc rounded-circle"></span>
                                    <span class="text-danger ml-2">Life Style And Appearance</span>
                                </h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="border-left-2-ccc ml-4 text-center p-2 pl-5 pr-5">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="border p-2">
                                                <span class="fa fa-cutlery fa-3x" style="color: #f68181 !important;"></span>
                                            </div>
                                            <p runat="server" id="txtDiet">Non-Vegetarian</p>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="border p-2">
                                                <span class="fa fa-beer fa-3x" style="color: #f7a067 !important;"></span>
                                            </div>
                                            <p>Drink&nbsp;<span runat="server" id="txtDrink"></span></p>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="border p-2">
                                                <span class="fa fa-info fa-3x" style="color: #db90d8 !important;"></span>
                                            </div>
                                            <p>Somke&nbsp;<span runat="server" id="txtSmoke"></span></p>
                                        </div>
                                        <%--<div class="col-sm-3">
                                            <div class="border p-2">
                                                <span class="fa fa-user fa-3x" style="color: #93b6ea !important;"></span>
                                            </div>
                                            <p>Wheatish skin tone, slim build</p>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Life Style And End--%>
                        <%--Her/His Family--%>
                        <%--<div class="row mt-1">
                            <div class="col-12">
                                <h4>
                                    <span class="fa fa-home border p-3 text-ccc rounded-circle"></span>
                                    <span class="text-danger ml-2">Her Family</span>
                                </h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <p class="border-left-2-ccc ml-4 pl-3">
                                    Our family is originally from Lahore with moderate values. Her father is employed and her mother is a homemaker.
                                                 She has 1 brother (married) and 3 sisters (2 married).
                                </p>
                            </div>
                        </div>--%>
                        <%--Her/His Family End--%>
                        <%--Education And Career--%>
                        <div class="row mt-1">
                            <div class="col-12">
                                <h4>
                                    <span class="fa fa-graduation-cap border p-3 text-ccc rounded-circle"></span>
                                    <span class="text-danger ml-2">Education And Career</span>
                                </h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="border-left-2-ccc ml-4 pl-3">
                                    <ul class="list-unstyled p-3">
                                        <li>
                                            <span class="fa fa-graduation-cap" style="color: #6092a6 !important;"></span>
                                            <span runat="server" id="txtEducationLevel">Doctorate in Education</span>
                                        </li>
                                        <li>
                                            <span class="fa fa-black-tie" style="color: #c99999 !important;"></span>
                                            <span runat="server" id="txtEducationField">Training Professional With a Private Company</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <%--Education And Career End--%>
                        <%--Interests And More--%>
                        <%--<div class="row mt-1">
                            <div class="col-12">
                                <h4>
                                    <span class="fa fa-paint-brush border p-3 text-ccc rounded-circle"></span>
                                    <span class="text-danger ml-2">Interests And More</span>
                                </h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="border-left-2-ccc ml-4">
                                    <div class="row text-center p-5">
                                        <div class="col-sm-4">
                                            <div class="border-bottom-2-ccc">
                                                <span class="fa fa-heart fa-4x" style="color: #ffcd38 !important"></span>
                                            </div>
                                            <h5>Interest And Hobbies
                                            </h5>
                                            <p>
                                                Alternative healing, Health & Fitness, Listening to music, Travel...
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="border-bottom-2-ccc">
                                                <span class="fa fa-book fa-4x" style="color: #b9db81 !important"></span>
                                            </div>
                                            <h5>Books
                                            </h5>
                                            <p>
                                                Classic literature, History, Magazines & Newspapers
                                            </p>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="border-bottom-2-ccc">
                                                <span class="fa fa-gamepad fa-4x" style="color: #79d5e3 !important"></span>
                                            </div>
                                            <h5>Sports
                                            </h5>
                                            <p>
                                                Aerobics, Cycling, Working out, Cardio Workouts, Yoga
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        <%--Interests And More End--%>
                        <%--What She/He is looking for--%>
                        <div class="row mt-1">
                            <div class="col-12">
                                <h4>
                                    <span class="fa fa-list-ul border p-3 text-ccc rounded-circle"></span>
                                    <span class="text-danger ml-2" id="partnerPreference">Looking For</span>
                                </h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="border-left-2-ccc ml-4">
                                    <ul class="list-unstyled pl-5">
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Age:</h5>
                                            <span><span runat="server" id="txtPPAgeFrom">37</span>&nbsp;to&nbsp;<span runat="server" id="txtPPAgeTo">44</span></span>
                                        </li>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Height:</h5>
                                            <span runat="server" id="txtPPHeight">5' 6"(167cm) to 6' 0"(182cm)</span>
                                        </li>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Marital Status:</h5>
                                            <span runat="server" id="txtPPMaritalStatus">No</span>
                                        </li>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Religion / Community:</h5>
                                            <span><span runat="server" id="txtPPReligion">Muslim</span>,&nbsp;<span runat="server" id="txtPPCommunity">Muslim: Sunni</span></span>
                                        </li>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Mother Tongue:</h5>
                                            <span runat="server" id="txtPPMotherTongue">English, Punjabi, Urdu</span>
                                        </li>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Country Living in:</h5>
                                            <span runat="server" id="txtPPCountry">United Kingdom, United Arab Emirates, Canada, Australia, Pakistan</span>
                                        </li>
                                        <%--<li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Residency Status:</h5>
                                            <span>Citizen / Permanent Resident</span>
                                        </li>--%>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Profession Area:</h5>
                                            <span id="view-profession-area-MoreLess"><span runat="server" id="txtPPProfession">Accounting, Banking & Finance, Airline & Aviation, 
                                                            Architecture & Design, Medical & Healthcare, 
                                                            IT & Software Engineering, Engineering, Others, 
                                                            Corporate Professionals, Beauty, Fashion & Jewellery 
                                                            Designers, Artists, Animators & Web Designers, Administration & HR, 
                                                            Legal, Advertising, Media & Entertainment, Science,
                                                            Education & Training, Merchant Navy, Agriculture
                                            </span></span>
                                            <p class="text-right">
                                                <p id="btnViewProfession" onclick="viewProfessionArea()" class="hyper-link">View More</p>
                                            </p>
                                        </li>
                                        <%--<li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Smoke:</h5>
                                            <span runat="server" id="txtPPSmoke">Don't include profiles who smoke</span>
                                        </li>
                                        <li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Drink:</h5>
                                            <span runat="server" id="txtPPDrink">Nerver Drink</span>
                                        </li>--%>
                                        <%--<li class="border-bottom-1-ccc">
                                            <h5 class="text-danger">Body Type:</h5>
                                            <span>Slim, Average, Athletic</span>
                                        </li>--%>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <%--What She/He is looking for End--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Profile/Middle Section End -->
</asp:Content>
