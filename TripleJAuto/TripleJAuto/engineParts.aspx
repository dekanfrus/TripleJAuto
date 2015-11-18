<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="engineParts.aspx.cs" Inherits="TripleJAuto.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Engine & Mount Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/mounts.aspx">Mounts</a></td>
                <td><a runat="server" href="~/cylinderHeads.aspx">Cylinder Heads</a></td>
            </tr>
            <tr>
                <td><img src="/images/mounts.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/cylinderheads.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td><a runat="server" href="~/camshaftsCranks.aspx">Camshafts & Cranks</a></td>
                <td><a runat="server" href="~/timingParts.aspx">Timing Parts</a></td>
            </tr>
            <tr>
                <td><img src="/images/camshaft.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/distributor.jpg" height='200px' width='200px' /></td>
            </tr>
        </table>
    </div>
</asp:Content>
