<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="Brakes.aspx.cs" Inherits="TripleJAuto.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Brakes" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <table>
            <tr>
                <td>Brake Pads</td>
                <td>Rotors</td>
            </tr>
            <tr>
                <td><img src="brakes.jpg" height='200px' width='200px' /></td>
                <td><img src="rotors.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td>Brake Calipers</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><img src="caliper.jpg" height='200px' width='200px' /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
