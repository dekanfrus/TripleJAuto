<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TripleJAuto.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="home-container">
        <div class="home-header">
            <h1>Welcome to Triple J Auto!</h1>
            <h2>Parts on sale this week!</h2>
        </div>
    <table>
        <tr>
            <td><a runat="server" href="~/rotors.aspx">Rotors</a></td>
            <td><a runat="server" href="~/ac_compressor.aspx">A/C Compressor</a></td>
        </tr>
        <tr>
            <td><img src="rotors.jpg" height='200px' width='200px' /></td>
            <td><img src="ac_compressor.jpg" height='200px' width='200px' /></td>
        </tr>
        <tr>
            <td><a runat="server" href="~/ac_blower.aspx">A/C Blower Motor</a></td>
            <td><a runat="server" href="~/belts.aspx">Belts</a></td>
        </tr>
        <tr>
            <td><img src="blower_motor.jpg" height='200px' width='200px' /></td>
            <td><img src="belts.jpg" height='200px' width='200px' /></td>
        </tr>
    </table>
    </div>
</asp:Content>
