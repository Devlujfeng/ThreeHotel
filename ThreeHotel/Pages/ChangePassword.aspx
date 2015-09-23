<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ThreeHotel.Pages.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td colspan="2">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.7em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#BB9754" />
                    <NodeStyle Font-Bold="True" ForeColor="black" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="black" />
                    <RootNodeStyle Font-Bold="True" ForeColor="black" />
                </asp:SiteMapPath>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="CHANGE PASSWORD"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />

            </td>
        </tr>
        <tr>
            <td>
                <br />
                <p style="font-size:medium">Please enter your Golden Circle membership number, existing password and new password for change of password.</p>
                <br />
                <h5 style="color: rgb(113, 113, 113); font-size: 11px; font-weight: normal; line-height: 17px; margin: 0px; padding: 5px 0px; text-decoration: none; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(239, 239, 237);">*Indicates required field</h5>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ValidationGroup="1" />
                <span style="color:red">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                <br />
                </span>
                <br />
                <table class="auto-style3">
                    <tr>
                        <td><span><b>Membership No</b></span></td>
                        <td><asp:TextBox ID="txtusername" runat="server" ValidationGroup="1"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Membership No" ForeColor="Red" ControlToValidate="txtusername" Display="Dynamic" ToolTip="Please enter Membership No">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><span><b>Current Password</b></span></td>
                        <td><asp:TextBox ID="txtcurpwd" runat="server" ValidationGroup="1"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Current Password" ForeColor="Red" ControlToValidate="txtcurpwd" Display="Dynamic" ToolTip="Please enter Current Password">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><span><b>New Password</b></span></td>
                        <td><asp:TextBox ID="txtnewpwd" runat="server" ValidationGroup="1"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter New Password" ForeColor="Red" ControlToValidate="txtnewpwd" Display="Dynamic" ToolTip="Please enter New Password">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td><span><b>Confirm Password</b></span></td>
                        <td><asp:TextBox ID="txtconfirmpwd" runat="server" ValidationGroup="1"></asp:TextBox></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Current Password" ForeColor="Red" ControlToValidate="txtconfirmpwd" Display="Dynamic" ToolTip="Please enter Comfirmation Password">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpwd" ControlToValidate="txtconfirmpwd" ErrorMessage="Password Mismatch" ForeColor="Red" Display="Dynamic" ToolTip="Password Mismatch">*</asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:Button ID="btnBack" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="BACK" CssClass="floatleft" CausesValidation="False" />
                
                <asp:Button ID="btnSubmit" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" CssClass="floatright" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="1" />
                <br />
                <br />
                <br />
            </td>
            <td>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/SLPU-Bg-Shangri-La-Smile-v2.jpg" Width="212px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
    </table>

</asp:Content>
