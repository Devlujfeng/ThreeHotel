<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RoomReservations-input.aspx.cs" Inherits="ThreeHotel.RoomReservations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
        $(function () {

            $("#<%=checkInDatePicker.ClientID %>").datepicker({
                dateFormat: 'dd/mm/yy',
                changeMonth: true,
                minDate: new Date(),
                maxDate: '+3m',
                showOn: 'button',
                buttonImage: '../Images (ThreeHotel)/Date.png',
                buttonImageOnly: true,
                onSelect: function (selected) {
                    var minDate = $(this).datepicker('getDate');
                    minDate.setDate(minDate.getDate() + 1);
                    $("#<%=checkOutDatePicker.ClientID %>").datepicker("option", "minDate", minDate)
                }

            });

            $("#<%=checkOutDatePicker.ClientID %>").datepicker({
                minDate: new Date(),
                dateFormat: 'dd/mm/yy',
                changeMonth: true,
                showOn: 'button',
                buttonImage: '../Images (ThreeHotel)/Date.png',
                buttonImageOnly: true,
            });
        });
    </script>
    <style>
        .ui-datepicker-trigger {
            position: relative;
            top: 4px;
            left: 5px;
            height: 19px;
        }

        .ui-datepicker {
            font-size: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="ROOM RESERVATION"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Button Text="New Reservation" BorderStyle="None" ID="btnNewReservation" CssClass="Initial" runat="server" OnClick="btnNewReservation_Click" />
                            <asp:Button Text="View Reservation" BorderStyle="None" ID="btnViewReservation" CssClass="Initial" runat="server" OnClick="btnViewReservation_Click" />
                            <asp:MultiView ID="MainView" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table class="auto-style3">
                                        <tr>
                                            <td>

                                                <table class="auto-style3">
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Label ID="lblTitle2" runat="server" Font-Size="X-Large" ForeColor="#BB9754" Text="GET THE BEST RATES, GUARANTEED"></asp:Label>
                                                            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <span>Check-in</span>&nbsp;
                                                  <span>
                                                      <asp:TextBox ID="checkInDatePicker" runat="server" ToolTip="Enter Check-in Date"></asp:TextBox></span>
                                                        </td>
                                                        <td>
                                                            <span>Check-out</span>&nbsp;
                                                  <span>
                                                      <asp:TextBox ID="checkOutDatePicker" runat="server" ToolTip="Enter Check-out Date"></asp:TextBox></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <br />
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <span>No. of rooms</span>&nbsp;
                                                                        <asp:DropDownList ID="DropDownListRoomCount" runat="server" OnSelectedIndexChanged="DropDownListRoomCount_SelectedIndexChanged" AutoPostBack="True">
                                                                        </asp:DropDownList>
                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <span>Adults</span>&nbsp;
                                                                        <asp:DropDownList ID="DropDownListAdult" runat="server" OnSelectedIndexChanged="DropDownListAdult_SelectedIndexChanged" AutoPostBack="True">
                                                                        </asp:DropDownList>
                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <span>Children</span>&nbsp;
                                                                        <asp:DropDownList ID="DropDownListChildren" runat="server">
                                                                        </asp:DropDownList>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <span>Special Rate (optional)</span> &nbsp;
                                                  <asp:TextBox ID="txtSpecialRate" runat="server" ToolTip="Enter Code"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <br />
                                                            <br />
                                                            <asp:Button ID="btnSearch" runat="server" Text="CHECK RATES & OFFERS" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" OnClick="btnSearch_Click" />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="auto-style3">
                                        <tr>
                                            <td>
                                                <table class="auto-style3">
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#BB9754" Text="VIEW EXISTING RESERVATION"></asp:Label>
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />

                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="lblRetrieveReservation" runat="server" Text="Retrieve / Cancel Reservation via Booking Reference No." Font-Bold="True" Font-Size="Medium"></asp:Label>
                                                            <br />
                                                            <br />
                                                            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                                            <br />
                                                            <br />
                                                            <span>Booking Reservation No.</span>&nbsp;
                                                  <span>
                                                      <asp:TextBox ID="txtReservationNo" runat="server" ToolTip="Enter Booking Reference No."></asp:TextBox></span>
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                  <span>Family/Last Name</span>&nbsp;
                                                  <span>
                                                      <asp:TextBox ID="txtLastName" runat="server" ToolTip="Enter Your Last Name"></asp:TextBox></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <br />
                                                            <br />
                                                            <asp:Button ID="btnContinue" runat="server" Text="CONTINUE" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" OnClick="btnContinue_Click" />
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
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
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
