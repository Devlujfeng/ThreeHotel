<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MemberRegistration.aspx.cs" Inherits="ThreeHotel.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 750px;
            height: 37px;
        }
        .auto-style13 {
            width: 347px;
        }
        .auto-style14 {
            width: 202px;
            height: 37px;
        }
        .auto-style15 {
            width: 347px;
            height: 37px;
        }
        .floatright {
            float:right;
        }
        .floatleft {
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="Width:100%;" BackColor="#F1F2C4" ForeColor="#F1F2C4">
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
                    <td class="auto-style2">
                        <table class="auto-style3" style="Width:100%;">
                            <tr>
                                <td class="auto-style31">
                                    <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="MEMBER REGISTRATION"></asp:Label>
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                                    <br />
                                    <h5 style="color: rgb(113, 113, 113); font-size: 11px; font-weight: normal; line-height: 17px; margin: 0px; padding: 5px 0px; text-decoration: none; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(239, 239, 237);">*Indicates required field</h5>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True" />
                                    <br />
                                    <table class="auto-style3" >
                                        <tr>
                                            <td class="auto-style15">
                                                <asp:Label ID="Label14" runat="server" Text="Salutation*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:DropDownList ID="ddlSalutation" runat="server" style="margin-left: 0px" Width="200px">
                                                    <asp:ListItem>Mr</asp:ListItem>
                                                    <asp:ListItem>Ms</asp:ListItem>
                                                    <asp:ListItem>Mrs</asp:ListItem>
                                                    <asp:ListItem>Sir</asp:ListItem>
                                                    <asp:ListItem>Dr</asp:ListItem>
                                                    <asp:ListItem>Mdm</asp:ListItem>
                                                    <asp:ListItem>Professor</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style12">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label15" runat="server" Text="Family Name*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtFamilyName" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter Family Name" ForeColor="Red" ControlToValidate="txtFamilyName" Display="Dynamic" ToolTip="Please enter Family Name">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label16" runat="server" Text="First Name*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter First Name" ForeColor="Red" ControlToValidate="txtFirstName" Display="Dynamic" ToolTip="Please enter First Name">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label23" runat="server" Text="Password*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please enter Password" ForeColor="Red" ToolTip="Please enter Password">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label22" runat="server" Text="Confirm Password*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtCPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCPassword" ErrorMessage="Password Mismatch" ForeColor="Red" Display="Dynamic" ToolTip="Password Mismatch">*</asp:CompareValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCPassword" Display="Dynamic" ErrorMessage="Please enter Confirm Password" ForeColor="Red" ToolTip="Please enter Confirm Password">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label17" runat="server" Text="Email*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtEmail" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" Display="Dynamic" ToolTip="Please enter valid email">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" ErrorMessage="Please enter email" ForeColor="Red" ToolTip="Please enter email" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label18" runat="server" Text="Address*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter address" ForeColor="Red" ControlToValidate="txtAddress" Display="Dynamic" ToolTip="Please enter address">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label19" runat="server" Text="Phone No*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="txtPhoneNo" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  ForeColor="Red" ControlToValidate="txtPhoneNo" ErrorMessage="Please enter valid phone number" ValidationExpression="^[89]\d{7}$" Display="Dynamic" ToolTip="Please enter valid phone number">*</asp:RegularExpressionValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ErrorMessage="Please enter Phone No" ForeColor="Red" ToolTip="Please enter Phone No" ControlToValidate="txtPhoneNo">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="auto-style13">
                                                <asp:Label ID="Label20" runat="server" Text="Country*"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:DropDownList ID="ddlCountry" runat="server" Width="200px" CausesValidation="True">
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
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                    <table class="auto-style3">
                                        <tr>
                                            <td>

                                                <asp:Button ID="btnBack" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="BACK" CssClass="floatleft" OnClick="btnBack_Click" CausesValidation="False" />
                
                                                <asp:Button ID="btnSignUp" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" CssClass="floatright" Text="Sign Up" OnClick="btnSignUp_Click" />

                                            </td>
                                        </tr>
                                    </table>
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
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
</asp:Content>
