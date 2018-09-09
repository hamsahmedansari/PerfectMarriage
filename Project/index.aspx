<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PerfectIndex.index" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Perfect Marriage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="img/SMALLLOGO.png" />

    <%-- Css  --%>

        <%-- Boostrap --%>
            <link href="dist/css/bootstrap.css" rel="stylesheet" />

        <%-- Custom --%>
            <link href="dist/css/Custom-index.css" rel="stylesheet" />

        <%-- Font --%>
            <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

        <%-- Icon --%>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <%-- Owl --%>
            <link href="dist/css/owl.carousel.css" rel="stylesheet" />
            <link href="dist/css/owl.theme.default.css" rel="stylesheet" />

    <%-- JS --%>

        <%-- JQUERY --%>
            <script src="dist/js/jquery-slim.min.js"></script>

        <%-- Boostrap --%>
            <script src="dist/js/bootstrap.js"></script>

        <%-- Owl --%>
            <script src="dist/js/owl.carousel.js"></script>

        <%-- Custom --%>
            <script src="dist/js/main.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#btnSearch").click(function () {
                document.getElementById("logintxt").innerHTML = "You Must Login to Search";
            });
        });
    </script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div >
            
            <%-- Header Start --%>

            <div class="w-100 cutom_header_bg_image ">

                <%-- Top Logo Start --%>

                <div class=" ">

                    <div class="container">

                        <div class="row">

                        <div class="col-lg-4 col-xl-4 col-md-4 col-sm-4 col-6">

                            <div class="text-center text-lg-left text-md-left text-sm-left text-white mt-2">

                                <img src="img/Logo.png" class="img-fluid img custom_main_logo d-inline-block" alt="" />

                            </div>

                        </div>
                        
                        <div class="col-lg-8 col-xl-8 col-md-8 col-sm-8 col-6">

                            <div class="text-center text-lg-right text-md-right text-sm-right text-white custom_main_top_logo">

                                <div class="d-inline-block login_div_visiable" data-toggle="modal" data-target="#myModal">
                                    Login <span class="fa fa-angle-down	"></span>
                                </div>

                                <div class="d-inline-block ml-5">
                                    Help
                                </div>

                            </div>

                        </div>
                    </div>

                    </div>

                    <div class=" text-white text-center text-capitalize">

                        <div class="col-12 text-center custom_top_filter">
                             <h1>Meet someone for keeps</h1>
                        </div>

                    </div>


                    <div class="  p-4 custom_bgackground text-white">

                        <div class="container custom_for_responsive">
                            <div class="row">
                                
                        <div class="col-lg-2 col-md-4 col-sm-6 col-12">

                            <label>I'm looking for a</label>
                            <asp:DropDownList ID="inputGender" runat="server" CssClass="form-control">

                                <asp:ListItem>Woman</asp:ListItem>
                                <asp:ListItem>Man</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">

                          
                            <label>Aged</label>

                            <div class="row">
                                <div class="col-5">

                                    <asp:DropDownList ID="inputAgeFrom" runat="server" CssClass="form-control">

                                    </asp:DropDownList>

                                </div>
                                <div class="col-2">
                                    to
                                </div>
                                <div class="col-5">

                                    <asp:DropDownList ID="inputAgeTo" runat="server" CssClass="form-control">

                                    </asp:DropDownList>

                                </div>
                            </div>

                        </div>

                        <div class="col-lg-2 col-md-4 col-sm-6 col-12">

                            <label>of religion</label>
                            <select id="inputCommunity" class="form-control" >
                                <option value="Hindu" label="Hindu">Hindu</option>
                                <option value="Muslim" label="Muslim">Muslim</option>
                                <option value="Christian" label="Christian">Christian</option>
                                <option value="Sikh" label="Sikh">Sikh</option>
                                <option value="Parsi" label="Parsi">Parsi</option>
                                <option value="Jain" label="Jain">Jain</option>
                                <option value="Buddhist" label="Buddhist">Buddhist</option>
                                <option value="Jewish" label="Jewish">Jewish</option>
                                <option value="No Religion" label="No Religion">No Religion</option>
                                <option value="Spiritual - not religious" label="Spiritual">Spiritual</option>
                                <option value="Other" label="Other">Other</option>
                            </select>
                        </div>

                        <div class="col-lg-2 col-md-5 col-sm-6 col-12">

                            <label>
                                and mother tongue
                            </label>

                            <asp:DropDownList ID="inputMotherTongue" CssClass="form-control" runat="server">
                             
                                <asp:ListItem  disabled selected>Select</asp:ListItem>
                                     <asp:ListItem value="af">Afrikaans</asp:ListItem>
                                     <asp:ListItem value="sq">Albanian</asp:ListItem>
                                     <asp:ListItem value="am">Amharic</asp:ListItem>
                                     <asp:ListItem value="ar">Arabic</asp:ListItem>
                                     <asp:ListItem value="hy">Armenian</asp:ListItem>
                                     <asp:ListItem value="az">Azerbaijani</asp:ListItem>
                                     <asp:ListItem value="eu">Basque</asp:ListItem>
                                     <asp:ListItem value="be">Belarusian</asp:ListItem>
                                     <asp:ListItem value="bn">Bengali</asp:ListItem>
                                     <asp:ListItem value="bs">Bosnian</asp:ListItem>
                                     <asp:ListItem value="bg">Bulgarian</asp:ListItem>
                                     <asp:ListItem value="ca">Catalan</asp:ListItem>
                                     <asp:ListItem value="ceb">Cebuano</asp:ListItem>
                                     <asp:ListItem value="ny">Chichewa</asp:ListItem>
                                     <asp:ListItem value="zh-CN">Chinese (Simplified)</asp:ListItem>
                                     <asp:ListItem value="zh-TW">Chinese (Traditional)</asp:ListItem>
                                     <asp:ListItem value="co">Corsican</asp:ListItem>
                                     <asp:ListItem value="hr">Croatian</asp:ListItem>
                                     <asp:ListItem value="cs">Czech</asp:ListItem>
                                     <asp:ListItem value="da">Danish</asp:ListItem>
                                     <asp:ListItem value="nl">Dutch</asp:ListItem>
                                     <asp:ListItem value="eo">Esperanto</asp:ListItem>
                                     <asp:ListItem value="et">Estonian</asp:ListItem>
                                     <asp:ListItem value="tl">Filipino</asp:ListItem>
                                     <asp:ListItem value="fi">Finnish</asp:ListItem>
                                     <asp:ListItem value="fr">French</asp:ListItem>
                                     <asp:ListItem value="fy">Frisian</asp:ListItem>
                                     <asp:ListItem value="gl">Galician</asp:ListItem>
                                     <asp:ListItem value="ka">Georgian</asp:ListItem>
                                     <asp:ListItem value="de">German</asp:ListItem>
                                     <asp:ListItem value="el">Greek</asp:ListItem>
                                     <asp:ListItem value="gu">Gujarati</asp:ListItem>
                                     <asp:ListItem value="ht">Haitian Creole</asp:ListItem>
                                     <asp:ListItem value="ha">Hausa</asp:ListItem>
                                     <asp:ListItem value="haw">Hawaiian</asp:ListItem>
                                     <asp:ListItem value="iw">Hebrew</asp:ListItem>
                                     <asp:ListItem value="hi">Hindi</asp:ListItem>
                                     <asp:ListItem value="hmn">Hmong</asp:ListItem>
                                     <asp:ListItem value="hu">Hungarian</asp:ListItem>
                                     <asp:ListItem value="is">Icelandic</asp:ListItem>
                                     <asp:ListItem value="ig">Igbo</asp:ListItem>
                                     <asp:ListItem value="id">Indonesian</asp:ListItem>
                                     <asp:ListItem value="ga">Irish</asp:ListItem>
                                     <asp:ListItem value="it">Italian</asp:ListItem>
                                     <asp:ListItem value="ja">Japanese</asp:ListItem>
                                     <asp:ListItem value="jw">Javanese</asp:ListItem>
                                     <asp:ListItem value="kn">Kannada</asp:ListItem>
                                     <asp:ListItem value="kk">Kazakh</asp:ListItem>
                                     <asp:ListItem value="km">Khmer</asp:ListItem>
                                     <asp:ListItem value="ko">Korean</asp:ListItem>
                                     <asp:ListItem value="ku">Kurdish (Kurmanji)</asp:ListItem>
                                     <asp:ListItem value="ky">Kyrgyz</asp:ListItem>
                                     <asp:ListItem value="lo">Lao</asp:ListItem>
                                     <asp:ListItem value="la">Latin</asp:ListItem>
                                     <asp:ListItem value="lv">Latvian</asp:ListItem>
                                     <asp:ListItem value="lt">Lithuanian</asp:ListItem>
                                     <asp:ListItem value="lb">Luxembourgish</asp:ListItem>
                                     <asp:ListItem value="mk">Macedonian</asp:ListItem>
                                     <asp:ListItem value="mg">Malagasy</asp:ListItem>
                                     <asp:ListItem value="ms">Malay</asp:ListItem>
                                     <asp:ListItem value="ml">Malayalam</asp:ListItem>
                                     <asp:ListItem value="mt">Maltese</asp:ListItem>
                                     <asp:ListItem value="mi">Maori</asp:ListItem>
                                     <asp:ListItem value="mr">Marathi</asp:ListItem>
                                     <asp:ListItem value="mn">Mongolian</asp:ListItem>
                                     <asp:ListItem value="my">Myanmar (Burmese)</asp:ListItem>
                                     <asp:ListItem value="ne">Nepali</asp:ListItem>
                                     <asp:ListItem value="no">Norwegian</asp:ListItem>
                                     <asp:ListItem value="ps">Pashto</asp:ListItem>
                                     <asp:ListItem value="fa">Persian</asp:ListItem>
                                     <asp:ListItem value="pl">Polish</asp:ListItem>
                                     <asp:ListItem value="pt">Portuguese</asp:ListItem>
                                     <asp:ListItem value="pa">Punjabi</asp:ListItem>
                                     <asp:ListItem value="ro">Romanian</asp:ListItem>
                                     <asp:ListItem value="ru">Russian</asp:ListItem>
                                     <asp:ListItem value="sm">Samoan</asp:ListItem>
                                     <asp:ListItem value="gd">Scots Gaelic</asp:ListItem>
                                     <asp:ListItem value="sr">Serbian</asp:ListItem>
                                     <asp:ListItem value="st">Sesotho</asp:ListItem>
                                     <asp:ListItem value="sn">Shona</asp:ListItem>
                                     <asp:ListItem value="sd">Sindhi</asp:ListItem>
                                     <asp:ListItem value="si">Sinhala</asp:ListItem>
                                     <asp:ListItem value="sk">Slovak</asp:ListItem>
                                     <asp:ListItem value="sl">Slovenian</asp:ListItem>
                                     <asp:ListItem value="so">Somali</asp:ListItem>
                                     <asp:ListItem value="es">Spanish</asp:ListItem>
                                     <asp:ListItem value="su">Sundanese</asp:ListItem>
                                     <asp:ListItem value="sw">Swahili</asp:ListItem>
                                     <asp:ListItem value="sv">Swedish</asp:ListItem>
                                     <asp:ListItem value="tg">Tajik</asp:ListItem>
                                     <asp:ListItem value="ta">Tamil</asp:ListItem>
                                     <asp:ListItem value="te">Telugu</asp:ListItem>
                                     <asp:ListItem value="th">Thai</asp:ListItem>
                                     <asp:ListItem value="tr">Turkish</asp:ListItem>
                                     <asp:ListItem value="uk">Ukrainian</asp:ListItem>
                                     <asp:ListItem value="ur">Urdu</asp:ListItem>
                                     <asp:ListItem value="uz">Uzbek</asp:ListItem>
                                     <asp:ListItem value="vi">Vietnamese</asp:ListItem>
                                     <asp:ListItem value="cy">Welsh</asp:ListItem>
                                     <asp:ListItem value="xh">Xhosa</asp:ListItem>
                                     <asp:ListItem value="yi">Yiddish</asp:ListItem>
                                     <asp:ListItem value="yo">Yoruba</asp:ListItem>
                                     <asp:ListItem value="zu">Zulu</asp:ListItem>

                                 </asp:DropDownList>

                        </div>
                        
                        <div class="col-lg-2 col-md-4 col-sm-6 col-12">

                            
                            <br />
                            <button type="button" id="btnSearch"  class="btn btn-primary btn-xl w-100 mt-2" data-toggle="modal" data-target="#myModal">
                                Search
                            </button>
                            <%--runat="server" onserverclick="btnSearch_ServerClick"--%>
                        </div>
                        

                            </div>
                        </div>

                    </div>

                    
                </div>

                <%-- Top Log End  --%>

                <div id="myModal" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content custom_for_login p-5 text-center">


                    <div class="text-center ">

                        <img src="img/Logo.png" class="img-fluid img d-lg-inline-block custom_img_for_login"  alt="" />

                        <h4 id="logintxt" runat="server" class="mt-3 text-secondary">Login with your Email Id</h4>

                        <div class="container">

                             <div class="text-left text-secondary">
                          
                                <div class="form-group" data-ng-app="myApp" data-ng-controller="myCntrl">
                                     
                                    <label>Email : </label>
                                    <input type="text" class="form-control" id="Email" placeholder="Email" data-ng-model="txtEmail" />
                                    <%--<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" type="email" placeholder="Email"></asp:TextBox>--%>
                                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="&nbsp* Email is Incorrect" ControlToValidate="Email" ForeColor="Red" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                    <br />
                                    
                                    <label>Password : </label>
                                    <input type="password" class="form-control" id="Password" placeholder="Password"  data-ng-model="txtPass" data-ng-keyup="$event.keyCode == 13 && SignIn()" />
                                    <%--<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>--%>
                                    <br />
                                    <Label ID="lblError" class="text-danger"></Label>
                                    <div class="row">
                                        <div class="col-6">
                                            <asp:CheckBoxList ID="inputRemember" runat="server" >
                                                <asp:ListItem > &nbsp  Stay Signed in </asp:ListItem>
                                            </asp:CheckBoxList>
                                        </div>
                                        <div class="col-6 text-right">
                                            <a href="#">Forget Password</a>

                                        </div>   
                                    </div>

                                    <input id="btnSignIn" type="button"  value="Sign In" class="w-100 btn btn-primary mt-3" data-ng-click="SignIn()"/>
                                     
                                    <%--<asp:Button ID="btnLogin" runat="server" Text="Sign In" class="w-100 btn btn-primary mt-3" OnClick="btnSignIn_ServerClick" UseSubmitBehavior="false" />--%>
                                    <h6 class="text-center mt-3">New To PrefectMarriage.co</h6>
                                    <p class="text-center">
                                         <a href="SignUp.aspx" class="text-center">Sign Up Free</a>
                                    </p>
                                    
                                </div>
                            </div>

                        </div>


                    </div>


                </div>

              </div>
            </div>

            </div>
            
            <%-- Header End --%>

            <%-- Section 1 Start --%>
                        
            <div class="container mt-4 text-center bg-white">
                <h1 class="font_roboto font-sm-22px text-danger p-3">
                    Find your Special Someone
                </h1>

                <div class="row mt-5">

                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-lg-0 mb-md-0 mb-sm-0 hover-tranform  cursor-pointer">  <%-- data-toggle="modal" data-target="#myModal"--%>
                        <a href="SignUp.aspx">
                        <span class="fa fa-pencil-square-o bg-primary text-white  custom_box_size cursor-pointer"></span>
                            
                        <h5 class="text-primary font_roboto mt-3 mt-lg-5 mt-md-5 mt-sm-3 cursor-pointer ">Sign Up</h5>
                        <p class="font_color_dark_grey cursor-pointer">Register for free & put up your Profile</p>
                        </a>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-lg-0 mb-md-0 mb-sm-0 hover-tranform  cursor-pointer"  data-toggle="modal" data-target="#myModal">

                        <span class="fa fa-user-plus text-white bg-primary custom_box_size  cursor-pointer"></span>

                        <h5 class="text-primary font_roboto mt-3 mt-lg-5 mt-md-5 mt-sm-3  cursor-pointer">Connect</h5>
                        <p class="font_color_dark_grey  cursor-pointer">Select & Connect with Matches you like</p>

                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 mb-3 mb-lg-0 mb-md-0 mb-sm-0 hover-tranform  cursor-pointer"  data-toggle="modal" data-target="#myModal">

                        <span class="fa fa-comments	bg-primary  text-white custom_box_size  cursor-pointer"></span>

                        <h5 class="text-primary font_roboto mt-3 mt-lg-5 mt-md-5 mt-sm-3  cursor-pointer">Interact</h5>
                        <p class="font_color_dark_grey cursor-pointer">Become a Premium Member & Start a Conversation</p>
                    </div>
                </div>

                    


            </div>

            <%-- Section 1 End --%>

            <%-- Section 2 Start --%>

            <div class="w-100 mt-3 jumbotron m-0 overflow-hidden">


                <div class=" row">

                    <div class="col-12 text-center">

                        <h3 class="font_roboto font-sm-22px text-danger p-3">Over 5 Million Happy Stories</h3>

                    </div>

                </div>

                <div class="container">
                    
                    <div class="row">
                            <div class="owl-carousel">

                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                <p>We connected on perfectmarriage.co in later 2015 and started communicating on Whatsapp from there.
