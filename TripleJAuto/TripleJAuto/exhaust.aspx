<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="exhaust.aspx.cs" Inherits="TripleJAuto.exhaust" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Exhaust Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/clamps.aspx">Clamps</a></td>
                <td><a runat="server" href="~/pipe.aspx">Pipe</a></td>
            </tr>
            <tr>
                <td><img src="/images/clamp.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/pipe.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td><a runat="server" href="~/muffler.aspx">Muffler</a></td>
                <td><a runat="server" href="~/tips.aspx">Tips</a></td>
            </tr>
            <tr>
                <td><img src="/images/muffler.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/tips.jpg" height='200px' width='200px' /></td>
            </tr>
        </table>
    </div>
</asp:Content>
