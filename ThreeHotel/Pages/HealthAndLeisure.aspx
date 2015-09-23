<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="HealthAndLeisure.aspx.cs" Inherits="ThreeHotel.HealthAndLeisure" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10
        {
            height: 31px;
            width: 1184px;
        }
        .auto-style11
        {
            height: 59px;
            width: 1184px;
        }
        .auto-style15
        {
            height: 23px;
            width: 1184px;
        }
        .auto-style17
        {
            width: 1184px;
            text-align: left;
        }
        .table1
       { 
            border-collapse:collapse; 
       } 

       .table1 tr
       { 
            border:1px solid red; 
       } 
        .auto-style26
        {
            border-collapse: collapse;
            height: 24px;
        }

        .auto-style21
        {
            height: 13px;
            width: 1184px;
        }
        .auto-style34
        {
            border-collapse: collapse;
            width: 340px;
            height: 24px;
        }
        .auto-style35
        {
            border-collapse: collapse;
            width: 340px;
            height: 21px;
        }
        .auto-style36
        {
            border-collapse: collapse;
            height: 21px;
        }
        .auto-style37
        {
            border-collapse: collapse;
            width: 340px;
            height: 23px;
        }
        .auto-style38
        {
            border-collapse: collapse;
            height: 23px;
        }
        .auto-style39
        {
            border-collapse: collapse;
            width: 340px;
            height: 22px;
        }
        .auto-style40
        {
            border-collapse: collapse;
            height: 22px;
        }
        .auto-style41
        {
            border-collapse: collapse;
            width: 340px;
            height: 19px;
        }
        .auto-style42
        {
            border-collapse: collapse;
            height: 19px;
        }
        .auto-style43
        {
            border-collapse: collapse;
            width: 340px;
            height: 20px;
        }
        .auto-style44
        {
            border-collapse: collapse;
            height: 20px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" >
        <tr>
            <td class="auto-style21">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.7em" PathSeparator=" : ">
                    <CurrentNodeStyle ForeColor="#BB9754" />
                    <NodeStyle Font-Bold="True" ForeColor="black" />
                    <PathSeparatorStyle Font-Bold="True" ForeColor="black" />
                    <RootNodeStyle Font-Bold="True" ForeColor="black" />
                </asp:SiteMapPath>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">    
                <asp:Label ID="lblTitle1" runat="server" Font-Size="XX-Large" ForeColor="#BB9754" Text="HEALTH &amp; LEISURE"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine1.PNG" Width="746px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                
                <div class="imageRotation">
    <div class="imageBox">
        <a><img src="../Images (ThreeHotel)/Pool.jpg" /></a>&nbsp;
       
    </div>

            </td>
        </tr>
        <tr>
            <td class="auto-style17">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" style="text-align: center" Text="Keep Fit"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <p style="height: 16px">
    <asp:Label ID="Label2" runat="server" Font-Size="Medium" style="text-align: center" ForeColor="#BB9754" Text="or unwind &amp; relax"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/Images (ThreeHotel)/BoldLine2.PNG" Width="736px" />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="The hotel offers a superbly equipped Health Club including sauna, steam bath, whirlpool, and massage facilities for members"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Step outside and be welcomed by the full-sized swimming pool and a separate pool with waterslide that sits alongside"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Font-Size="Medium" style="text-align: left" Text="Iss's finest outdoor tennies courts"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <br />
                <br />
                <table class="auto-style3" >
                    <tr>
                        <td>
                            <h3>Facilities </h3>
                        </td>
                        <td>
                            <h3>Hours</h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style35">Beauty Parlour</td>
                        <td class="auto-style36">2pm-10:30pm</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">Bicycles for hire</td>
                        <td class="auto-style38">24 hours</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">Fitness Centre</td>
                        <td class="auto-style38">7am -11pm</td>
                    </tr>
                    <tr>
                        <td class="auto-style39">Jacuzzi</td>
                        <td class="auto-style40">1pm - midnight</td>
                    </tr>
                    <tr>
                        <td class="auto-style41">Massage</td>
                        <td class="auto-style42">3pm - 12midnight</td>
                    </tr>
                    <tr>
                        <td class="auto-style43">Outdoor Children&#39;s Pool</td>
                        <td class="auto-style44">7am - 11pm</td>
                    </tr>
                    <tr>
                        <td class="auto-style41">Outdoor Swimming Pool</td>
                        <td class="auto-style42" colspan="0">7am - 11pm</td>
                    </tr>
                    <tr>
                        <td class="auto-style41">Sauna</td>
                        <td class="auto-style42">1pm - 12midnight</td>
                    </tr>
                    <tr>
                        <td class="auto-style41">Steam Room</td>
                        <td class="auto-style42">1pm - 12midnight</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">Tennis Courts</td>
                        <td class="auto-style36">7am - 11pm</td>
                    </tr>
                    <tr>
                        <td class="auto-style35">Water Slide</td>
                        <td class="auto-style36">7am - 10pm</td>
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
