<%@ Page Title="" Language="C#" MasterPageFile="~/PerfectMarriage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PerfetMarriage_01March2018_.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="dist/js/Home.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <!-- Body Start -->
    <!-- Filter Section Start -->
    <div class="col-xl-4 col-lg-4 col-md-5 col-sm-5">
        <!-- Filter Mobile Button Start -->
        <span id="filterButton" onclick="openNav()"><i class="fa fa-bars"></i></span>
        <!-- Filter Mobile Button End -->
        <div class="">
            <div class="my-Box p-1" id="filter">
                <div class="m-1 pl-2 pt-2 pb-2 bg-ccc rounded text-center">
                    <p class="d-inline">Search Partner</p>
                    <span class="fa fa-times-rectangle" id="closeButton" onclick="closeNav()"></span>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <label for="dpdAgeFrom">From:</label>
                        </div>
                        <div class="col-sm-10 form-group">
                            <asp:DropDownList ID="dpdAgeFrom" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:Label runat="server" ID="errAgeFromRequired" Visible="false" Style="color: #f30f0f">Please Select Age From</asp:Label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-2">
                            <label for="dpdAgeTo">To:</label>
                        </div>
                        <div class="col-sm-10 form-group">
                            <asp:DropDownList ID="dpdAgeTo" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:Label runat="server" ID="errAgeToRequired" Visible="false" Style="color: #f30f0f">Please Select Age To</asp:Label>
                        </div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-xl-2 col-lg-3 col-md-12 col-sm-1">
                            <label for="dpdMaritalStatus">Marital Status:</label>
                        </div>
                        <div class="col-xl-10 col-lg-9 col-md-12 col-sm-11 form-group">
                            <asp:DropDownList ID="dpdMaritalStatus" runat="server" CssClass="form-control">
                                <asp:ListItem disabled Selected Value="0">Select</asp:ListItem>
                                <asp:ListItem>Never Married</asp:ListItem>
                                <asp:ListItem>divorced</asp:ListItem>
                                <asp:ListItem>widowed</asp:ListItem>
                                <asp:ListItem>awaiting divorce</asp:ListItem>
                                <asp:ListItem>married</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label runat="server" ID="errMaritalStatusRequired" Visible="false" Style="color: #f30f0f">Please Select Marital Status</asp:Label>
                        </div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-xl-2 col-lg-3 col-md-12 col-sm-1">
                            <label for="dpdReligion">Religion:</label>
                        </div>
                        <div class="col-xl-10 col-lg-9 col-md-12 col-sm-11 form-group">
                            <asp:DropDownList ID="dpdReligion" runat="server" CssClass="form-control">
                                <asp:ListItem disabled Selected Value="0">Select</asp:ListItem>
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
                            <asp:Label runat="server" ID="errReligionRequired" Visible="false" Style="color: #f30f0f">Please Select Religion</asp:Label>
                        </div>
                    </div>
                    <div class="row mt-1">
                        <div class="col-xl-2 col-lg-3 col-md-12 col-sm-1">
                            <label for="dpdLanguage">Mother Tonuge:</label>
                        </div>
                        <div class="col-xl-10 col-lg-9 col-md-12 col-sm-11 form-group">
                            <asp:DropDownList ID="dpdMotherTongue" runat="server" CssClass="form-control">
                                <asp:ListItem disabled Selected Value="0">Select</asp:ListItem>
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
                            <asp:Label runat="server" ID="errMotherTongueRequired" Visible="false" Style="color: #f30f0f">Please Select Mother Tongue</asp:Label>
                        </div>
                    </div>
                    <%--<div class="row mt-1">
                        <div class="col-xl-2 col-lg-3 col-md-12 col-sm-1">
                            <label for="dpdCountry">Country:</label>
                        </div>
                        <div class="col-xl-10 col-lg-9 col-md-12 col-sm-11 form-group">
                            <asp:DropDownList runat="server" ID="dpdCountry" CssClass="form-control">
                                <asp:ListItem Value="0">Does Not Matter</asp:ListItem>
                                <asp:ListItem Value="India">India</asp:ListItem>
                                <asp:ListItem Value="USA">USA</asp:ListItem>
                                <asp:ListItem Value="United Kingdom">UK</asp:ListItem>
                                <asp:ListItem Value="United Arab Emirates">UAE</asp:ListItem>
                                <asp:ListItem Value="Canada">Canada</asp:ListItem>
                                <asp:ListItem Value="Australia">Australia</asp:ListItem>
                                <asp:ListItem Value="New Zealand">New Zealand</asp:ListItem>
                                <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                                <asp:ListItem Value="Saudi Arabia">Saudi Arabia</asp:ListItem>
                                <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                                <asp:ListItem Value="South Africa">South Africa</asp:ListItem>
                                <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>
                                <asp:ListItem Value="Albania">Albania</asp:ListItem>
                                <asp:ListItem Value="Algeria">Algeria</asp:ListItem>
                                <asp:ListItem Value="American Samoa">American Samoa</asp:ListItem>
                                <asp:ListItem Value="Andorra">Andorra</asp:ListItem>
                                <asp:ListItem Value="Angola">Angola</asp:ListItem>
                                <asp:ListItem Value="Anguilla">Anguilla</asp:ListItem>
                                <asp:ListItem Value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</asp:ListItem>
                                <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                                <asp:ListItem Value="Armenia">Armenia</asp:ListItem>
                                <asp:ListItem Value="Austria">Austria</asp:ListItem>
                                <asp:ListItem Value="Azerbaijan">Azerbaijan</asp:ListItem>
                                <asp:ListItem Value="Bahamas">Bahamas</asp:ListItem>
                                <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                                <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                                <asp:ListItem Value="Barbados">Barbados</asp:ListItem>
                                <asp:ListItem Value="Belarus">Belarus</asp:ListItem>
                                <asp:ListItem Value="Belgium">Belgium</asp:ListItem>
                                <asp:ListItem Value="Belize">Belize</asp:ListItem>
                                <asp:ListItem Value="Bermuda">Bermuda</asp:ListItem>
                                <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                                <asp:ListItem Value="Bolivia">Bolivia</asp:ListItem>
                                <asp:ListItem Value="Bosnia and Herzegovina">Bosnia and Herzegovina</asp:ListItem>
                                <asp:ListItem Value="Botswana">Botswana</asp:ListItem>
                                <asp:ListItem Value="Brazil">Brazil</asp:ListItem>
                                <asp:ListItem Value="Brunei">Brunei</asp:ListItem>
                                <asp:ListItem Value="Bulgaria">Bulgaria</asp:ListItem>
                                <asp:ListItem Value="Burkina Faso">Burkina Faso</asp:ListItem>
                                <asp:ListItem Value="Burundi">Burundi</asp:ListItem>
                                <asp:ListItem Value="Cambodia">Cambodia</asp:ListItem>
                                <asp:ListItem Value="Cameroon">Cameroon</asp:ListItem>
                                <asp:ListItem Value="Cape Verde">Cape Verde</asp:ListItem>
                                <asp:ListItem Value="Cayman Islands">Cayman Islands</asp:ListItem>
                                <asp:ListItem Value="Central African Republic">Central African Republic</asp:ListItem>
                                <asp:ListItem Value="Chad">Chad</asp:ListItem>
                                <asp:ListItem Value="Chile">Chile</asp:ListItem>
                                <asp:ListItem Value="China">China</asp:ListItem>
                                <asp:ListItem Value="Colombia">Colombia</asp:ListItem>
                                <asp:ListItem Value="Comoros">Comoros</asp:ListItem>
                                <asp:ListItem Value="Congo (DRC)">Congo (DRC)</asp:ListItem>
                                <asp:ListItem Value="Congo">Congo</asp:ListItem>
                                <asp:ListItem Value="Cook Islands">Cook Islands</asp:ListItem>
                                <asp:ListItem Value="Costa Rica">Costa Rica</asp:ListItem>
                                <asp:ListItem Value="Cote d'Ivoire">Cote d'Ivoire</asp:ListItem>
                                <asp:ListItem Value="Croatia (Hrvatska)">Croatia (Hrvatska)</asp:ListItem>
                                <asp:ListItem Value="Cuba">Cuba</asp:ListItem>
                                <asp:ListItem Value="Cyprus">Cyprus</asp:ListItem>
                                <asp:ListItem Value="Czech Republic">Czech Republic</asp:ListItem>
                                <asp:ListItem Value="Denmark">Denmark</asp:ListItem>
                                <asp:ListItem Value="Djibouti">Djibouti</asp:ListItem>
                                <asp:ListItem Value="Dominica">Dominica</asp:ListItem>
                                <asp:ListItem Value="Dominican Republic">Dominican Republic</asp:ListItem>
                                <asp:ListItem Value="East Timor">East Timor</asp:ListItem>
                                <asp:ListItem Value="Ecuador">Ecuador</asp:ListItem>
                                <asp:ListItem Value="Egypt">Egypt</asp:ListItem>
                                <asp:ListItem Value="El Salvador">El Salvador</asp:ListItem>
                                <asp:ListItem Value="Equatorial Guinea">Equatorial Guinea</asp:ListItem>
                                <asp:ListItem Value="Eritrea">Eritrea</asp:ListItem>
                                <asp:ListItem Value="Estonia">Estonia</asp:ListItem>
                                <asp:ListItem Value="Ethiopia">Ethiopia</asp:ListItem>
                                <asp:ListItem Value="Falkland Islands">Falkland Islands</asp:ListItem>
                                <asp:ListItem Value="Faroe Islands">Faroe Islands</asp:ListItem>
                                <asp:ListItem Value="Fiji Islands">Fiji Islands</asp:ListItem>
                                <asp:ListItem Value="Finland">Finland</asp:ListItem>
                                <asp:ListItem Value="France">France</asp:ListItem>
                                <asp:ListItem Value="French Guiana">French Guiana</asp:ListItem>
                                <asp:ListItem Value="French Polynesia">French Polynesia</asp:ListItem>
                                <asp:ListItem Value="Gabon">Gabon</asp:ListItem>
                                <asp:ListItem Value="Gambia">Gambia</asp:ListItem>
                                <asp:ListItem Value="Georgia">Georgia</asp:ListItem>
                                <asp:ListItem Value="Germany">Germany</asp:ListItem>
                                <asp:ListItem Value="Ghana">Ghana</asp:ListItem>
                                <asp:ListItem Value="Gibraltar">Gibraltar</asp:ListItem>
                                <asp:ListItem Value="Greece">Greece</asp:ListItem>
                                <asp:ListItem Value="Greenland">Greenland</asp:ListItem>
                                <asp:ListItem Value="Grenada">Grenada</asp:ListItem>
                                <asp:ListItem Value="Guadeloupe">Guadeloupe</asp:ListItem>
                                <asp:ListItem Value="Guam">Guam</asp:ListItem>
                                <asp:ListItem Value="Guatemala">Guatemala</asp:ListItem>
                                <asp:ListItem Value="Guinea">Guinea</asp:ListItem>
                                <asp:ListItem Value="Guinea-Bissau">Guinea-Bissau</asp:ListItem>
                                <asp:ListItem Value="Guyana">Guyana</asp:ListItem>
                                <asp:ListItem Value="Haiti">Haiti</asp:ListItem>
                                <asp:ListItem Value="Honduras">Honduras</asp:ListItem>
                                <asp:ListItem Value="Hong Kong SAR">Hong Kong SAR</asp:ListItem>
                                <asp:ListItem Value="Hungary">Hungary</asp:ListItem>
                                <asp:ListItem Value="Iceland">Iceland</asp:ListItem>
                                <asp:ListItem Value="Indonesia">Indonesia</asp:ListItem>
                                <asp:ListItem Value="Iran">Iran</asp:ListItem>
                                <asp:ListItem Value="Iraq">Iraq</asp:ListItem>
                                <asp:ListItem Value="Ireland">Ireland</asp:ListItem>
                                <asp:ListItem Value="Israel">Israel</asp:ListItem>
                                <asp:ListItem Value="Italy">Italy</asp:ListItem>
                                <asp:ListItem Value="Jamaica">Jamaica</asp:ListItem>
                                <asp:ListItem Value="Japan">Japan</asp:ListItem>
                                <asp:ListItem Value="Jordan">Jordan</asp:ListItem>
                                <asp:ListItem Value="Kazakhstan">Kazakhstan</asp:ListItem>
                                <asp:ListItem Value="Kenya">Kenya</asp:ListItem>
                                <asp:ListItem Value="Kiribati">Kiribati</asp:ListItem>
                                <asp:ListItem Value="Korea">Korea</asp:ListItem>
                                <asp:ListItem Value="Kyrgyzstan">Kyrgyzstan</asp:ListItem>
                                <asp:ListItem Value="Laos">Laos</asp:ListItem>
                                <asp:ListItem Value="Latvia">Latvia</asp:ListItem>
                                <asp:ListItem Value="Lebanon">Lebanon</asp:ListItem>
                                <asp:ListItem Value="Lesotho">Lesotho</asp:ListItem>
                                <asp:ListItem Value="Liberia">Liberia</asp:ListItem>
                                <asp:ListItem Value="Libya">Libya</asp:ListItem>
                                <asp:ListItem Value="Liechtenstein">Liechtenstein</asp:ListItem>
                                <asp:ListItem Value="Lithuania">Lithuania</asp:ListItem>
                                <asp:ListItem Value="Luxembourg">Luxembourg</asp:ListItem>
                                <asp:ListItem Value="Macao SAR">Macao SAR</asp:ListItem>
                                <asp:ListItem Value="Macedonia">Macedonia</asp:ListItem>
                                <asp:ListItem Value="Madagascar">Madagascar</asp:ListItem>
                                <asp:ListItem Value="Malawi">Malawi</asp:ListItem>
                                <asp:ListItem Value="Malaysia">Malaysia</asp:ListItem>
                                <asp:ListItem Value="Maldives">Maldives</asp:ListItem>
                                <asp:ListItem Value="Mali">Mali</asp:ListItem>
                                <asp:ListItem Value="Malta">Malta</asp:ListItem>
                                <asp:ListItem Value="Martinique">Martinique</asp:ListItem>
                                <asp:ListItem Value="Mauritania">Mauritania</asp:ListItem>
                                <asp:ListItem Value="Mauritius">Mauritius</asp:ListItem>
                                <asp:ListItem Value="Mayotte">Mayotte</asp:ListItem>
                                <asp:ListItem Value="Mexico">Mexico</asp:ListItem>
                                <asp:ListItem Value="Micronesia">Micronesia</asp:ListItem>
                                <asp:ListItem Value="Moldova">Moldova</asp:ListItem>
                                <asp:ListItem Value="Monaco">Monaco</asp:ListItem>
                                <asp:ListItem Value="Mongolia">Mongolia</asp:ListItem>
                                <asp:ListItem Value="Montserrat">Montserrat</asp:ListItem>
                                <asp:ListItem Value="Morocco">Morocco</asp:ListItem>
                                <asp:ListItem Value="Mozambique">Mozambique</asp:ListItem>
                                <asp:ListItem Value="Myanmar">Myanmar</asp:ListItem>
                                <asp:ListItem Value="Namibia">Namibia</asp:ListItem>
                                <asp:ListItem Value="Nauru">Nauru</asp:ListItem>
                                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                <asp:ListItem Value="Netherlands Antilles">Netherlands Antilles</asp:ListItem>
                                <asp:ListItem Value="Netherlands">Netherlands</asp:ListItem>
                                <asp:ListItem Value="New Caledonia">New Caledonia</asp:ListItem>
                                <asp:ListItem Value="Nicaragua">Nicaragua</asp:ListItem>
                                <asp:ListItem Value="Niger">Niger</asp:ListItem>
                                <asp:ListItem Value="Nigeria">Nigeria</asp:ListItem>
                                <asp:ListItem Value="Niue">Niue</asp:ListItem>
                                <asp:ListItem Value="Norfolk Island">Norfolk Island</asp:ListItem>
                                <asp:ListItem Value="North Korea">North Korea</asp:ListItem>
                                <asp:ListItem Value="Norway">Norway</asp:ListItem>
                                <asp:ListItem Value="Oman">Oman</asp:ListItem>
                                <asp:ListItem Value="Panama">Panama</asp:ListItem>
                                <asp:ListItem Value="Papua New Guinea">Papua New Guinea</asp:ListItem>
                                <asp:ListItem Value="Paraguay">Paraguay</asp:ListItem>
                                <asp:ListItem Value="Peru">Peru</asp:ListItem>
                                <asp:ListItem Value="Philippines">Philippines</asp:ListItem>
                                <asp:ListItem Value="Pitcairn Islands">Pitcairn Islands</asp:ListItem>
                                <asp:ListItem Value="Poland">Poland</asp:ListItem>
                                <asp:ListItem Value="Portugal">Portugal</asp:ListItem>
                                <asp:ListItem Value="Puerto Rico">Puerto Rico</asp:ListItem>
                                <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                                <asp:ListItem Value="Reunion">Reunion</asp:ListItem>
                                <asp:ListItem Value="Romania">Romania</asp:ListItem>
                                <asp:ListItem Value="Russia">Russia</asp:ListItem>
                                <asp:ListItem Value="Rwanda">Rwanda</asp:ListItem>
                                <asp:ListItem Value="Samoa">Samoa</asp:ListItem>
                                <asp:ListItem Value="San Marino">San Marino</asp:ListItem>
                                <asp:ListItem Value="Sao Tome and Principe">Sao Tome and Principe</asp:ListItem>
                                <asp:ListItem Value="Senegal">Senegal</asp:ListItem>
                                <asp:ListItem Value="Serbia and Montenegro">Serbia and Montenegro</asp:ListItem>
                                <asp:ListItem Value="Seychelles">Seychelles</asp:ListItem>
                                <asp:ListItem Value="Sierra Leone">Sierra Leone</asp:ListItem>
                                <asp:ListItem Value="Singapore">Singapore</asp:ListItem>
                                <asp:ListItem Value="Slovakia">Slovakia</asp:ListItem>
                                <asp:ListItem Value="Slovenia">Slovenia</asp:ListItem>
                                <asp:ListItem Value="Solomon Islands">Solomon Islands</asp:ListItem>
                                <asp:ListItem Value="Somalia">Somalia</asp:ListItem>
                                <asp:ListItem Value="Spain">Spain</asp:ListItem>
                                <asp:ListItem Value="Sri Lanka">Sri Lanka</asp:ListItem>
                                <asp:ListItem Value="St. Helena">St. Helena</asp:ListItem>
                                <asp:ListItem Value="St. Kitts and Nevis">St. Kitts and Nevis</asp:ListItem>
                                <asp:ListItem Value="St. Lucia">St. Lucia</asp:ListItem>
                                <asp:ListItem Value="St. Pierre and Miquelon">St. Pierre and Miquelon</asp:ListItem>
                                <asp:ListItem Value="St. Vincent &amp; Grenadines">St. Vincent &amp; Grenadines</asp:ListItem>
                                <asp:ListItem Value="Sudan">Sudan</asp:ListItem>
                                <asp:ListItem Value="Suriname">Suriname</asp:ListItem>
                                <asp:ListItem Value="Swaziland">Swaziland</asp:ListItem>
                                <asp:ListItem Value="Sweden">Sweden</asp:ListItem>
                                <asp:ListItem Value="Switzerland">Switzerland</asp:ListItem>
                                <asp:ListItem Value="Syria">Syria</asp:ListItem>
                                <asp:ListItem Value="Taiwan">Taiwan</asp:ListItem>
                                <asp:ListItem Value="Tajikistan">Tajikistan</asp:ListItem>
                                <asp:ListItem Value="Tanzania">Tanzania</asp:ListItem>
                                <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                                <asp:ListItem Value="Togo">Togo</asp:ListItem>
                                <asp:ListItem Value="Tokelau">Tokelau</asp:ListItem>
                                <asp:ListItem Value="Tonga">Tonga</asp:ListItem>
                                <asp:ListItem Value="Trinidad and Tobago">Trinidad and Tobago</asp:ListItem>
                                <asp:ListItem Value="Tunisia">Tunisia</asp:ListItem>
                                <asp:ListItem Value="Turkey">Turkey</asp:ListItem>
                                <asp:ListItem Value="Turkmenistan">Turkmenistan</asp:ListItem>
                                <asp:ListItem Value="Turks and Caicos Islands">Turks and Caicos Islands</asp:ListItem>
                                <asp:ListItem Value="Tuvalu">Tuvalu</asp:ListItem>
                                <asp:ListItem Value="Uganda">Uganda</asp:ListItem>
                                <asp:ListItem Value="Ukraine">Ukraine</asp:ListItem>
                                <asp:ListItem Value="Uruguay">Uruguay</asp:ListItem>
                                <asp:ListItem Value="Uzbekistan">Uzbekistan</asp:ListItem>
                                <asp:ListItem Value="Vanuatu">Vanuatu</asp:ListItem>
                                <asp:ListItem Value="Venezuela">Venezuela</asp:ListItem>
                                <asp:ListItem Value="Vietnam">Vietnam</asp:ListItem>
                                <asp:ListItem Value="Virgin Islands (British)">Virgin Islands (British)</asp:ListItem>
                                <asp:ListItem Value="Virgin Islands">Virgin Islands</asp:ListItem>
                                <asp:ListItem Value="Wallis and Futuna">Wallis and Futuna</asp:ListItem>
                                <asp:ListItem Value="Yemen">Yemen</asp:ListItem>
                                <asp:ListItem Value="Yugoslavia">Yugoslavia</asp:ListItem>
                                <asp:ListItem Value="Zambia">Zambia</asp:ListItem>
                                <asp:ListItem Value="Zimbabwe">Zimbabwe</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>--%>
                    <div class="row mt-1">
                        <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-danger form-control" Text="Search" UseSubmitBehavior="false" OnClick="btnSearch_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Filter Section End -->
    <!-- Profiles/Middle Section Start -->
    <div class="col-xl-5 col-lg-8 col-md-7 col-sm-7">
        <div class="">
            <div class="my-Box p-2">
                <div class="row">
                    <div class="col-12">
                        <div class="m-1 pl-2 pt-2 pb-2 bg-ccc rounded text-center">
                            <p>Suggested Profiles</p>
                        </div>
                    </div>
                </div>
                <div class="row mt-2">
                    <asp:ListView runat="server" ID="lvProfiles"
                        OnPagePropertiesChanging="lvProfiles_PagePropertiesChanging"
                        DataKeyNames="id">
                        <LayoutTemplate>
                            <div runat="server" id="groupPlaceholder">
                            </div>
                            <asp:DataPager runat="server" Visible="true" ID="lvProfilesDataPager" PageSize="10">
                                <Fields>
                                    <asp:NumericPagerField
                                        NextPageText="Next"
                                        PreviousPageText="Previous" />
                                </Fields>
                            </asp:DataPager>
                        </LayoutTemplate>
                        <GroupTemplate>
                            <div runat="server" id="itemPlaceholder">
                            </div>
                        </GroupTemplate>
                        <ItemTemplate>
                            <!-- Single Profile Start -->
                            <div class="col-12 mt-2">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="row center-at-425">
                                            <div class="col-lg-5 col-md-6 col-sm-6">
                                                <a href='<%# "Profile?ID=" + Eval("id") + "&Name=" + Eval("FirstName") %>' rel="bookmark" onclick="return false;" style="cursor: auto;">
                                                    <asp:Image runat="server" ImageUrl='<%# "Images/User/" + Eval("txtImagePath") %>' ID="profilePostImage" class="img-fluid card-img profile-post-picture" alt="Alternate Text" Style="height: 258px!important;" />
                                                </a>
                                            </div>
                                            <div class="col-lg-7 col-md-6 col-sm-6">
                                                <h6><%# Eval("FirstName") %>&nbsp;<%# Eval("LastName") %></h6>
                                                <p><span class="fa fa-female text-danger"></span>&nbsp <%# Eval("Height") %> Height, <%# Eval("Age") %> Years Of Age</p>
                                                <p><span class="fa fa-globe text-danger"></span>&nbsp Lives in <%# Eval("City") %>, <%# Eval("Country") %></p>
                                                <p><span class="fa fa-language text-danger"></span>&nbsp Speaks <%# Eval("MotherTongue") %></p>
                                                <p><span class="fa fa-briefcase text-danger"></span>&nbsp Education And Profession, <%# Eval("EducationLevel") %>&nbsp;,<%# Eval("EducationField") %></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row post-body">
                                            <div class="col-12">
                                                <p>
                                                    <span class="fa fa-heart-o text-danger"></span>&nbsp;
                                                    <%# Eval("About") %>
                                                </p>
                                                <p class="fadder">
                                                </p>
                                            </div>
                                        </div>
                                        <div class="text-right">
                                            <a href='<%# "Profile?ID=" + Eval("id") + "&Name=" + Eval("FirstName") %>'>View Profile
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Single Profile End -->
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
    <!-- Profiles/Middle Section End -->
</asp:Content>

