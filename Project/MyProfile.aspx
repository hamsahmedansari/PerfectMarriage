<%@ Page Title="" Language="C#" MasterPageFile="~/PerfectMarriage.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="PerfetMarriage_01March2018_.MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="dist/js/Profile.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <!-- Profile/Middle Section Start -->
    <div class="col-xl-9 col-lg-12 col-md-12 col-sm-12">
        <h5 runat="server" id="txtUserName">User Name(user id)</h5>
        <div class="my-Box p-xl-4 p-lg-3 p-md-2 p-sm-1">
            <div class="row">
                <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
                    <div class="profile-page-profile-picture text-center">
                        <img runat="server" src="img/test.jpg" id="txtProfilePicture" class="img-fluid img-thumbnail" alt="Alternate Text" style="width:150 !important; height:200px !important;" />
                    </div>
                </div>
                <div class="col-xl-10 col-lg-10 col-md-8 col-sm-8">
                    <div class="row">
                        <div class="col-6">
                            <ul style="list-style: none; font-size: 12px !important;">
                                <li>Age &nbsp:&nbsp <span runat="server" id="txtAge0"></span></li>
                                <li>Height &nbsp:&nbsp <span runat="server" id="txtHeight0"></span></li>
                                <li>Marital Status &nbsp:&nbsp <span runat="server" id="txtMaritalStatus0"></span></li>
                                <li>Posted by &nbsp:&nbsp <span runat="server" id="txtProfileFor"></span></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul style="list-style: none; font-size: 12px !important;">
                                <li>Religion &nbsp:&nbsp <span runat="server" id="txtReligion"></span></li>
                                <li>Community &nbsp:&nbsp <span runat="server" id="txtCommunity"></span></li>
                                <li>Location &nbsp:&nbsp <span runat="server" id="txtCountry"></span></li>
                                <li>Mother Tongue &nbsp:&nbsp <span runat="server" id="txtMotherTongue"></span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="">
                        <h5 class="text-danger ml-5">Manage Your Profile</h5>
                        <div class="row">
                            <div class="col-6">
                                <ul class="profileEditorList">
                                    <li>
                                        <a href="EditProfile">Edit Personal Profile</a>
                                    </li>
                                    <li>
                                        <a href="EditPartnerPerference">Edit Partner Preference</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12 border-top-2-info">
                    <a href="#" class="text-dark">
                        <div class="bg-info d-inline p-2 hov-info">About Myself</div>
                    </a>
                    <a href="#" class="text-dark">
                        <div class="bg-ccc d-inline p-2 hov-info">Partner Preference</div>
                    </a>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Personality, Family Details, Career, Partner Expectations etc.
                    </h6>
                    <div class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </div>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <p class="p-2" runat="server" id="txtAbout">
                        Contrary to popular belief, Lorem Ipsum is not simply random text. 
                        It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
                        Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words,
                        consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,
                        discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" 
                       (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, 
                        very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", 
                        comes from a line in section 1.10.32.
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Basics And Life Style
                    </h6>
                    <p class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row p-2">
                <div class="col-6 border-right-2-ccc">
                    <%--Age--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Age
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtAge1"></span>
                        </li>
                    </ul>
                    <%--Age--%>
                    <%--Date of Birth--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Date of Birth
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtDateOfBirth"></span>
                        </li>
                    </ul>
                    <%--Date of Birth--%>
                    <%--Marital Status--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Marital Status
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtMaritalStatus1"></span>
                        </li>
                    </ul>
                    <%--Marital Status--%>
                    <%--Height--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Height
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtHeight1"></span>
                        </li>
                    </ul>
                    <%--Height--%>
                </div>
                <div class="col-6">
                    <%--Diet--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Diet
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtDiet"></span>
                        </li>
                    </ul>
                    <%--Diet--%>
                    <%--Drink--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Drink
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtDrink"></span>
                        </li>
                    </ul>
                    <%--Drink--%>
                    <%--Smoke--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Smoke
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtSmoke"></span>
                        </li>
                    </ul>
                    <%--Smoke--%>
                    <%--Personal Values--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Personal Values
                        </li>
                        <li class="list-inline-item">:&nbsp Will Tell You Later
                        </li>
                    </ul>--%>
                    <%--Personal Values--%>
                    <%--Sun Sign--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Sun Sign
                        </li>
                        <li class="list-inline-item">:&nbsp Taurus
                        </li>
                    </ul>--%>
                    <%--Sun Sign--%>
                    <%--Blood Group--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Blood Group
                        </li>
                        <li class="list-inline-item">:&nbsp <a href="#" class="hyper-link">Enter Now</a>
                        </li>
                    </ul>--%>
                    <%--Blood Group--%>
                    <%--Health Information--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Health Information
                        </li>
                        <li class="list-inline-item">:&nbsp Not Specified
                        </li>
                    </ul>--%>
                    <%--Health Information--%>
                    <%--Disability--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Disability
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtDisability"></span>
                        </li>
                    </ul>
                    <%--Disability--%>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Religious Background And Other Details
                    </h6>
                    <p class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row p-2">
                <div class="col-6 border-right-2-ccc">
                    <%--Religion--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Religion
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtReligion1"></span>
                        </li>
                    </ul>
                    <%--Religion--%>
                    <%--Community--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Community
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtCommunity1"></span>
                        </li>
                    </ul>
                    <%--Community--%>
                </div>
                <div class="col-6">
                    <%--Molther Tounge--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Molther Tounge
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtMotherTongue1"></span>
                        </li>
                    </ul>
                    <%--Molther Tounge--%>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Location 
                    </h6>
                    <p class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row p-2">
                <div class="col-6 border-right-2-ccc">
                    <%--Current Residence--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Current Residence
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtCountry1"></span>
                        </li>
                    </ul>
                    <%--Current Residence--%>
                    <%--Current Residence--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">City Of Residence
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtCity"></span>
                        </li>
                    </ul>
                    <%--Current Residence--%>
                </div>
                <div class="col-6">
                    <%--State Of Residence--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">State Of Residence
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtState"></span>
                        </li>
                    </ul>
                    <%--State Of Residence--%>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <h5 class="p-2 bg-ccc">Partner Preference</h5>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Basic Info</h6>
                    <p class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-6 border-right-2-ccc">
                    <%--Age--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Age
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPAgeFrom"></span>to <span runat="server" id="txtPPAgeTo"></span>
                        </li>
                    </ul>
                    <%--Age--%>
                    <%--Height--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Height
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPHeight"></span>
                        </li>
                    </ul>
                    <%--Height--%>
                    <%--Religion / Community--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Religion / Community
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPReligion"></span>,&nbsp;<span runat="server" id="txtPPCommunity"></span>
                        </li>
                    </ul>
                    <%--Religion / Community--%>
                </div>
                <div class="col-6">
                    <%--Mother tongue--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Mother tongue
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPMotherTongue"></span>
                        </li>
                    </ul>
                    <%--Mother tongue--%>
                    <%--Marital status--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Marital status
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPMaritalStatus"></span>
                        </li>
                    </ul>
                    <%--Marital status--%>
                    <%--Children--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Children
                        </li>
                        <li class="list-inline-item">:&nbsp Doesn't Matter
                        </li>
                    </ul>--%>
                    <%--Children--%>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Location Details</h6>
                    <p class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-6 border-right-2-ccc">
                    <%--Country living in--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Country living in
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPCountry"></span>
                        </li>
                    </ul>
                    <%--Country living in--%>
                    <%--State living in--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">State living in
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPState"></span>
                        </li>
                    </ul>
                    <%--State living in--%>
                </div>
                <div class="col-6">
                    <%--City / District--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">City / District
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPCity"></span>
                        </li>
                    </ul>
                    <%--City / District--%>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-12">
                    <h6 class="d-inline text-danger">Education Career</h6>
                    <p class="d-inline float-right">
                        <a href="#">Edit</a>&nbsp<span class="fa fa-caret-right"></span>
                    </p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-6 border-right-2-ccc">
                    <%--Education--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Education
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPEducationLevel"></span>
                        </li>
                    </ul>
                    <%--Education--%>
                    <%--Working with--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Working with
                        </li>
                        <li class="list-inline-item">:&nbsp Doesn't Matter
                        </li>
                    </ul>--%>
                    <%--Working with--%>
                    <%--Profession area--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Profession area
                        </li>
                        <li class="list-inline-item">:&nbsp Doesn't Matter
                        </li>
                    </ul>--%>
                    <%--Profession area--%>
                </div>
                <div class="col-6">
                    <%--Working as--%>
                    <ul class="list-inline">
                        <li class="list-inline-item w-50">Education Field
                        </li>
                        <li class="list-inline-item">:&nbsp <span runat="server" id="txtPPEducationField"></span>
                        </li>
                    </ul>
                    <%--Working as--%>
                    <%--Annual income--%>
                    <%--<ul class="list-inline">
                        <li class="list-inline-item w-50">Annual income
                        </li>
                        <li class="list-inline-item">:&nbsp Doesn't Matter
                        </li>
                    </ul>--%>
                    <%--Annual income--%>
                </div>
            </div>
            <hr />
        </div>
    </div>
    <!-- Profile/Middle Section End -->
</asp:Content>
