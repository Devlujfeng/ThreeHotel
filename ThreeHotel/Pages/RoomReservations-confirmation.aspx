<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RoomReservations-confirmation.aspx.cs" Inherits="ThreeHotel.Pages.RoomReservations_confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .floatright {
            float:right;
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
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="NEW RESERVATION"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <p><b>Thank you for your reservation at the Three Hotel, Singapore.</b></p>
                <p>A confirmation email has been sent to this address: 
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </p>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStaySummary" runat="server" Font-Size="Large" ForeColor="#BB9754" Text="Stay Summary"></asp:Label>
                <br /> 
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td colspan="2">
                            <span><b>Destination: </b></span>
                            <span>Three Hotel, Singapore</span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span><b>Check-in Date: </b></span>
                            <asp:Label ID="lblCheckIn" runat="server"></asp:Label>
                        </td>
                        <td>
                            <span><b>Room(s) Booked: </b></span>
                            <asp:Label ID="lblRoomCount" runat="server"></asp:Label>
                            &nbsp;
                            <asp:Label ID="lblRoomDesc" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span><b>Check-out Date: </b></span>
                            <asp:Label ID="lblCheckOut" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <span><b>Group Code: </b></span>
                            <asp:Label ID="lblGroupCode" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="auto-style3">
                    <tr style="background-color: #F7F6F3">
                        <td><span>Confirmation No.</span></td>
                        <td><span>Family/Last Name</span></td>
                        <td><span>Adults</span></td>
                        <td><span>Children</span></td>
                        <td><span>Bed Type</span></td>
                        <td><span>Sub-Total(SGD)</span></td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblConfirmationNo" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblFamilyName" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblAdults" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblChildren" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblBedType" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblSubTotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span>Room Cost</span>
                        </td>
                        <td><asp:Label ID="lblRoomCost" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span>Tax and Service Charge</span>
                        </td>
                        <td><asp:Label ID="lblTaxSC" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <span style="font-size:medium"><b>TOTAL COST</b></span>
                        </td>
                        <td style="font-size:medium; color:#BB9754"><asp:Label ID="lblTotalCost" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <hr />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <table class="auto-style3" style="background-color: #F7F6F3">
                    <tr>
                        <td>
                            <p>Join Three Hotel Membership</p>
                            <p>Enrol free as a member to experience a level of service, luxury, priviledges and rewards that go beyond all your expectations.</p>
                            <br />
                                <asp:Button ID="btnJoin" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" CssClass="floatright" Text="JOIN NOW" OnClick="btnJoin_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
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
