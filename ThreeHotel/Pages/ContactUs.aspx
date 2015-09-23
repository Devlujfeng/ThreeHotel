<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ThreeHotel.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20
        {
            font-size: small;
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
            <td style="text-align: left">
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="Contact Us" style="text-align: left"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <p style ="font-size:XX-large">Three Hotel, Singapore</p>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <table class="auto-style20">
                    <tr>
                        <td class="auto-style21"><b>Adress:</b></td>
                        <td class="auto-style22">25 Heng Mui Keng Terrace, 119615, Singapore</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><b>Tel:</b></td>
                        <td class="auto-style22">(65) 6737 3644</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><b>Fax:</b></td>
                        <td class="auto-style22">(65) 6737 3257</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><strong>Email:</strong></td>
                        <td ><a style="text-decoration:none; color:#BB9754" href="Email-form.aspx">Email Us</a></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
                <br />
            </td>
        </tr>
        <tr>
            <td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8035887381943!2d103.77661100000002!3d1.2922479999999918!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da1a56784202d9%3A0xc3162c3946c3da12!2sInstitute+of+Systems+Science!5e0!3m2!1szh-CN!2ssg!4v1437366046447" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
    </table>
</asp:Content>
