<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="Brakes.aspx.cs" Inherits="TripleJAuto.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Brake Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/pads.aspx">Brake Pads</a></td>
                <td><a runat="server" href="~/rotors.aspx">Rotors</a></td>
            </tr>
            <tr>
                <td><img src="/images/brakes.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/rotors.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td><a runat="server" href="~/calipers.aspx">Brake Calipers</a></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><img src="/images/caliper.jpg" height='200px' width='200px' /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
