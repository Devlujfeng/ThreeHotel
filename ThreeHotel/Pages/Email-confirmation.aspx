<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Email-confirmation.aspx.cs" Inherits="ThreeHotel.Pages.Email_Confirmation" %>
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
            font-size: x-small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <tr>
            <td>
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="EMAIL US"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                Dear
                <asp:Label ID="FullName" runat="server" ForeColor="Red"></asp:Label>
                ,<br />
                <br />
                <span>Thank you for your submission.</span> 
                <br />
                <span>Our customer service representative will get back to you shortly.</span>

            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
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
