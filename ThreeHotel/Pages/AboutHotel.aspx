<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AboutHotel.aspx.cs" Inherits="ThreeHotel.AboutHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style10 {
            height: 23px;
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
            <td style="text-align: left">
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="YOUR THREE STORY"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Image ID="Image1" runat="server" CssClass="img" ImageUrl="~/Images (ThreeHotel)/threehotel_1.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTitle2" runat="server" Text="A luxurious retreat" Font-Size="XX-Large"></asp:Label>
                <br />
                <asp:Label ID="lblSubtitle" runat="server" Text="warm and quiet charm" ForeColor="#BB9754"></asp:Label>
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />                <table class="auto-style3">
                    <tr>
                        <td style="vertical-align: top">
                            <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed tempor ligula. Maecenas mattis mauris accumsan, hendrerit enim sed, luctus sem. Etiam scelerisque est libero, sed pellentesque odio aliquet ut. Ut mollis pharetra justo nec vehicula. Sed mauris ligula, varius nec ipsum eu, dictum interdum sapien. Quisque in elementum libero, non feugiat mi.</p>
                            <p class="text">Fusce ut nisi ac eros varius porttitor quis egestas ex. Nam condimentum auctor lacus, vitae finibus diam scelerisque bibendum. Donec rhoncus lacinia sodales. Phasellus libero lectus, accumsan a sollicitudin vehicula, sollicitudin at felis. Aenean nisl diam, placerat eget ante in, aliquet aliquam erat. Nam aliquam nulla eu egestas vestibulum. Nulla placerat vehicula risus, a mollis lorem porttitor sed. Donec placerat, purus ut sagittis commodo, orci ipsum maximus mi, ac lacinia tortor est id risus. Duis et dolor neque. Mauris nec odio quis nulla scelerisque tempor vel sit amet mauris.</p>
                            <p class="text">Morbi viverra blandit arcu, non convallis sapien vehicula in. Vestibulum at velit eget sapien tempus pharetra. Nulla quis efficitur tellus. Donec et magna commodo, egestas libero eget, iaculis ligula. Nulla tincidunt turpis lacinia lectus malesuada, nec imperdiet libero faucibus. Curabitur iaculis facilisis molestie. Sed nec pharetra tortor, sit amet tincidunt quam.</p>
                            <p class="text">Donec leo ligula, consectetur in eleifend in, venenatis at lectus. Mauris sapien eros, eleifend id enim ac, dignissim molestie turpis. Suspendisse vitae ex ullamcorper, sagittis lorem ac, auctor magna. Pellentesque non pharetra tellus. Fusce convallis blandit nisi. Sed tempus ante non dolor pharetra, ut bibendum erat maximus. Sed mattis, nisi nec gravida eleifend, sem nunc iaculis ligula, ac elementum orci elit efficitur mi. Proin iaculis eleifend lectus nec luctus.</p>
                        </td>
                        <td class="sidePanel">
                            <div style="margin: 10px">
                            <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="sidePanelLabel"></asp:Label>
                            <p class="sidePanelText">(65) 6737 3644</p>

                            <asp:Label ID="lblFax" runat="server" Text="Fax" CssClass="sidePanelLabel"></asp:Label>
                            <br />
                            <p class="sidePanelText">(65) 6737 3257</p>
                            
                            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="sidePanelLabel"></asp:Label>
                            <br />
                            <p class="sidePanelText">service@threehotel.com</p>
                            
                            <asp:Label ID="lblLocation" runat="server" Text="Location" CssClass="sidePanelLabel"></asp:Label>
                            <br />
                            <p class="sidePanelText">12 Orange Grove Road, 218210, Singapore</p>
                            
                            <hr class="hr3"/>

                            <asp:Label ID="lblCheckInOut" runat="server" Text="Check-in / Check-out" CssClass="sidePanelLabel"></asp:Label>
                            <br />
                            <p class="sidePanelText">Check-in: 2pm</p>
                            <p class="sidePanelText">Check-out: 12noon</p>
                            <p class="sidePanelText">Guests staying in Three Club rooms may check out as late as 6pm.</p>
                            
                            <hr class="hr3"/>
                            <asp:Label ID="lblPayment" runat="server" Text="Payment" CssClass="sidePanelLabel"></asp:Label>
                            <br />
                            <p class="sidePanelText">We accept the following cards: American Express, Diners Club, JCB, Mastercard, Visa and China UnionPay</p>
                            <br />
                            </div>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />            </td>
        </tr>
    </table>



</asp:Content>
