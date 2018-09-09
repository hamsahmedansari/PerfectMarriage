<%@ Page Title="" Language="C#" MasterPageFile="~/PerfectMarriage.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="PerfetMarriage_01March2018_.Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("#myFooter").addClass("fixed-bottom");
            //$("#chatSide").addClass("z-index999");
        });
    </script>
    <style>
        #chatSide {
            z-index: 9999;
            margin-bottom: 13%;
        }
        #chat-box{
            z-index:9999;
            /*margin-bottom:13%;*/
        }
        #chatOpenButton {
            z-index: 9999;
             margin-bottom: 15%;
        }

        #UserImg {
            max-width: 90px;
            width: 15%;
            border-radius: 50%;
        }

        .UserImg {
            max-width: 90px;
            width: 15%;
            border-radius: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">

    <div class="col-lg-1 col-md-1 col-sm-1 d-block">
    </div>
    <div class="col-lg-8 col-md-8 col-sm-8 d-block">
        <div class="row">
            <div class="col-12">            
                <asp:ListView ID="lvInbox" runat="server">
                    <LayoutTemplate>
                        <div id="tblMessages" runat="server">
                            <span id="groupPlaceholder" runat="server">

                            </span>
                        </div>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <div id="productRow" runat="server">
                            <span id="itemPlaceHolder" runat="server">

                            </span>
                        </div>
                    </GroupTemplate>
                    <ItemTemplate>
                         <div class="container border bg-light rounded m-1">
                                <img src='<%#"Images/User/"+ Eval("txtImagePath") %>' class="chat-box-img float-left" alt="Alternate Text" />
                    <h5 class="d-inline text-dark"><%#Eval("UserName")%>:</h5> 
                      <span class="chat-box-time"><%#Eval("dteEntryDate") %></span>           
                    <p ><%#Eval("Message") %></p>
                              
                    </div>
                    </ItemTemplate>
                </asp:ListView>
               

        </div>
            </div>

    </div>

</asp:Content>
