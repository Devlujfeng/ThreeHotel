<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="ThreeHotel.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .linkBtn {
            color: #BB9754;
            text-decoration: none;
            font-size:smaller
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="auto-style3">
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
        <tr>
            <td>
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="SIGN IN"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />

            </td>
        </tr>
        <tr>
            <td>
                <br />
                <p style ="font-size:XX-large">Sign in to Golden Circle</p>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <p style="font-size:small">Sign in to your Golden Circle online account to access your membership information, update your personal preferences and more. You may sign in to your account using your Golden Circle membership number.</p>
                <br />
            </td>
        </tr>
        <tr>
            <td style="color:red">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>

                <table class="auto-style3">
                    <tr>
                        <td colspan="3">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ValidationGroup="1" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="background-color: #F7F6F3">
                                            <asp:Label ID="lblMembershipNo" runat="server" Text="Membership Number"></asp:Label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Membership No" ForeColor="Red" ControlToValidate="txtusername" Display="Dynamic" ToolTip="Please enter Membership No" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                            <br />
                                            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Password" ForeColor="Red" ControlToValidate="txtpwd" Display="Dynamic" ToolTip="Please enter Password" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                            <br />
                                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                                            <br />
                                            <br />
                                            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" OnClick="btnLogin_Click" ValidationGroup="1" />
                                            <br />
                                            <br />
                                            <span>
                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="linkBtn">Change Password?</asp:LinkButton>
                                            </span>
                                            <br />
                            </div>
                        </td>
                        <td style="vertical-align:top">
                            <p><b>Not a Golden Circle Member?</b></p>
                            <p>Sign up today to experience our member benefits.</p>
                            <asp:Button ID="btnSignUp" runat="server" Text="BE PART OF GOLDEN CIRCLE" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" OnClick="btnSignUp_Click" CausesValidation="False" />
                        </td>
                        <td>
                            <asp:Image ID="imgSignIn" runat="server" ImageUrl="~/Images (ThreeHotel)/Global-Offers-Room.jpg" />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>




</asp:Content>
