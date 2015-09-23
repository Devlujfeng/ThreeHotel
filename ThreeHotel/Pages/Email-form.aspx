<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Email-form.aspx.cs" Inherits="ThreeHotel.Pages.Email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20
        {
            width: 100%;
            height: 44px;
        }
        .auto-style21
        {
            font-size: small;
        }
        .auto-style22
        {
            font-size: large;
            width: 365px;
            height: 63px;
        }
        .auto-style23
        {
            font-size: small;
            width: 365px;
        }
        .auto-style24
        {
        }
        .auto-style25
        {
            width: 349px;
        }
        .auto-style27
        {
            height: 68px;
            font-size: large;
        }
        .auto-style28
        {
            height: 63px;
        }
        .auto-style31
        {
            font-size: x-large;
        }
        .auto-style32
        {
            height: 60px;
        }
        .auto-style33
        {
            width: 100%;
        }
        .auto-style34
        {
            width: 206px;
        }
        .auto-style35
        {
            width: 214px;
        }
        .auto-style37
        {
            width: 209px;
        }
        .floatright {
            float:right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="auto-style20">
        <tr>
            <td>

    <table class="auto-style20">
        <tr>
            <td>
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.7em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#BB9754" />
                    <NodeStyle Font-Bold="True" ForeColor="black" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="black" />
                    <RootNodeStyle Font-Bold="True" ForeColor="black" />
                </asp:SiteMapPath>
            </td>
        </tr>
        </table>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="EMAIL US"></asp:Label>  
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style20">
                    <tr>
                        <td class="auto-style23">
                            <br />
                            <br />
                            Required Field*
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style22">
                            <h3 class="auto-style31">Personal Information</h3>
                        </td>
                        <td class="auto-style28"></td>
                    </tr>
                    <tr>
                        <td class="auto-style24">Title:*<table class="auto-style33">
                            <tr>
                                <td class="auto-style34">
                                    <asp:DropDownList ID="TitleList" runat="server" Height="32px" Width="200px">
                                        <asp:ListItem>Title</asp:ListItem>
                                        <asp:ListItem>Mr</asp:ListItem>
                                        <asp:ListItem>Mrs</asp:ListItem>
                                        <asp:ListItem>Ms</asp:ListItem>
                                        <asp:ListItem>Sir</asp:ListItem>
                                        <asp:ListItem>Mdm</asp:ListItem>
                                        <asp:ListItem>Dr</asp:ListItem>
                                        <asp:ListItem>Professor</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:CustomValidator ID="CustomValidator3" runat="server" ClientValidationFunction="TitleValid" ControlToValidate="TitleList" ErrorMessage="Please choose one" ForeColor="Red" OnServerValidate="SubjectValid" style="font-size: x-small" ValidationGroup="1"></asp:CustomValidator>
                                </td>
                            </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style24">Family Name/Surname:*<table class="auto-style33">
                            <tr>
                                <td class="auto-style37">
                                    <asp:TextBox ID="surname" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="surname" ErrorMessage="Please Enter Surname" ForeColor="Red" style="font-size: x-small" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            </table>
                        </td>
                        <td>First Name/Given Name:*<table class="auto-style33">
                            <tr>
                                <td class="auto-style35">
                                    <asp:TextBox ID="name" runat="server" Height="28px" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="name" ErrorMessage="Please enter Name" ForeColor="Red" style="font-size: x-small" ValidationGroup="1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24">Gold Circle Membership Number:<br />
                            <asp:TextBox ID="MemberNo" runat="server" Height="28px" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style24">Phone Number:<br />
                            <asp:TextBox ID="PhoneNumber" runat="server" Height="28px" Width="200px"></asp:TextBox>
                        </td>
                        <td>Alternate Phone/Fax Number:<br />
                            <asp:TextBox ID="AlterNumber" runat="server" Height="28px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24" colspan="2">Email Address:*<br />
                            <asp:TextBox ID="EmailAddress" runat="server" Height="28px" Width="200px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" ErrorMessage="Please enter validation email adress" ForeColor="Red" style="font-size: x-small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <h3 class="auto-style31"><strong>Comments</strong></h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">Subject:*<br />
                <asp:DropDownList ID="SubjectList" runat="server" Height="32px" Width="200px">
                    <asp:ListItem>Please Select One</asp:ListItem>
                    <asp:ListItem>For Room Reservation</asp:ListItem>
                    <asp:ListItem>For Meeting and event Enquiries</asp:ListItem>
                    <asp:ListItem>All Other Enquiries</asp:ListItem>
                </asp:DropDownList>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="SubjectValid" ControlToValidate="SubjectList" ErrorMessage="Please choose one" ForeColor="Red" OnServerValidate="SubjectValid" style="font-size: x-small" ValidationGroup="1"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td>Comments:*</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="CommentTextBox" runat="server" Height="99px" Width="545px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="CommentTextBox" ErrorMessage="Please Enter Comments" ForeColor="Red" style="font-size: x-small" ValidationGroup="1"></asp:RequiredFieldValidator>
            </td>
        </tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" OnClick="ImageButton1_Click"  
                                ValidationGroup="1" causesvalidation="True" CssClass="floatright" />
            </td>
        </tr>
    <tr>
            <td>
                <br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
