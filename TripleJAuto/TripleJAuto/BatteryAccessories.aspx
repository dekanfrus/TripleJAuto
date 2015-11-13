<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="BatteryAccessories.aspx.cs" Inherits="TripleJAuto.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Battery & Accessory Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/batteries.aspx">Batteries</a></td>
                <td><a runat="server" href="~/batteryChargers.aspx">Battery Chargers</a></td>
            </tr>
            <tr>
                <td><img src="batteries.jpg" height='200px' width='200px' /></td>
                <td><img src="batterychargers.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td><a runat="server" href="~/batteryTerminals.aspx">Battery Terminals</a></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><img src="batteryterminal.jpg" height='200px' width='200px' /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
