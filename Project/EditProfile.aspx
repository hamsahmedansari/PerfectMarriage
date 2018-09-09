<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="PerfetMarriage_01March2018_.EditProfile" %>

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
    <script type="text/javascript" src="dist/js/EditProfile.js"></script>
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
                            <asp:Button runat="server" ID="btnUpgrade" OnClick="btnUpgrade_Click" Text="Upgrade" CssClass="btn btn-outline-light" />
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
        <div class="container">
            <div class="my-Box p-2 mt-2">
                <%--Basic And Lifestyle--%>
                <h3 class="border-bottom-1-info p-2">Edit Your Basic And Lifestyle Info
                <span style="font-size: 16px !important;">(Some of your information cannot be edited)</span>
                </h3>
                <div class="row form-group">
                    <div class="col-12 text-center">
                        <img src="img/test.jpg" class="img-thumbnail" runat="server" id="txtProfilePic" style="height: 250px; width: 200px;" alt="" />
                        <asp:FileUpload runat="server" ID="txtImageUpload" CssClass="" />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Age:
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtAge" CssClass="form-control think-border" disabled />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Date Of Birth:
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtDateOfBirth" TextMode="Date" CssClass="form-control think-border" />
                        <asp:Label Text="Please Select Date Of Birth" ID="errDateRequired" runat="server" Visible="false" Style="color: #f30f0f;" />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Marital Status:
                    </div>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="dpdMaritalStatus" runat="server" CssClass="form-control think-border">
                            <asp:ListItem disabled Selected>Select</asp:ListItem>
                            <asp:ListItem>Never Married</asp:ListItem>
                            <asp:ListItem>Divorced</asp:ListItem>
                            <asp:ListItem>Widowed</asp:ListItem>
                            <asp:ListItem>Awaiting Divorce</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Height:
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtHeight" CssClass="form-control think-border" />
                        <asp:Label Text="Please Enter Height" ID="errHeightRequired" runat="server" Visible="false" Style="color: #f30f0f;" />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Diet:
                    </div>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="dpdDiet" runat="server" CssClass="form-control think-border">
                            <asp:ListItem disabled Selected>select</asp:ListItem>
                            <asp:ListItem Value="Veg">Veg</asp:ListItem>
                            <asp:ListItem Value="Non-Veg">Non-Veg</asp:ListItem>
                            <asp:ListItem Value="Occasionally Non-Veg">Occasionally Non-Veg</asp:ListItem>
                            <asp:ListItem Value="Eggearian">Eggearian</asp:ListItem>
                            <asp:ListItem Value="Jain">Jain</asp:ListItem>
                            <asp:ListItem Value="Vegan">Vegan</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Drink:
                    </div>
                    <div class="col-sm-10">
                        <asp:RadioButtonList ID="RblDrink" runat="server" CssClass="form-check" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem style="margin-right: 40px; margin-left: 50px;">Occasionally</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Smoke:
                    </div>
                    <div class="col-sm-10">
                        <asp:RadioButtonList ID="RblSmoke" runat="server" CssClass="form-check" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem style="margin-right: 40px; margin-left: 50px;">Occasionally</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Disability:
                    </div>
                    <div class="col-sm-10">
                        <asp:RadioButtonList ID="RblDisablity" runat="server" CssClass="form-check" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem style="margin-left: 50px;">Yes</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        About/Interests
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtAbout" TextMode="MultiLine" Rows="5" CssClass="form-control think-border" />
                    </div>
                </div>

                <%--Basic And Lifestyle End--%>

                <h3 class="border-bottom-1-info p-2">Edit Your Religious Background And Other Details</h3>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Religion:
                    </div>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="dpdReligion" runat="server" CssClass="form-control think-border">
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
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Community:
                    </div>
                    <div class="col-sm-10">
                        <asp:TextBox runat="server" ID="txtCommunity" CssClass="form-control think-border" />
                        <asp:Label Text="Please Enter Community" ID="errCommunityRequired" runat="server" Visible="false" Style="color: #f30f0f;" />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2">
                        Mother Tongue:
                    </div>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="dpdMotherTongue" runat="server" CssClass="form-control think-border">
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
                <div class="row form-group">
                    <div class="col-12 text-center">
                        <asp:Button Text="Cancel" ID="btnCancel" runat="server" OnClick="btnCancel_Click" CssClass="btn btn-success" />
                        &nbsp;
                        &nbsp;
                        <asp:Button Text="Update" ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
