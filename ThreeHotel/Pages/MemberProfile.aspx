<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MemberProfile.aspx.cs" Inherits="ThreeHotel.Pages.MemberProfile" %>
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
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="MEMBER PROFILE"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />

            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Image ID="Image1" runat="server" CssClass="img" ImageUrl="~/Images (ThreeHotel)/SL-About-Golden-Circle.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
                <br />
            </td>
        </tr>
        <tr>
            <td>

                <table class="auto-style3">
                    <tr>
                        <td style="vertical-align:top">
                            <asp:Label ID="lblPastTransaction" runat="server" style="font-size: x-large" ForeColor="#BB9754" Text="Past Transaction"></asp:Label>
                            <p style="color:dimgrey"><asp:Label ID="LabelblMagl" runat="server"></asp:Label></p>
                                <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" Font-Size="Small">
                                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                    <FooterStyle BackColor="Tan" />
                                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                </asp:GridView>
                            </td>
                        <td>
                            &nbsp;&nbsp;
                        </td>
                        <td style="vertical-align:top">
                            
                            <table class="auto-style3">
                                <tr>
                                    <td colspan="2">
                                        <p style="color:#BB9754; font-size:medium"><b>Golden Circle Member</b></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p>Name:</p>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Member ID:</td>
                                    <td>
                                        <asp:Label ID="lblMemberId" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Points:</td>
                                    <td>
                                        <asp:Label ID="lblPoints" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: left;">
                                        <asp:Button ID="btnEdit" runat="server" Font-Names="Verdana" ForeColor="White" BackColor="#BB9754" BorderColor="#BB9754" Font-Size="Small" Text="Edit Profile" OnClick="btnEdit_Click1" />
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
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />

                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
