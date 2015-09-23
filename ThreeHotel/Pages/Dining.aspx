<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dining.aspx.cs" Inherits="ThreeHotel.Dining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style20
        {
            width: 526px;
            height: 225px;
        }
        .auto-style22
        {
            font-size: small;
        }
        .auto-style23
        {
            font-size: x-small;
        }
        .auto-style25
        {
            height: 30px;
            width: 782px;
        }
        .auto-style26
        {
            height: 7px;
            width: 782px;
        }
        .auto-style27
        {
            height: 225px;
        }
        .auto-style28
        {
            width: 782px;
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
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="DINING"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/Res.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" style="text-align: center" Text="A dining destination"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style26"> 
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#BB9754" style="text-align: center" Text="with a seaview"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style20"><asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Considered a premier dining destination, Shangri-La Hotel, Beihai,presents some of the finest restaurants in the city." style="text-align: justify"></asp:Label>
                &nbsp;<br />
                            <br />
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Coffee Garden extends all-day dining with international buffet options and an a la carte menu. complemented by glorious seaviews. The authentic Cantonese cuisine served within Shang Palace's elegant surrounds can be enjoyed with ocean-facing perspectives." style="text-align: justify"></asp:Label>
                            <br />
                            <br />
                <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="End your day at Poor Bar ,where the crimson spectacle of sunset over the transquil Gulf of Beibu can be enjoyed with a refreshed drink in hand." style="text-align: right"></asp:Label>
                        </td>
                        <td class="auto-style27">
                            <table class="auto-style3">
                                <tr>
                                    <td>
                                        <h3>
    <asp:Label ID="Label8" runat="server" Font-Size="Medium" style="text-align: center; font-size: large;" Text="Featured Chef"></asp:Label>
                                        </h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images (ThreeHotel)/Chef.jpg" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style22"><strong>Chinese Executive Chef Martin Wang</strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style23">He Specialises in Cantonese, Sichuan,Hunan and Huayang cuisines</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style28">
                <asp:Label ID="Label10" runat="server" style="font-weight: 700; font-size: large" Text="Imbark on these exceptional culinary journeys:"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Images (ThreeHotel)/1.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image7" runat="server" ImageUrl="~/Images (ThreeHotel)/2.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image8" runat="server" ImageUrl="~/Images (ThreeHotel)/3.png" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image9" runat="server" ImageUrl="~/Images (ThreeHotel)/4.png" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />

                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
