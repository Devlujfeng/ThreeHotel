<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RoomReservations-reservation.aspx.cs" Inherits="ThreeHotel.Pages.RoomReservations_reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            height: 30px;
        }
        .floatright {
            float:right;
        }
        .floatleft {
            float: left;
        }
        .formHeader {
            font-size:medium;
        }
        .sidetable>p {
            font-size:small;
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
            <td style="text-align: right">
                <asp:ImageButton ID="imgSearchAgain" runat="server" ImageUrl="~/Images (ThreeHotel)/SearchAgain.png" PostBackUrl="~/Pages/RoomReservations-list.aspx" CssClass="imgSearchAgain" Height="10px" OnClick="imgSearchAgain_Click" CausesValidation="False" />
                <asp:LinkButton ID="lbtnBack" runat="server" CssClass="lbtnSearchAgain" ForeColor="#BB9754" OnClick="lbtnSearchAgain_Click" Font-Size="Small" CausesValidation="False">Back</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>

                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:Label ID="lblGuestInfo" runat="server" Font-Size="Large" ForeColor="#BB9754" Text="Guest Information"></asp:Label>
                            <br />
                            <table class="auto-style3" style="background-color: #F7F6F3">
                                <tr>
                                    <td>
                                        <br />
                                        <p style="font-size:small">*Indicates required field</p>
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" ValidationGroup="1" />
                                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ShowMessageBox="True" ValidationGroup="2" />
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-size:medium"><b>Golden Circle Member?</b></p>
                                        <p>Sign in for better and faster service.</p>
                                        
                                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                                        <table class="auto-style3">
                                            <tr>
                                                <td><asp:Label ID="lblMembershipNo" runat="server" Text="Membership Number  "></asp:Label></td>
                                                <td><asp:TextBox ID="txtusername" runat="server" ValidationGroup="1"></asp:TextBox></td>
                                                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter Membership No" ForeColor="Red" ControlToValidate="txtusername" Display="Dynamic" ToolTip="Please enter Membership No">*</asp:RequiredFieldValidator></td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td><asp:Label ID="lblPassword" runat="server" Text="Password  "></asp:Label></td>
                                                <td><asp:TextBox ID="txtpwd" runat="server" ValidationGroup="1" TextMode="Password"></asp:TextBox></td>
                                                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Password" ForeColor="Red" ControlToValidate="txtpwd" Display="Dynamic" ToolTip="Please enter Password">*</asp:RequiredFieldValidator></td>
                                                <td><asp:Button ID="btnLogin" runat="server" Text="LOGIN" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" OnClick="btnLogin_Click" ValidationGroup="1" /></td>
                                            </tr>
                                        </table>
                                        <hr />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-size:medium"><b>Contact Information</b></p>

                                        <table class="auto-style3">
                                            <tr>
                                                <td>
                                                    <p>Salutation*</p>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlSalutation" runat="server" Height="16px" Width="210px">
                                                        <asp:ListItem Enabled="false">Salutation</asp:ListItem>
                                                        <asp:ListItem>Mr</asp:ListItem>
                                                        <asp:ListItem>Ms</asp:ListItem>
                                                        <asp:ListItem>Mrs</asp:ListItem>
                                                        <asp:ListItem>Sir</asp:ListItem>
                                                        <asp:ListItem>Dr</asp:ListItem>
                                                        <asp:ListItem>Mdm</asp:ListItem>
                                                        <asp:ListItem>Professor</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Family Name/Surname*</p>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtFamilyName" runat="server" Width="210px" ValidationGroup="2"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Family Name" ForeColor="Red" ControlToValidate="txtFamilyName" Display="Dynamic" ToolTip="Please enter Family Name">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>First Name/Given Name*</p>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtFirstName" runat="server" Width="210px" ValidationGroup="2"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter First Name" ForeColor="Red" ControlToValidate="txtFirstName" Display="Dynamic" ToolTip="Please enter First Name">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>E-mail Address*</p>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtEmail" runat="server" Width="210px" ValidationGroup="2"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Display="Dynamic" ToolTip="Please enter valid email">*</asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ErrorMessage="Please enter email" ForeColor="Red" ToolTip="Please enter email" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Address*</p>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtAddress" runat="server" Width="210px" ValidationGroup="2"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter address" ForeColor="Red" ControlToValidate="txtAddress" Display="Dynamic" ToolTip="Please enter address">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Phone Number*</p>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtPhoneNo" runat="server" Width="210px" ValidationGroup="2"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ForeColor="Red" ControlToValidate="txtPhoneNo" ErrorMessage="Please enter valid phone number" ValidationExpression="^[89]\d{7}$" Display="Dynamic" ToolTip="Please enter valid phone number">*</asp:RegularExpressionValidator>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ErrorMessage="Please enter Phone No" ForeColor="Red" ToolTip="Please enter Phone No" ControlToValidate="txtPhoneNo">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Country*</p>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlCountry" runat="server" Height="16px" Width="210px" ValidationGroup="2">
                                                        <asp:ListItem Enabled="false">--Select Country--</asp:ListItem>
                                                        <asp:ListItem>Afghanistan</asp:ListItem>
                                                        <asp:ListItem>Albania</asp:ListItem>
                                                        <asp:ListItem>Argentina</asp:ListItem>
                                                        <asp:ListItem>Australia</asp:ListItem>
                                                        <asp:ListItem>Bangladesh</asp:ListItem>
                                                        <asp:ListItem>Belgium</asp:ListItem>
                                                        <asp:ListItem>Brazil</asp:ListItem>
                                                        <asp:ListItem>Brunei </asp:ListItem>
                                                        <asp:ListItem>Cambodia</asp:ListItem>
                                                        <asp:ListItem>Canada</asp:ListItem>
                                                        <asp:ListItem>China</asp:ListItem>
                                                        <asp:ListItem>Colombia</asp:ListItem>
                                                        <asp:ListItem>Denmark</asp:ListItem>
                                                        <asp:ListItem>Dominica</asp:ListItem>
                                                        <asp:ListItem>Egypt</asp:ListItem>
                                                        <asp:ListItem>Estonia</asp:ListItem>
                                                        <asp:ListItem>Ethiopia</asp:ListItem>
                                                        <asp:ListItem>Finland</asp:ListItem>
                                                        <asp:ListItem>France</asp:ListItem>
                                                        <asp:ListItem>Georgia</asp:ListItem>
                                                        <asp:ListItem>Germany</asp:ListItem>
                                                        <asp:ListItem>Greece</asp:ListItem>
                                                        <asp:ListItem>Hong Kong</asp:ListItem>
                                                        <asp:ListItem>Hungary</asp:ListItem>
                                                        <asp:ListItem>Iceland</asp:ListItem>
                                                        <asp:ListItem>India</asp:ListItem>
                                                        <asp:ListItem>Indonesia</asp:ListItem>
                                                        <asp:ListItem>Iran</asp:ListItem>
                                                        <asp:ListItem>Italy</asp:ListItem>
                                                        <asp:ListItem>Jamaica</asp:ListItem>
                                                        <asp:ListItem>Japan</asp:ListItem>
                                                        <asp:ListItem>Jordan</asp:ListItem>
                                                        <asp:ListItem>Kenya</asp:ListItem>
                                                        <asp:ListItem>Korea</asp:ListItem>
                                                        <asp:ListItem>Laos</asp:ListItem>
                                                        <asp:ListItem>Libya</asp:ListItem>
                                                        <asp:ListItem>Macau</asp:ListItem>
                                                        <asp:ListItem>Malaysia</asp:ListItem>
                                                        <asp:ListItem>Maldives</asp:ListItem>
                                                        <asp:ListItem>Maxico</asp:ListItem>
                                                        <asp:ListItem>Monaco</asp:ListItem>
                                                        <asp:ListItem>Myanmar</asp:ListItem>
                                                        <asp:ListItem>Nepal</asp:ListItem>
                                                        <asp:ListItem>Netherlands</asp:ListItem>
                                                        <asp:ListItem>New Zealand</asp:ListItem>
                                                        <asp:ListItem>Norway</asp:ListItem>
                                                        <asp:ListItem>Oman</asp:ListItem>
                                                        <asp:ListItem>Pakistan</asp:ListItem>
                                                        <asp:ListItem>Peru</asp:ListItem>
                                                        <asp:ListItem>Philippines</asp:ListItem>
                                                        <asp:ListItem>Poland</asp:ListItem>
                                                        <asp:ListItem>Portugal</asp:ListItem>
                                                        <asp:ListItem>Romania</asp:ListItem>
                                                        <asp:ListItem>Russia</asp:ListItem>
                                                        <asp:ListItem>Rwanda</asp:ListItem>
                                                        <asp:ListItem>Serbia</asp:ListItem>
                                                        <asp:ListItem>Singapore</asp:ListItem>
                                                        <asp:ListItem>Slovakia</asp:ListItem>
                                                        <asp:ListItem>Spain</asp:ListItem>
                                                        <asp:ListItem>Sweden</asp:ListItem>
                                                        <asp:ListItem>Switzerland</asp:ListItem>
                                                        <asp:ListItem>Syria</asp:ListItem>
                                                        <asp:ListItem>Taiwan</asp:ListItem>
                                                        <asp:ListItem>Thailand</asp:ListItem>
                                                        <asp:ListItem>Turkey</asp:ListItem>
                                                        <asp:ListItem>Uganda</asp:ListItem>
                                                        <asp:ListItem>Ukraine</asp:ListItem>
                                                        <asp:ListItem>United Arab Emirates</asp:ListItem>
                                                        <asp:ListItem>United Kingdom</asp:ListItem>
                                                        <asp:ListItem>Vietnam</asp:ListItem>
                                                        <asp:ListItem>Zambia</asp:ListItem>
                                                        <asp:ListItem>Zimbabwe</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <hr />
                                                </td>
                                            </tr>
                                        </table>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p style="font-size:medium"><b>Credit Card Guarantee</b></p>
                                        <p>Your credit card number is used to hold your reservation. It will not be charged at booking.</p>

                                        <table class="auto-style3">
                                            <tr>
                                                <td>
                                                    <p>Credit Card Number*</p>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtCardNo" runat="server" Width="210px" ValidationGroup="2"></asp:TextBox>
                                                </td>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  ForeColor="Red" ControlToValidate="txtCardNo" ErrorMessage="Please enter valid phone number" ValidationExpression="^\d{16}$" Display="Dynamic" ToolTip="Please enter valid card number">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please enter Card No" ForeColor="Red" ToolTip="Please enter Card No" ControlToValidate="txtCardNo">*</asp:RequiredFieldValidator>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Card Type*</p>
                                                </td>
                                                <td>
                                                    <asp:RadioButtonList ID="rbtnCardType" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" ValidationGroup="2">
                                                         <asp:ListItem Text='<img src="../Images (ThreeHotel)/card_AX.png" />' Value="AMEX" />
                                                         <asp:ListItem Text='<img src="../Images (ThreeHotel)/card_MC.png" />' Value="MasterCard"/>
                                                         <asp:ListItem Text='<img src="../Images (ThreeHotel)/card_VA.png" />' Value="VISA" />
                                                         <asp:ListItem Text='<img src="../Images (ThreeHotel)/card_DC.png" />' Value="DinersClub"/>
                                                         <asp:ListItem Text='<img src="../Images (ThreeHotel)/card_JC.png" />' Value="JCB" />
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Expiry Date*</p>
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlMonth" runat="server" ValidationGroup="2">
                                                        <asp:ListItem>Jan</asp:ListItem>
                                                        <asp:ListItem>Feb</asp:ListItem>
                                                        <asp:ListItem>Mar</asp:ListItem>
                                                        <asp:ListItem>Apr</asp:ListItem>
                                                        <asp:ListItem>May</asp:ListItem>
                                                        <asp:ListItem>Jun</asp:ListItem>
                                                        <asp:ListItem>Jul</asp:ListItem>
                                                        <asp:ListItem>Aug</asp:ListItem>
                                                        <asp:ListItem>Sep</asp:ListItem>
                                                        <asp:ListItem>Oct</asp:ListItem>
                                                        <asp:ListItem>Nov</asp:ListItem>
                                                        <asp:ListItem>Dec</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:DropDownList ID="ddlYear" runat="server" ValidationGroup="2">
                                                        <asp:ListItem>2015</asp:ListItem>
                                                        <asp:ListItem>2016</asp:ListItem>
                                                        <asp:ListItem>2017</asp:ListItem>
                                                        <asp:ListItem>2018</asp:ListItem>
                                                        <asp:ListItem>2019</asp:ListItem>
                                                        <asp:ListItem>2020</asp:ListItem>
                                                        <asp:ListItem>2021</asp:ListItem>
                                                        <asp:ListItem>2022</asp:ListItem>
                                                        <asp:ListItem>2023</asp:ListItem>
                                                        <asp:ListItem>2024</asp:ListItem>
                                                        <asp:ListItem>2025</asp:ListItem>
                                                        <asp:ListItem>2026</asp:ListItem>
                                                        <asp:ListItem>2027</asp:ListItem>
                                                        <asp:ListItem>2028</asp:ListItem>
                                                        <asp:ListItem>2029</asp:ListItem>
                                                        <asp:ListItem>2030</asp:ListItem>
                                                        <asp:ListItem>2031</asp:ListItem>
                                                        <asp:ListItem>2032</asp:ListItem>
                                                        <asp:ListItem>2033</asp:ListItem>
                                                        <asp:ListItem>2034</asp:ListItem>
                                                        <asp:ListItem>2035</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>

                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="vertical-align:top">
                            <table class="auto-style3" id="sideTable">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="#BB9754" Text="Stay Summary"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                        <table class="auto-style3" style="font-size:small">
                                            <tr>
                                                <td colspan="2">
                                                    <p>Three Hotel, Singapore</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Arrival:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblArrival" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Departure:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblDeparture" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>No of Rooms:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblRoomCount" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>No of Adults:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblAdultCount" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>No of Children:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblChildrenCount" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Room:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblRoomDesc" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Rate:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblRate" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Group Code:</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblGroupCode" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <hr class="hr1" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>

                                        <table class="auto-style3" style="font-size:small">
                                            <tr>
                                                <td colspan="2">
                                                    <p>Room Cost</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblNoOfNights" runat="server"></asp:Label>
                                                    <asp:Label ID="lblNight" runat="server" Text="Night(s)"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblCostNights" runat="server" ForeColor="#BB9754"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblDateRange" runat="server"></asp:Label>
                                                </td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Tax and Service Charge</p>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblTaxSC" runat="server" ForeColor="#BB9754"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <hr class="hr1" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right" colspan="2">
                                        <span>TOTAL COST</span>
                                        <br />
                                        <asp:Label ID="lblTotalCost" runat="server" style="font-size:small" ForeColor="#BB9754"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <br />
                <asp:Button ID="btnBack" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="BACK" CssClass="floatleft" OnClick="btnBack_Click" CausesValidation="False" />
                
                <asp:Button ID="btnCompleteReservation" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="COMPLETE YOUR RESERVATION" CssClass="floatright" OnClick="btnCompleteReservation_Click" ValidationGroup="2" />
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
