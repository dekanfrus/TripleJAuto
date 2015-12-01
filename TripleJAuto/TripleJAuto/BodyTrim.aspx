<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="BodyTrim.aspx.cs" Inherits="TripleJAuto.BodyTrim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Body & Trim Parts</h1>
        </div>
        <table>
            <tr>
                <td><a runat="server" href="~/bodyParts.aspx">Body Parts</a></td>
                <td><a runat="server" href="~/fasteners.aspx">Fasteners</a></td>
            </tr>
            <tr>
                <td><img src="/images/bodyparts.jpg" height='200px' width='200px' /></td>
                <td><img src="/images/fasteners.jpg" height='200px' width='200px' /></td>
            </tr>
            <tr>
                <td><a runat="server" href="~/paint.aspx">Paint</a></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><img src="/images/paint.jpg" height='200px' width='200px' /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
