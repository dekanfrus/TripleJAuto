<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="BeltsHoses.aspx.cs" Inherits="TripleJAuto.BeltsHoses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Belts & Hoses Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/belts.aspx">Belts</a></td>
                <td><a runat="server" href="~/hoses.aspx">Hoses</a></td>
            </tr>
            <tr>
                <td><img src="/images/belts.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/hoses.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
