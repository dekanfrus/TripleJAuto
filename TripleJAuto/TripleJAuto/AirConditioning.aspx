<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="AirConditioning.aspx.cs" Inherits="TripleJAuto.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Air Conditioning Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/ac_compressor.aspx">A/C Compressor</a></td>
                <td><a runat="server" href="~/ac_clutch.aspx">A/C Clutch</a></td>
            </tr>
            <tr>
                <td><img src="/images/ac_compressor.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/ac_clutch.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td><a runat="server" href="~/ac_expansion.aspx">A/C Expansion Valve</a></td>
                <td><a runat="server" href="~/ac_blower.aspx">A/C Blower Motor</a></td>
            </tr>
            <tr>
                <td><img src="/images/ac_expansion.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/blower_motor.jpg" height='200px' width='200px' /></td>
            </tr>
        </table>
    </div>
</asp:Content>
