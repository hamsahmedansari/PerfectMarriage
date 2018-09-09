<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Perfect_Marriage_MumtazCode_.SignUp" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="img/SMALLLOGO.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- For Facebook -->
    <meta property="og:title" content="Perfect Marriage" />
    <meta property="og:type" content="article" />
    <meta property="og:image" content="http://perfectmarriage.co/img/logo/5.png" />
    <meta property="og:url" content="http://perfectmarriage.co/" />
    <meta property="og:description" content="Perfectmarriage.co, the world's oldest and most successful matchmaking service, has been trusted since 1996 by people all over the world to help them find their soulmates. Today, hundreds of thousands of people have met their life partners through our revolutionary matchmaking service and countless others have made some very special friends" />

    <!-- CSS -->
    <!-- Font -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!-- Boostrap -->
    <link href="dist/css/bootstrap.css" rel="stylesheet" />


    <!-- JS -->

    <!-- Jquery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <!-- Boostrap -->
    <script src="dist/js/bootstrap.js"></script>

    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script type="text/javascript" src="dist/js/SignUp.js"></script>
    <%--<script type="text/javascript">

        //******* code for Country bind on Page Load…………..
        
        function BindCountry() {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "SignUp.aspx/CountryBind",
                dataType: "json",
                success: function (data) {
                    var v = '';
                    $.each(data.d, function (i, v1) {
                        v += "<option value='" + v1.CountryId + "'>" + v1.CountryName + "</option>";

                    });
                    $("#ddlcountry").append(v);
                    $("#ddlPartCountry").append(v);
                },
                error: function (result) {
                    alert("Error");
                }
            });
        }


        $(document).ready(function () {
            BindCountry();
            var v1 = "<option>Select</option>";
            $("#ddlcountry").html(v1);
            $("#ddlstate").html(v1);
            $("#ddlcity").html(v1);
            
            //partner Country, State and City Bind
            $("#ddlPartCountry").html(v1);
            //******* code for state bind with countryid…………..

            $("#ddlcountry").change(function () {
                var v1 = "<option>Select</option>";
                $("#ddlstate").html(v1);
                $("#ddlcity").html(v1);
                var countryid = $(this).val();
                $("#hfCountry").val($(this).val());
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "SignUp.aspx/StateBind",
                    data: "{'CountryId':'" + countryid + "'}",
                    dataType: "json",
                    success: function (data) {
                        var v = '';
                        $.each(data.d, function (i, v1) {
                            v += "<option value='" + v1.StateId + "'>" + v1.StateName + "</option>";
                        });
                        $("#ddlstate").append(v);
                    },
                    error: function (result) {
                        alert("Error");
                    }

                });
            });

            //******* code for city bind with stated……………………

            $("#ddlstate").change(function () {
                var v1 = "<option>Select</option>";
                $("#ddlcity").html(v1);
                var stateid = $(this).val();
                $("#hfState").val($(this).val());
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "SignUp.aspx/CityBind",
                    data: "{'StateId':'" + stateid + "'}",
                    dataType: "json",
                    success: function (data) {
                        var v = '';

                        for (var i = 0; i < data.d.length; i++) {
                            v += "<option value='" + data.d[i].CityId + "'>" + data.d[i].CityName + "</option>";
                        }
                        //$.each(data.d, function (i, v1)
                        //{
                        //    v += "<option value='" + v1.CityId + "'>" + v1.CityName + "</option>";
                        //});

                        $("#ddlcity").append(v);
                    },
                    error: function (result) {
                        alert("Error");
                    }

                });
            });

            $('#ddlcity').bind('change', function () {
            //    $('#hiddenfield_id').val($(this).val());
            $("#hfCity").val($(this).val());
            });

            //****** Partner Sate bind with CountryId  hfPartCountry ddlPartStates hfPartState ddlPartCity hfPartCity ******
            $("#ddlPartCountry").change(function () {
                var v1 = "<option>Select</option>";
                $("#ddlPartStates").html(v1);
                $("#ddlPartCity").html(v1);
                var countryid = $(this).val();
                $("#hfPartCountry").val($(this).val());
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "SignUp.aspx/StateBind",
                    data: "{'CountryId':'" + countryid + "'}",
                    dataType: "json",
                    success: function (data) {
                        var v = '';
                        $.each(data.d, function (i, v1) {
                            v += "<option value='" + v1.StateId + "'>" + v1.StateName + "</option>";
                        });
                        $("#ddlPartStates").append(v);
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
            });

            $("#ddlPartStates").change(function () {
                var v1 = "<option>Select</option>";
                $("#ddlPartCity").html(v1);
                var stateid = $(this).val();
                $("#hfPartState").val($(this).val());
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "SignUp.aspx/CityBind",
                    data: "{'StateId': '"+ stateid +"'}",
                    dataType: "json",
                    success: function (data) {
                        var v = '';
                        for (var i = 0; i < data.d.length; i++) {
                            v += "<option value='" + data.d[i].CityId + "'>" + data.d[i].CityName + "</option>";
                            
                        }
                        $("#ddlPartCity").append(v);
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
            });

            $('#ddlPartCity').bind('change', function () {
                $("hfPartCity").val($(this).val());
            });
        });

        
    </script>--%>
    <style>
        h4 {
            color: green;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <header class="mb-3">
            <%-- TOP Header  --%>
            <div class=" p-2 w-100 bg-success">

                <div class="container text-center">

                    <div class="d-inline-block  text-capitalize text-white">

                        <div class="row">
                            <p class="col-12">
                                <span class="text-capitalize font-weight-bold" style="font-size: 22px;"><strong>REGISTER NOW</strong></span>
                                <br />
                                Now Time To Rigister Free of Cost!!!
After Start a Website Company Rigistration will be Charged. Thanks You !
                            </p>



                        </div>

                    </div>



                </div>

            </div>
            <div class="container-fluid mt-3">
                <div class="row">

                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">

                        <img src="img/Logo.png" class="img img-fluid" alt="" />

                    </div>

                    <div class="col-xl-8 col-lg-8 col-md-6 text-right d-lg-block d-sm-none d-xs-none " style="padding-top: 30px;">
                        <p class="text-justify">
                            Perfectmarriage.co, the world's oldest and most successful matchmaking service, has been trusted since 1996 by people all over the world to help them find their soulmates. Today, hundreds of thousands of people have met their life partners through our revolutionary matchmaking service and countless others have made some very special friends.
                        </p>
                    </div>

                </div>

            </div>
            <%-- Header --%>
        </header>

        <%-- Form --%>
        <asp:Panel ID="pnlUser" runat="server" Visible="false">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 d-block">
                    </div>
                    <div class="col-lg-10 col-md-10 col-sm-10">
                        <div class="col-12">
                            <h4>Account Information</h4>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Email">Email</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="&nbsp&nbsp&nbsp * Email is Incorrect" ControlToValidate="txtEmail" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txtEmail" runat="server" type="email" CssClass="form-control" placeHolder="Email"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Password">Password</label>
                                    <asp:TextBox ID="txtPassword" runat="server" type="password" CssClass="form-control" placeHolder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Create Profile For</label>
                                    <asp:DropDownList ID="create_profile" runat="server" CssClass="form-control">

                                        <asp:ListItem Value="" disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="1">Self</asp:ListItem>
                                        <asp:ListItem Value="2">Son</asp:ListItem>
                                        <asp:ListItem Value="3">Daughter</asp:ListItem>
                                        <asp:ListItem Value="3">Brother</asp:ListItem>
                                        <asp:ListItem Value="3">Sister</asp:ListItem>
                                        <asp:ListItem Value="3">Friend</asp:ListItem>
                                        <asp:ListItem Value="3">Relative</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Gender</label>
                                    <asp:DropDownList runat="server" ID="gender" CssClass="form-control">

                                        <asp:ListItem Value="" disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="1">Male</asp:ListItem>
                                        <asp:ListItem Value="2">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Contact">Contact No.</label>
                                    <asp:TextBox ID="txtContactNo" runat="server" MaxLength="15" CssClass="form-control" placeHolder="Contact No."></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="UploadImage">Upload Image</label>
                                    <asp:FileUpload ID="FileUploadImage" runat="server" multiple accept='image/*' CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <h4>Basic Information</h4>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="FirstName">First Name</label>
                                    <asp:TextBox ID="txtFirstName" runat="server" type="text" CssClass="form-control" placeHolder="First Name"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="lastName">Last Name</label>
                                    <asp:TextBox ID="txtLastName" runat="server" type="text" CssClass="form-control" placeHolder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Dob">Date of Birth</label>
                                    <input id="txtDob" runat="server" type="date" class="form-control" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Community">Community</label>
                                    <asp:TextBox ID="txtCommunity" runat="server" type="text" CssClass="form-control" placeHolder="Community"></asp:TextBox>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Religion">Religion</label>
                                    <asp:DropDownList ID="religion" runat="server" CssClass="form-control">

                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem>Hindu</asp:ListItem>
                                        <asp:ListItem>Muslim</asp:ListItem>
                                        <asp:ListItem>Christian</asp:ListItem>
                                        <asp:ListItem>Sikh</asp:ListItem>
                                        <asp:ListItem>Parsi</asp:ListItem>
                                        <asp:ListItem>Buddhist</asp:ListItem>
                                        <asp:ListItem>jewish</asp:ListItem>
                                        <asp:ListItem>No religion</asp:ListItem>
                                        <asp:ListItem>spirtual</asp:ListItem>
                                        <asp:ListItem>other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="MotherTongue">Mother Tongue</label>
                                    <asp:DropDownList ID="mother_tougne" runat="server" CssClass="form-control">
                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="en">English</asp:ListItem>
                                        <asp:ListItem Value="af">Afrikaans</asp:ListItem>
                                        <asp:ListItem Value="sq">Albanian</asp:ListItem>
                                        <asp:ListItem Value="am">Amharic</asp:ListItem>
                                        <asp:ListItem Value="ar">Arabic</asp:ListItem>
                                        <asp:ListItem Value="hy">Armenian</asp:ListItem>
                                        <asp:ListItem Value="az">Azerbaijani</asp:ListItem>
                                        <asp:ListItem Value="eu">Basque</asp:ListItem>
                                        <asp:ListItem Value="be">Belarusian</asp:ListItem>
                                        <asp:ListItem Value="bn">Bengali</asp:ListItem>
                                        <asp:ListItem Value="bs">Bosnian</asp:ListItem>
                                        <asp:ListItem Value="bg">Bulgarian</asp:ListItem>
                                        <asp:ListItem Value="ca">Catalan</asp:ListItem>
                                        <asp:ListItem Value="ceb">Cebuano</asp:ListItem>
                                        <asp:ListItem Value="ny">Chichewa</asp:ListItem>
                                        <asp:ListItem Value="zh-CN">Chinese (Simplified)</asp:ListItem>
                                        <asp:ListItem Value="zh-TW">Chinese (Traditional)</asp:ListItem>
                                        <asp:ListItem Value="co">Corsican</asp:ListItem>
                                        <asp:ListItem Value="hr">Croatian</asp:ListItem>
                                        <asp:ListItem Value="cs">Czech</asp:ListItem>
                                        <asp:ListItem Value="da">Danish</asp:ListItem>
                                        <asp:ListItem Value="nl">Dutch</asp:ListItem>
                                        <asp:ListItem Value="eo">Esperanto</asp:ListItem>
                                        <asp:ListItem Value="et">Estonian</asp:ListItem>
                                        <asp:ListItem Value="tl">Filipino</asp:ListItem>
                                        <asp:ListItem Value="fi">Finnish</asp:ListItem>
                                        <asp:ListItem Value="fr">French</asp:ListItem>
                                        <asp:ListItem Value="fy">Frisian</asp:ListItem>
                                        <asp:ListItem Value="gl">Galician</asp:ListItem>
                                        <asp:ListItem Value="ka">Georgian</asp:ListItem>
                                        <asp:ListItem Value="de">German</asp:ListItem>
                                        <asp:ListItem Value="el">Greek</asp:ListItem>
                                        <asp:ListItem Value="gu">Gujarati</asp:ListItem>
                                        <asp:ListItem Value="ht">Haitian Creole</asp:ListItem>
                                        <asp:ListItem Value="ha">Hausa</asp:ListItem>
                                        <asp:ListItem Value="haw">Hawaiian</asp:ListItem>
                                        <asp:ListItem Value="iw">Hebrew</asp:ListItem>
                                        <asp:ListItem Value="hi">Hindi</asp:ListItem>
                                        <asp:ListItem Value="hmn">Hmong</asp:ListItem>
                                        <asp:ListItem Value="hu">Hungarian</asp:ListItem>
                                        <asp:ListItem Value="is">Icelandic</asp:ListItem>
                                        <asp:ListItem Value="ig">Igbo</asp:ListItem>
                                        <asp:ListItem Value="id">Indonesian</asp:ListItem>
                                        <asp:ListItem Value="ga">Irish</asp:ListItem>
                                        <asp:ListItem Value="it">Italian</asp:ListItem>
                                        <asp:ListItem Value="ja">Japanese</asp:ListItem>
                                        <asp:ListItem Value="jw">Javanese</asp:ListItem>
                                        <asp:ListItem Value="kn">Kannada</asp:ListItem>
                                        <asp:ListItem Value="kk">Kazakh</asp:ListItem>
                                        <asp:ListItem Value="km">Khmer</asp:ListItem>
                                        <asp:ListItem Value="ko">Korean</asp:ListItem>
                                        <asp:ListItem Value="ku">Kurdish (Kurmanji)</asp:ListItem>
                                        <asp:ListItem Value="ky">Kyrgyz</asp:ListItem>
                                        <asp:ListItem Value="lo">Lao</asp:ListItem>
                                        <asp:ListItem Value="la">Latin</asp:ListItem>
                                        <asp:ListItem Value="lv">Latvian</asp:ListItem>
                                        <asp:ListItem Value="lt">Lithuanian</asp:ListItem>
                                        <asp:ListItem Value="lb">Luxembourgish</asp:ListItem>
                                        <asp:ListItem Value="mk">Macedonian</asp:ListItem>
                                        <asp:ListItem Value="mg">Malagasy</asp:ListItem>
                                        <asp:ListItem Value="ms">Malay</asp:ListItem>
                                        <asp:ListItem Value="ml">Malayalam</asp:ListItem>
                                        <asp:ListItem Value="mt">Maltese</asp:ListItem>
                                        <asp:ListItem Value="mi">Maori</asp:ListItem>
                                        <asp:ListItem Value="mr">Marathi</asp:ListItem>
                                        <asp:ListItem Value="mn">Mongolian</asp:ListItem>
                                        <asp:ListItem Value="my">Myanmar (Burmese)</asp:ListItem>
                                        <asp:ListItem Value="ne">Nepali</asp:ListItem>
                                        <asp:ListItem Value="no">Norwegian</asp:ListItem>
                                        <asp:ListItem Value="ps">Pashto</asp:ListItem>
                                        <asp:ListItem Value="fa">Persian</asp:ListItem>
                                        <asp:ListItem Value="pl">Polish</asp:ListItem>
                                        <asp:ListItem Value="pt">Portuguese</asp:ListItem>
                                        <asp:ListItem Value="pa">Punjabi</asp:ListItem>
                                        <asp:ListItem Value="ro">Romanian</asp:ListItem>
                                        <asp:ListItem Value="ru">Russian</asp:ListItem>
                                        <asp:ListItem Value="sm">Samoan</asp:ListItem>
                                        <asp:ListItem Value="gd">Scots Gaelic</asp:ListItem>
                                        <asp:ListItem Value="sr">Serbian</asp:ListItem>
                                        <asp:ListItem Value="st">Sesotho</asp:ListItem>
                                        <asp:ListItem Value="sn">Shona</asp:ListItem>
                                        <asp:ListItem Value="sd">Sindhi</asp:ListItem>
                                        <asp:ListItem Value="si">Sinhala</asp:ListItem>
                                        <asp:ListItem Value="sk">Slovak</asp:ListItem>
                                        <asp:ListItem Value="sl">Slovenian</asp:ListItem>
                                        <asp:ListItem Value="so">Somali</asp:ListItem>
                                        <asp:ListItem Value="es">Spanish</asp:ListItem>
                                        <asp:ListItem Value="su">Sundanese</asp:ListItem>
                                        <asp:ListItem Value="sw">Swahili</asp:ListItem>
                                        <asp:ListItem Value="sv">Swedish</asp:ListItem>
                                        <asp:ListItem Value="tg">Tajik</asp:ListItem>
                                        <asp:ListItem Value="ta">Tamil</asp:ListItem>
                                        <asp:ListItem Value="te">Telugu</asp:ListItem>
                                        <asp:ListItem Value="th">Thai</asp:ListItem>
                                        <asp:ListItem Value="tr">Turkish</asp:ListItem>
                                        <asp:ListItem Value="uk">Ukrainian</asp:ListItem>
                                        <asp:ListItem Value="ur">Urdu</asp:ListItem>
                                        <asp:ListItem Value="uz">Uzbek</asp:ListItem>
                                        <asp:ListItem Value="vi">Vietnamese</asp:ListItem>
                                        <asp:ListItem Value="cy">Welsh</asp:ListItem>
                                        <asp:ListItem Value="xh">Xhosa</asp:ListItem>
                                        <asp:ListItem Value="yi">Yiddish</asp:ListItem>
                                        <asp:ListItem Value="yo">Yoruba</asp:ListItem>
                                        <asp:ListItem Value="zu">Zulu</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Countries</label>
                                    <asp:DropDownList ID="ddlcountry" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:HiddenField ID="hfCountry" runat="server" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>States</label>
                                    <asp:DropDownList ID="ddlstate" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:HiddenField ID="hfState" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Cities</label>
                                    <asp:DropDownList ID="ddlcity" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:HiddenField ID="hfCity" runat="server" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="MaritalStatus">Marital Status</label>
                                    <asp:DropDownList ID="maritl_status" runat="server" CssClass="form-control">

                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem>Never Married</asp:ListItem>
                                        <asp:ListItem>Divorced</asp:ListItem>
                                        <asp:ListItem>Widowed</asp:ListItem>
                                        <asp:ListItem>Awaiting Divorce</asp:ListItem>
                                        <asp:ListItem>Married</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <h4>Education Information</h4>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="EducationLevel">Education Level</label>
                                    <asp:DropDownList ID="education_level" runat="server" CssClass="form-control">
                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="Doctorate">Doctorate</asp:ListItem>
                                        <asp:ListItem Value="Masters">Masters</asp:ListItem>
                                        <asp:ListItem Value="Honours Degree">Honours Degree</asp:ListItem>
                                        <asp:ListItem Value="Bachelors">Bachelors</asp:ListItem>
                                        <asp:ListItem Value="Associates Degree">Associates Degree</asp:ListItem>
                                        <asp:ListItem Value="Diploma">Diploma</asp:ListItem>
                                        <asp:ListItem Value="High School">High School</asp:ListItem>
                                        <asp:ListItem Value="Less than School">Less Than School</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Education Field <sup>(Optional)</sup> </label>
                                    <asp:TextBox ID="txtEducationField" runat="server" type="text" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Work with</label>
                                    <asp:DropDownList ID="work_with" runat="server" CssClass="form-control">
                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="Private Company">Private Company</asp:ListItem>
                                        <asp:ListItem Value="government/Public Sector">government/Public Sector</asp:ListItem>
                                        <asp:ListItem Value="civil/defense services">Civil/Defense Services</asp:ListItem>
                                        <asp:ListItem Value="Bussiness/Self Employed">Bussiness/Self Employed</asp:ListItem>
                                        <asp:ListItem Value="Now Working">Now Working</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Designation <sup>(optional)</sup></label>
                                    <asp:TextBox ID="txtDesignation" runat="server" type="text" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>annual income</label>
                                    <asp:DropDownList ID="annual_income" runat="server" CssClass="form-control">

                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="USD 400K">USD 400K</asp:ListItem>
                                        <asp:ListItem Value="USD 400K to 500K">USD 400K to 500K</asp:ListItem>
                                        <asp:ListItem Value="USD 500K to 600K">USD 500K to 600K</asp:ListItem>
                                        <asp:ListItem Value="USD 600K to 700K">USD 600K to 700K</asp:ListItem>
                                        <asp:ListItem Value="USD UPTO 700K">USD UPTO 700K</asp:ListItem>

                                    </asp:DropDownList>


                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <h4>Life Style</h4>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Diet</label>
                                    <asp:DropDownList ID="dite" runat="server" CssClass="form-control">
                                        <asp:ListItem disabled Selected>select</asp:ListItem>
                                        <asp:ListItem Value="Veg">Veg</asp:ListItem>
                                        <asp:ListItem Value="Non-Veg">Non-Veg</asp:ListItem>
                                        <asp:ListItem Value="Occasionally Non-Veg">Occasionally Non-Veg</asp:ListItem>
                                        <asp:ListItem Value="Eggearian">Eggearian</asp:ListItem>
                                        <asp:ListItem Value="Jain">Jain</asp:ListItem>
                                        <asp:ListItem Value="Vegan">Vegan</asp:ListItem>

                                    </asp:DropDownList>


                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Height <sup>(In Inches)</sup></label>
                                    <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control" type="text" placeholder="Height"></asp:TextBox>
                                </div>
                            </div>
                            <p></p>
                            <div class="row">

                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Smoke</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RblSmoke" ForeColor="Red" ErrorMessage="&nbsp&nbsp&nbsp* You must select at least 1"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="RblSmoke" runat="server" CssClass="form-check" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem style="margin-right: 40px; margin-left: 50px;">Occasionally</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Drink</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RblDrink" ForeColor="Red" ErrorMessage="&nbsp&nbsp&nbsp* You must select at least 1"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="RblDrink" runat="server" CssClass="form-check" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem style="margin-right: 40px; margin-left: 50px;">Occasionally</asp:ListItem>
                                        <asp:ListItem>Yes</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 mt-3">
                            <h4>Describe Yourself</h4>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="textarea">About Myself</label>
                                    <asp:TextBox ID="txtDescribeYourself" runat="server" TextMode="MultiLine" Height="200px" Style="resize: none;" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Disability">Disability</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RblDisablity" ForeColor="Red" ErrorMessage="&nbsp&nbsp&nbsp* You must select at least 1"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="RblDisablity" runat="server" CssClass="form-check" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                        <asp:ListItem>No</asp:ListItem>
                                        <asp:ListItem style="margin-left: 50px;">Yes</asp:ListItem>

                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <p></p>
                        <div class="col-12 mt-5">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 d-block">
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block text-center">
                                    <%-- <asp:Button ID="btnClear" runat="server" Text="CLEAR ALL" type="submit" CssClass="btn  bg-danger text-white" OnClick="btnClear_Click" />--%>
                                    <button id="btnClear" value="CLEAR ALL" type="reset" class="btn bg-danger text-white" onclick="clearfields()">CLEAR ALL</button>
                                    &nbsp &nbsp &nbsp &nbsp 
                                    <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btn  bg-success text-white" OnClick="btnSubmit_Click" />
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3 d-block">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 d-block">
                    </div>

                </div>
            </div>
        </asp:Panel>
        <asp:Panel ID="pnlMatch" runat="server" Visible="true">
            <div class="container">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-1 d-block">
                    </div>
                    <div class="col-lg-10 col-md-10 col-sm-10">
                        <div class="col-12 mt-3">
                            <h4>Partner Preference</h4>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Gender</label>
                                    <asp:DropDownList runat="server" ID="ddlpartGender" CssClass="form-control">

                                        <asp:ListItem Value="" disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="1">Male</asp:ListItem>
                                        <asp:ListItem Value="2">Female</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Community">Community</label>
                                    <asp:TextBox ID="txtPartCommunity" runat="server" type="text" CssClass="form-control" placeHolder="Community"></asp:TextBox>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="Religion">Religion</label>
                                    <asp:DropDownList ID="ddlPartReligion" runat="server" CssClass="form-control">

                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem>Hindu</asp:ListItem>
                                        <asp:ListItem>Muslim</asp:ListItem>
                                        <asp:ListItem>Christian</asp:ListItem>
                                        <asp:ListItem>Sikh</asp:ListItem>
                                        <asp:ListItem>Parsi</asp:ListItem>
                                        <asp:ListItem>Buddhist</asp:ListItem>
                                        <asp:ListItem>jewish</asp:ListItem>
                                        <asp:ListItem>No religion</asp:ListItem>
                                        <asp:ListItem>spirtual</asp:ListItem>
                                        <asp:ListItem>other</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="MotherTongue">Mother Tongue</label>
                                    <asp:DropDownList ID="ddlPartMotherTongue" runat="server" CssClass="form-control">

                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="af">Afrikaans</asp:ListItem>
                                        <asp:ListItem Value="sq">Albanian</asp:ListItem>
                                        <asp:ListItem Value="am">Amharic</asp:ListItem>
                                        <asp:ListItem Value="ar">Arabic</asp:ListItem>
                                        <asp:ListItem Value="hy">Armenian</asp:ListItem>
                                        <asp:ListItem Value="az">Azerbaijani</asp:ListItem>
                                        <asp:ListItem Value="eu">Basque</asp:ListItem>
                                        <asp:ListItem Value="be">Belarusian</asp:ListItem>
                                        <asp:ListItem Value="bn">Bengali</asp:ListItem>
                                        <asp:ListItem Value="bs">Bosnian</asp:ListItem>
                                        <asp:ListItem Value="bg">Bulgarian</asp:ListItem>
                                        <asp:ListItem Value="ca">Catalan</asp:ListItem>
                                        <asp:ListItem Value="ceb">Cebuano</asp:ListItem>
                                        <asp:ListItem Value="ny">Chichewa</asp:ListItem>
                                        <asp:ListItem Value="zh-CN">Chinese (Simplified)</asp:ListItem>
                                        <asp:ListItem Value="zh-TW">Chinese (Traditional)</asp:ListItem>
                                        <asp:ListItem Value="co">Corsican</asp:ListItem>
                                        <asp:ListItem Value="hr">Croatian</asp:ListItem>
                                        <asp:ListItem Value="cs">Czech</asp:ListItem>
                                        <asp:ListItem Value="da">Danish</asp:ListItem>
                                        <asp:ListItem Value="nl">Dutch</asp:ListItem>
                                        <asp:ListItem Value="eo">Esperanto</asp:ListItem>
                                        <asp:ListItem Value="et">Estonian</asp:ListItem>
                                        <asp:ListItem Value="tl">Filipino</asp:ListItem>
                                        <asp:ListItem Value="fi">Finnish</asp:ListItem>
                                        <asp:ListItem Value="fr">French</asp:ListItem>
                                        <asp:ListItem Value="fy">Frisian</asp:ListItem>
                                        <asp:ListItem Value="gl">Galician</asp:ListItem>
                                        <asp:ListItem Value="ka">Georgian</asp:ListItem>
                                        <asp:ListItem Value="de">German</asp:ListItem>
                                        <asp:ListItem Value="el">Greek</asp:ListItem>
                                        <asp:ListItem Value="gu">Gujarati</asp:ListItem>
                                        <asp:ListItem Value="ht">Haitian Creole</asp:ListItem>
                                        <asp:ListItem Value="ha">Hausa</asp:ListItem>
                                        <asp:ListItem Value="haw">Hawaiian</asp:ListItem>
                                        <asp:ListItem Value="iw">Hebrew</asp:ListItem>
                                        <asp:ListItem Value="hi">Hindi</asp:ListItem>
                                        <asp:ListItem Value="hmn">Hmong</asp:ListItem>
                                        <asp:ListItem Value="hu">Hungarian</asp:ListItem>
                                        <asp:ListItem Value="is">Icelandic</asp:ListItem>
                                        <asp:ListItem Value="ig">Igbo</asp:ListItem>
                                        <asp:ListItem Value="id">Indonesian</asp:ListItem>
                                        <asp:ListItem Value="ga">Irish</asp:ListItem>
                                        <asp:ListItem Value="it">Italian</asp:ListItem>
                                        <asp:ListItem Value="ja">Japanese</asp:ListItem>
                                        <asp:ListItem Value="jw">Javanese</asp:ListItem>
                                        <asp:ListItem Value="kn">Kannada</asp:ListItem>
                                        <asp:ListItem Value="kk">Kazakh</asp:ListItem>
                                        <asp:ListItem Value="km">Khmer</asp:ListItem>
                                        <asp:ListItem Value="ko">Korean</asp:ListItem>
                                        <asp:ListItem Value="ku">Kurdish (Kurmanji)</asp:ListItem>
                                        <asp:ListItem Value="ky">Kyrgyz</asp:ListItem>
                                        <asp:ListItem Value="lo">Lao</asp:ListItem>
                                        <asp:ListItem Value="la">Latin</asp:ListItem>
                                        <asp:ListItem Value="lv">Latvian</asp:ListItem>
                                        <asp:ListItem Value="lt">Lithuanian</asp:ListItem>
                                        <asp:ListItem Value="lb">Luxembourgish</asp:ListItem>
                                        <asp:ListItem Value="mk">Macedonian</asp:ListItem>
                                        <asp:ListItem Value="mg">Malagasy</asp:ListItem>
                                        <asp:ListItem Value="ms">Malay</asp:ListItem>
                                        <asp:ListItem Value="ml">Malayalam</asp:ListItem>
                                        <asp:ListItem Value="mt">Maltese</asp:ListItem>
                                        <asp:ListItem Value="mi">Maori</asp:ListItem>
                                        <asp:ListItem Value="mr">Marathi</asp:ListItem>
                                        <asp:ListItem Value="mn">Mongolian</asp:ListItem>
                                        <asp:ListItem Value="my">Myanmar (Burmese)</asp:ListItem>
                                        <asp:ListItem Value="ne">Nepali</asp:ListItem>
                                        <asp:ListItem Value="no">Norwegian</asp:ListItem>
                                        <asp:ListItem Value="ps">Pashto</asp:ListItem>
                                        <asp:ListItem Value="fa">Persian</asp:ListItem>
                                        <asp:ListItem Value="pl">Polish</asp:ListItem>
                                        <asp:ListItem Value="pt">Portuguese</asp:ListItem>
                                        <asp:ListItem Value="pa">Punjabi</asp:ListItem>
                                        <asp:ListItem Value="ro">Romanian</asp:ListItem>
                                        <asp:ListItem Value="ru">Russian</asp:ListItem>
                                        <asp:ListItem Value="sm">Samoan</asp:ListItem>
                                        <asp:ListItem Value="gd">Scots Gaelic</asp:ListItem>
                                        <asp:ListItem Value="sr">Serbian</asp:ListItem>
                                        <asp:ListItem Value="st">Sesotho</asp:ListItem>
                                        <asp:ListItem Value="sn">Shona</asp:ListItem>
                                        <asp:ListItem Value="sd">Sindhi</asp:ListItem>
                                        <asp:ListItem Value="si">Sinhala</asp:ListItem>
                                        <asp:ListItem Value="sk">Slovak</asp:ListItem>
                                        <asp:ListItem Value="sl">Slovenian</asp:ListItem>
                                        <asp:ListItem Value="so">Somali</asp:ListItem>
                                        <asp:ListItem Value="es">Spanish</asp:ListItem>
                                        <asp:ListItem Value="su">Sundanese</asp:ListItem>
                                        <asp:ListItem Value="sw">Swahili</asp:ListItem>
                                        <asp:ListItem Value="sv">Swedish</asp:ListItem>
                                        <asp:ListItem Value="tg">Tajik</asp:ListItem>
                                        <asp:ListItem Value="ta">Tamil</asp:ListItem>
                                        <asp:ListItem Value="te">Telugu</asp:ListItem>
                                        <asp:ListItem Value="th">Thai</asp:ListItem>
                                        <asp:ListItem Value="tr">Turkish</asp:ListItem>
                                        <asp:ListItem Value="uk">Ukrainian</asp:ListItem>
                                        <asp:ListItem Value="ur">Urdu</asp:ListItem>
                                        <asp:ListItem Value="uz">Uzbek</asp:ListItem>
                                        <asp:ListItem Value="vi">Vietnamese</asp:ListItem>
                                        <asp:ListItem Value="cy">Welsh</asp:ListItem>
                                        <asp:ListItem Value="xh">Xhosa</asp:ListItem>
                                        <asp:ListItem Value="yi">Yiddish</asp:ListItem>
                                        <asp:ListItem Value="yo">Yoruba</asp:ListItem>
                                        <asp:ListItem Value="zu">Zulu</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Countries</label>
                                    <asp:DropDownList ID="ddlPartCountry" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:HiddenField ID="hfPartCountry" runat="server" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>States</label>
                                    <asp:DropDownList ID="ddlPartStates" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:HiddenField ID="hfPartState" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Cities</label>
                                    <asp:DropDownList ID="ddlPartCity" runat="server" CssClass="form-control"></asp:DropDownList>
                                    <asp:HiddenField ID="hfPartCity" runat="server" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="MaritalStatus">Marital Status</label>
                                    <asp:DropDownList ID="ddlPartMaritalStatus" runat="server" CssClass="form-control">

                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem>Never Married</asp:ListItem>
                                        <asp:ListItem>divorced</asp:ListItem>
                                        <asp:ListItem>widowed</asp:ListItem>
                                        <asp:ListItem>awaiting divorce</asp:ListItem>
                                        <asp:ListItem>married</asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label for="EducationLevel">Education Level</label>
                                    <asp:DropDownList ID="ddlPartEducatoinLevel" runat="server" CssClass="form-control">
                                        <asp:ListItem disabled Selected>Select</asp:ListItem>
                                        <asp:ListItem Value="Doctorate">Doctorate</asp:ListItem>
                                        <asp:ListItem Value="Masters">Masters</asp:ListItem>
                                        <asp:ListItem Value="Honours Degree">Honours Degree</asp:ListItem>
                                        <asp:ListItem Value="Bachelors">Bachelors</asp:ListItem>
                                        <asp:ListItem Value="Associates Degree">Associates Degree</asp:ListItem>
                                        <asp:ListItem Value="Diploma">Diploma</asp:ListItem>
                                        <asp:ListItem Value="High School">High School</asp:ListItem>
                                        <asp:ListItem Value="Less than School">Less Than School</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Education Field <sup>(Optional)</sup> </label>
                                    <asp:TextBox ID="txtPartEducationField" runat="server" type="text" CssClass="form-control" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Diet</label>
                                    <asp:DropDownList ID="ddlPartDiet" runat="server" CssClass="form-control">
                                        <asp:ListItem disabled Selected>select</asp:ListItem>
                                        <asp:ListItem Value="Veg">Veg</asp:ListItem>
                                        <asp:ListItem Value="Non-Veg">Non-Veg</asp:ListItem>
                                        <asp:ListItem Value="Occasionally Non-Veg">Occasionally Non-Veg</asp:ListItem>
                                        <asp:ListItem Value="Eggearian">Eggearian</asp:ListItem>
                                        <asp:ListItem Value="Jain">Jain</asp:ListItem>
                                        <asp:ListItem Value="Vegan">Vegan</asp:ListItem>

                                    </asp:DropDownList>


                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Height <sup>(In Inches)</sup></label>
                                    <asp:TextBox ID="txtPartHeight" runat="server" CssClass="form-control" type="text" placeholder="Height"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Age From</label>
                                    <asp:DropDownList ID="ddlAgeFrom" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 d-block">
                                    <label>Age To</label>
                                    <asp:DropDownList ID="ddlAgeTo" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <p></p>
                            <div class="col-12 mt-5">
                                <div class="row">
                                    <div class="col-lg-3 col-md-3 col-sm-3 d-block">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 d-block text-center">
                                        <%-- <asp:Button ID="btnClear" runat="server" Text="CLEAR ALL" type="submit" CssClass="btn  bg-danger text-white" OnClick="btnClear_Click" />--%>
                                        <button id="btnClearPart" value="CLEAR ALL" type="reset" class="btn bg-danger text-white" onclick="clearPartFileds()">CLEAR ALL</button>
                                        &nbsp &nbsp &nbsp &nbsp 
                                        <asp:Button ID="btnPartSubmit" runat="server" Text="SUBMIT" CssClass="btn  bg-success text-white" OnClick="btnPartSubmit_Click" />
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 d-block">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 col-md-1 col-sm-1 d-block">
                    </div>
                </div>
            </div>
        </asp:Panel>
        <p></p>
        <%-- Form --%>
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