We started talking as strangers and became friends. Whatsapp calls then converted into video calls and we ma...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test1.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                 <p>A big Thank you to the perfectmarriage team for helping us find each other. 
                                                    We tied the holy knot on 3rd February 2017. It was 5th May 2016, just another regular morning for me going through the profiles on...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test4.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                 <p>Out of all the people in the world Out of all the places Somehow, something brought
                                                     The two of us together At the right place At the right time ..... It's on perfectmarriage.co thanks to all team...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test5.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                              <p>We would like to thank perfectmarriage.co for playing cupid in our lives. Our journey to find true ends, as our journey to cherish true love begins...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                <p>We connected on perfectmarriage.co in later 2015 and started communicating on Whatsapp from there.
We started talking as strangers and became friends. Whatsapp calls then converted into video calls and we ma...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test4.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                 <p>Out of all the people in the world Out of all the places Somehow, something brought
                                                     The two of us together At the right place At the right time ..... It's on perfectmarriage.co thanks to all team...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test1.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                 <p>A big Thank you to the perfectmarriage team for helping us find each other. 
                                                    We tied the holy knot on 3rd February 2017. It was 5th May 2016, just another regular morning for me going through the profiles on...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test5.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                <p>We would like to thank perfectmarriage.co for playing cupid in our lives. Our journey to find true ends, as our journey to cherish true love begins...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test4.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                <p>Out of all the people in the world Out of all the places Somehow, something brought
                                                     The two of us together At the right place At the right time ..... It's on perfectmarriage.co thanks to all team...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                                
                                <%-- item start --%>

                                    <div class="items">

                                        <div class="col-12 slide_hover text-left p-0 overflow-hidden" >
                                            <img src="img/test1.jpg" class="img img-fluid  d-inline-block w-100" alt="" />
                                            <div class="slider_hover_effect position-absolute h-100 p-3">

                                                <h4>Example & Test</h4>
                                                <hr class="w-20 bg-white p-0 m-0 height-20px "/>
                                                <p>A big Thank you to the perfectmarriage team for helping us find each other. 
                                                    We tied the holy knot on 3rd February 2017. It was 5th May 2016, just another regular morning for me going through the profiles on...</p>
                                                <div class="text-center">
                                                    
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                <%-- item End --%>
                            </div>
                        
                    </div>

                </div>

            </div>

            <%-- Section 2 End --%>

            
            <%-- Section 3 Start --%>

            <div class="w-10  bg-danger mt-0 overflow-hidden p-0 p-lg-1 p-md-0 p-sm-0">


                <div class=" row">

                    <div class="col-12 text-center ">

                        <h3 class="font_roboto p-0 p-sm-0 text-white p-3 lh-3 text-center">Your story is waiting to happen! Get Started  <br  class="d-block d-lg-none d-md-none d-sm-none" /> <a href="" class="custom_button custom_changing_color btn btn-outline-info ml-0 ml-lg-5 ml-md-4 ml-sm-4 "   data-toggle="modal" data-target="#myModal">Get Started</a> </h3>

                    </div>

                </div>

                

            </div>

            <%-- Section 3 End --%>

            
            <%-- Section 4 Start --%>

            <div class="w-10  mt-0 overflow-hidden p-0 p-lg-1 p-md-0 p-sm-0">


                <div class="container">

                    <div class="container">

                        <div class="container">

                            <div class="container">

                                <div class=" row">

                                    <div class="col-12 text-center ">

                                        <h3 class="p-0 p-sm-0 p-3 lh-3 text-center"> Search by Popular Matchmaking Sites </h3>

                                    </div>

                                    <div class="col-12 col-xl-4 col-md-4 col-sm-4 text-center">
                                        By Mother Tongue
                                        <hr />
                                        <p class="p-3 pt-lg-0">
                                            
                                        Bengali | Gujarati | Hindi | Marwari | Kannada | Punjabi | Marathi | Sindhi | Malayalam | Odia | Tamil | Telugu  <br /> <a href="#">More Matrimonials</a>
                                        </p>
                                    </div>
                                    <div class="col-12 col-xl-4 col-md-4 col-sm-4 text-center">
                                        By Religion
                                        <hr />
                                        <p class="p-3 pt-lg-0">
                                            Hindu | Muslim | Sikh | Christian | Jain | Buddhist | Parsi | Jewish | <br /> <a href="#">More Matrimonials</a>
                                        </p>
                                    </div>
                                    <div class="col-12 col-xl-4 col-md-4 col-sm-4 text-center">
                                        By Community
                                        <hr />
                                        <p class="p-3 pt-lg-0">
                                            Agarwal | Arora | Baniya | Brahmin | Gupta | Iyengar | Iyer | Kayastha | Khatri | Mudaliar <br />           <a href="#">More Matrimonials</a>                              </p>
                                    </div>


                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                

            </div>

            <%-- Section 4 End --%>

            
            <%-- Section 5 Start --%>

            <div class="w-10 custom-ads-10 mt-0 overflow-hidden p-0 p-lg-1 p-md-0 p-sm-0">


                <div class=" row">

                    <div class="col-12 text-center ">

                        <h3 class="font_roboto p-0 p-sm-0 text-danger p-3 lh-3 text-center">Get Your Partner Now <br  class="d-block d-lg-none d-md-none d-sm-none" /> <a href="" class="custom_button  btn btn-outline-danger ml-0 ml-lg-5 ml-md-4 ml-sm-4 "   data-toggle="modal" data-target="#myModal">Get Started</a> </h3>

                    </div>

                </div>

                

            </div>

            <%-- Section 5 End --%>

            
            
            <%-- Section 6 Start --%>

            <div class="w-10  mt-0 overflow-hidden p-0 p-lg-1 p-md-0 p-sm-0">


                <div class="container">

                    <div class="container">

                        <div class="container">

                            <div class="container">

                                <div class=" row">

                                    <div class="col-12 text-center mt-4">

                                        <img src="img/Logo.png" class="img-fluid img d-inline-block max-w-300" alt="" />

                                    </div>

                                    <div class="col-12 text-center font_roboto font-14px  mt-4">
                                        <p>
                                            perfectmarriage.co, The World's No.1 Matchmaking Service, was founded with a simple objective - to help people find happiness.
                                       <br />
                                            perfectmarriage.co (sometimes mis-spelt as Shadi) is a social networking site specialising in matchmaking and not just a matrimonial service. As a leader in what is sometimes known as the matrimony category, we have touched more than 35 million lives.
                                        <br />
                                            perfectmarriage.co has always differentiated itself from other matrimonials through its innovation-led approach. By redefining the way Indian brides and grooms meet for marriage, perfectmarriage.co has created a world-renowned brand that has changed the way of finding a life partner.<a href="#"> Learn more</a>
                                        </p>
                                    </div>

                                    <div class="col-12 text-center mt-3">
                                        <a href="#">India</a> |
                                        <a href="#">USA</a> |
                                        <a href="#">Canada</a> |
                                        <a href="#">UK</a> |
                                        <a href="#">Singapore</a> |
                                        <a href="#">Australia</a> |
                                        <a href="#">UAE</a> |
                                        <a href="#">NRI</a> |
                                        <a href="#">Matrimonials</a>
                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                

            </div>

            <%-- Section 6 End --%>
            
            <%-- Section 7 Start --%>

            <div class="w-10  mt-0 overflow-hidden p-0 p-lg-1 p-md-0 p-sm-0">


                <div class="container">

                    <div class="container">

                        <div class="container">

                            <div class="container">

                                <div class=" row">

                                    <div class="col-12 text-center mt-4">

                                        <a href="#" class="btn btn-lg btn-primary border-0 disabled b-b-r-0 b-b-l-0" >Trusted by Millions</a>
                                        <hr class="p-0 m-0" />

                                        <div class="row">

                                            <div class="col-lg-4 col-md-4 col-sm-4 col-12 text-center">

                                                <p>
                                                    
                                                <span class="fa fa-users font-14px font-16">

                                                </span>
                                                     Best Matches

                                                </p>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-12 text-center">

                                                <p>
                                                    
                                                <span class="fa fa-envelope font-14px font-16">

                                                </span>
                                                       Max Responses

                                                </p>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-12 text-center">

                                                <p>
                                                    
                                                <span class="fa fa-lock font-14px font-16">

                                                </span>
                                                     100% Privacy

                                                </p>
                                            </div>


                                        </div>


                                    </div>

                                    

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

                

            </div>

            <%-- Section 7 End --%>

        </div>
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
        <script>
            var app = angular.module("myApp", []);
            app.controller("myCntrl", function ($scope, $http) {
                $scope.txtEmail = "";
                $scope.txtPass = "";
                $scope.SignIn = function () {
                    var httpreq = {
                        method: 'POST',
                        url: 'index.aspx/SignIn',
                        headers: {
                            'Content-Type': 'application/json; charset=utf-8',
                            'dataType': 'json'
                        },
                        data: {Email: $scope.txtEmail, pass: $scope.txtPass }
                    }
                    $http(httpreq).success(function (response) {
                        if (response.d == true) {
                        alert("Login Successully..");
                            window.location = "Home.aspx";
                        }
                        else if (response.d == false) {
                           // alert("Error");
                            document.getElementById("lblError").innerHTML = "Incorrect Email or password";
                            //$("#lblError").text = "Incorrect Email or Pass";
                        }
                        
                    }),
                   $http(httpreq).error(function (response) {
                      /// alert("Error");
                       document.getElementById("lblError").innerHTML = "Unable to Login Please Try Again later...";
                   });
                }
            })

            //$(document).ready(function () {
            //    $("#Password").keydown(function (e) {
            //        if (e.keyCode == 13) {
            //            alert('enter pressed');
            //            SignIn();
            //        }
            //    });
            //});
        </script>
    </form>
</body>
</html>
