<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistererdUsers.aspx.cs" Inherits="PerfetMarriage_01March2018_.Admin77.RegistererdUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PerfectMarriage-Registered Users</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../dist/css/bootstrap.css" rel="stylesheet" />
    <script src="../dist/js/jquery-slim.min.js"></script>
    <script src="../dist/js/bootstrap.js"></script>
    <script src="../dist/js/popper.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 w-100 bg-danger" style="height: 80px;">
                    <button type="button" class="position-fixed btn btn-success mt-1" runat="server" id="logout" onserverclick="logout_ServerClick" style="right: 10px; top: 10px">Logout</button>
                </div>
            </div>
            <div class="table-responsive p-2">
                <div <%--style="overflow: scroll;"--%>>
                    <asp:GridView runat="server"
                        ID="dgvUsers"
                        AllowPaging="True"
                        AutoGenerateColumns="False"
                        DataKeyNames="id"
                        GridLines="Vertical"
                        BackColor="White"
                        BorderColor="#999999"
                        BorderStyle="Solid"
                        BorderWidth="1px"
                        CellPadding="3"
                        ForeColor="Black" OnRowEditing = "dgvUsers_RowEditing" 
                        OnRowDataBound = "RowDataBound" OnRowUpdating = "dgvUsers_RowUpdating"
                         OnRowCancelingEdit = "CancelEdit">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="id" Visible="false" HeaderText="id" ReadOnly="true" />
                            <%--<asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btnSelect" runat="server" CausesValidation="false"
                                    Text="Select" UseSubmitBehavior="false" CssClass="btn btn-outline-dark" />
                                <asp:HiddenField ID="hfIsRowSelected" runat="server" Value="0" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>

                            <asp:BoundField DataField="email" HeaderText="Email"
                                ReadOnly="true" SortExpression="email" />

                            <asp:BoundField DataField="FirstName" HeaderText="FirstName"
                                ReadOnly="true" SortExpression="FirstName" />

                            <asp:BoundField DataField="LastName" HeaderText="LastName"
                                ReadOnly="true" SortExpression="LastName" />

                            <asp:BoundField DataField="gender" HeaderText="gender"
                                ReadOnly="true" SortExpression="gender" />

                            <asp:BoundField DataField="contact" HeaderText="contact"
                                ReadOnly="true" SortExpression="contact" />

                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth"
                                ReadOnly="true" SortExpression="DateOfBirth" DataFormatString="{0:MM/dd/yyyy}" />


                           <%-- <asp:BoundField HeaderText="Community" DataField="Community"
                                SortExpression="Community" ReadOnly="true" />

                            <asp:BoundField HeaderText="Religion" DataField="Religion"
                                SortExpression="Religion" ReadOnly="true" />

                            <asp:BoundField DataField="MotherTongue" HeaderText="MotherTongue"
                                ReadOnly="true" SortExpression="MotherTongue" />--%>

                            <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus"
                                ReadOnly="true" SortExpression="MaritalStatus" />

                            <asp:BoundField DataField="EducationLevel" HeaderText="Education"
                                ReadOnly="true" SortExpression="EducationLevel" />

                           <%-- <asp:BoundField DataField="Designation" HeaderText="Designation"
                                ReadOnly="true" SortExpression="Designation" />--%>

                            <asp:BoundField DataField="paymentAmount" HeaderText="paid Amount"
                                ReadOnly="true" SortExpression="paymentAmount" />

                            <asp:TemplateField HeaderText="Payment Type">
                                <ItemTemplate>
                                    <asp:Label ID="PaymentTypeName" runat="server" Text='<%# Eval("PaymentTypeName")%>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="PaymentTypeName" runat="server" Text='<%# Eval("PaymentTypeName")%>' Visible="false"></asp:Label>
                                    <asp:DropDownList ID="ddlPaymentType" runat="server">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="DaysAllowed" HeaderText="DaysAllowed"
                                ReadOnly="true" SortExpression="DaysAllowed" />

                            <%--<asp:CommandField ShowSelectButton="true" SelectText="Edit" ButtonType="Button"
                            ControlStyle-CssClass="btn btn-outline-dark">
                            <ControlStyle CssClass="btn btn-outline-dark"></ControlStyle>
                        </asp:CommandField>--%>
                            <asp:CommandField HeaderText="Edit" ShowEditButton="True"  ControlStyle-CssClass="btn btn-outline-dark" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Left" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
