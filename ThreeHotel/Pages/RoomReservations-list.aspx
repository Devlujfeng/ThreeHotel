<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RoomReservations-list.aspx.cs" Inherits="ThreeHotel.Pages.RoomReservations_list" %>
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
            <td><asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="ROOM RESERVATION"></asp:Label>
                <asp:Image ID="Image7" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td style="font-size: 0.8em">
                <span>Check-in</span>
                <span><asp:TextBox ID="checkInDatePicker" runat="server" ToolTip="Enter Check-in Date" Width="55px" Font-Size="X-Small"></asp:TextBox></span>
                &nbsp;
                <span>Check-out</span>
                <span><asp:TextBox ID="checkOutDatePicker" runat="server" ToolTip="Enter Check-out Date" Width="55px" Font-Size="X-Small"></asp:TextBox></span>
                &nbsp;
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
                    <ContentTemplate>
                        <span>No. of rooms</span>
                            <asp:DropDownList ID="DropDownListRoomCount" runat="server" OnSelectedIndexChanged="DropDownListRoomCount_SelectedIndexChanged" AutoPostBack="True" Width="31px" Font-Size="X-Small">
                            </asp:DropDownList>
                                        &nbsp;
                            <span>Adults</span>
                            <asp:DropDownList ID="DropDownListAdult" runat="server" OnSelectedIndexChanged="DropDownListAdult_SelectedIndexChanged" AutoPostBack="True" Width="31px" Font-Size="X-Small">
                            </asp:DropDownList>
                                        &nbsp;
                            <span>Children</span>
                            <asp:DropDownList ID="DropDownListChildren" runat="server" Width="31px" Font-Size="X-Small">
                            </asp:DropDownList>
                            &nbsp;
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:ImageButton ID="imgSearchAgain" runat="server" ImageUrl="~/Images (ThreeHotel)/SearchAgain.png" PostBackUrl="~/Pages/RoomReservations-list.aspx" CssClass="imgSearchAgain" Height="10px" />
                <asp:LinkButton ID="lbtnSearchAgain" runat="server" PostBackUrl="~/Pages/RoomReservations-list.aspx" CssClass="lbtnSearchAgain" ForeColor="#BB9754" OnClick="lbtnSearchAgain_Click">Search Again</asp:LinkButton>
                <br />
                <br />
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAllUnavailable" runat="server" ForeColor="Red"></asp:Label>
                
                <br />
                <table class="auto-style3">
                    <tr style="background-color: #F7F6F3; color:#7C6F57">
                        <td>
                            <p>Room Type</p>
                        </td>
                        <td>
                            <p>Bed Type</p>
                        </td>
                        <td>Rate Per Night</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div style="float:left; margin-left:2%; margin-right:2%">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/DC.jpg" />
                                </div>
                                <div style="margin-left:85px">
                                    <span>Deluxe City View Room</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <%--<asp:RadioButtonList ID="rbtnl_DC" runat="server">
                                <asp:ListItem Text="King" Value="DCK"></asp:ListItem>
                                <asp:ListItem Text="Twin" Value="DCT"></asp:ListItem>
                            </asp:RadioButtonList>--%>

                            <asp:RadioButton ID="rbtn_DCK" runat="server" Text="King" Enabled="False" GroupName="DC" />
                            <br />
                            <asp:RadioButton ID="rbtn_DCT" runat="server" Text="Twin" Enabled="False" GroupName="DC" />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="SGD " Font-Size="Large"></asp:Label>
                            <asp:Label ID="lblDCRate" runat="server" Text="275" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnBook_DC" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="Book Now" OnClick="btnBook_DC_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div style="float:left; margin-left:2%; margin-right:2%">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/DS.jpg" />
                                </div>
                                <div style="margin-left:85px">
                                    <span>Deluxe Sea View Room</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <asp:RadioButton ID="rbtn_DSK" runat="server" Text="King" Enabled="False" GroupName="DS" />
                            <br />
                            <asp:RadioButton ID="rbtn_DST" runat="server" Text="Twin" Enabled="False" GroupName="DS" />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="SGD " Font-Size="Large"></asp:Label>
                            <asp:Label ID="lblDSRate" runat="server" Text="295" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnBook_DS" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="Book Now" OnClick="btnBook_DS_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div style="float:left; margin-left:2%; margin-right:2%">
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/HC.jpg" />
                                </div>
                                <div style="margin-left:85px">
                                    <span>Horizon Club City View Room</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <asp:RadioButton ID="rbtn_HCK" runat="server" Text="King" Enabled="False" GroupName="HC" />
                            <br />
                            <asp:RadioButton ID="rbtn_HCT" runat="server" Text="Twin" Enabled="False" GroupName="HC" />
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="SGD " Font-Size="Large"></asp:Label>
                            <asp:Label ID="lblHCRate" runat="server" Text="305" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnBook_HC" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="Book Now" OnClick="btnBook_HC_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <div style="float:left; margin-left:2%; margin-right:2%">
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/HS.jpg" />
                                </div>
                                <div style="margin-left:85px">
                                    <span>Horizon Club Sea View Room</span>
                                </div>
                            </div>
                        </td>
                        <td>
                            <asp:RadioButton ID="rbtn_HSK" runat="server" Text="King" Enabled="False" GroupName="HS" />
                            <br />
                            <asp:RadioButton ID="rbtn_HST" runat="server" Text="Twin" Enabled="False" GroupName="HS" />
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="SGD " Font-Size="Large"></asp:Label>
                            <asp:Label ID="lblHSRate" runat="server" Text="325" Font-Size="Large"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnBook_HS" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="Book Now" OnClick="btnBook_HS_Click" />
                        </td>
                    </tr>
                </table>
                
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <asp:Image ID="Image6" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
