<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RoomsAndSuites.aspx.cs" Inherits="ThreeHotel.RoomsAndSuites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style18 {
            font-weight: normal;
            text-align: center;
        }
        .auto-style23 {
            font-family: Verdana;
            font-size: x-large;
            text-align: justify;
        }
        .auto-style24 {
            font-family: Verdana;
            font-size: small;
            text-align: left;
            height: 17px;
        }
        .auto-style25 {
            font-size: x-small;
        }
        .auto-style26 {
            font-family: Verdana;
            font-size: small;
            text-align: justify;
            height: 112px;
        }
        .auto-style27 {
            font-family: Verdana;
            font-size: x-large;
            text-align: justify;
            height: 33px;
        }
        .auto-style28 {
            font-family: Verdana;
            font-size: small;
            text-align: justify;
        }
        .auto-style29 {
            font-family: Verdana;
            font-size: small;
            text-align: justify;
            height: 17px;
        }
        .auto-style30 {
            font-family: Verdana;
            font-size: medium;
            text-align: justify;
        }
        .auto-style31 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
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
                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" style="text-align: center" Text="ROOMS &amp; SUITES"></asp:Label>

                </td>
            </tr>
            <tr>
                <td>  
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images (ThreeHotel)/SBHI-Horizon-Club-Suite.jpg" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <h2 style="font-family: SortsMillGoudyRegular; color: rgb(52, 52, 52); font-size: 48px; font-weight: normal; line-height: 55px; margin: 0px 0px 2px; padding: 0px; letter-spacing: -1px; clear: both; font-style: normal; font-variant: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.952941);" class="auto-style10">Stylish furnishings</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="headline-layout2-sub" style="color: rgb(134, 109, 45)">
                        <h3 style="text-align: left">
                            <asp:Label ID="Label2" runat="server" Text="for the modern guest"></asp:Label>
                        </h3>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
                </td>
            </tr>
            <tr>
                <td>
                    <p style="color: rgb(52, 52, 52); font-family:Helvetica, sans-serif; font-size: 12px; font-weight: normal; line-height: 18px; margin-bottom: 10px; margin-top: 0px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.952941);">
                        Shangri-La Hotel, Beihai, is a luxury hotel which is home to 362 beautifully appointed guestrooms and suites. Each room has a spacious atmosphere with dramatic city or ocean views.</p>
                    <p style="color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: normal; line-height: 18px; margin-bottom: 10px; margin-top: 0px; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgba(255, 255, 255, 0.952941);">
                        The rooms exemplify comfort with luxurious beds, cotton linens and a selection of pillows to ensure a quality night’s sleep.</p>
                </td>
            </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>
</asp:Content>
