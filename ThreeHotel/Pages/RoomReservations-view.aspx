<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RoomReservations-view.aspx.cs" Inherits="ThreeHotel.Pages.RoomReservations_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="VIEW RESERVATION"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPastTransaction" runat="server" style="font-size: x-large" ForeColor="#BB9754" Text="Past Transaction"></asp:Label>
                <br />
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
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
        </tr>
        <tr>
            <td class="auto-style10">
                <br />
                <br />
                <asp:CheckBox ID="ckCancel" runat="server" Text="I would like to cancel my reservation." />
                <br />
                <br />
                <asp:Button ID="btnBack" runat="server" BackColor="#CCCCCC" BorderColor="#CCCCCC" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="BACK" CssClass="floatleft" CausesValidation="False" OnClick="btnBack_Click" />
                
                <asp:Button ID="btnCancelReservation" runat="server" BackColor="#BB9754" BorderColor="#BB9754" Font-Names="Verdana" Font-Size="Small" ForeColor="White" Text="CANCEL RESERVATION" CssClass="floatright" OnClick="btnCancelReservation_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
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
