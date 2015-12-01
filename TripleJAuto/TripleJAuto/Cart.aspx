<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="TripleJAuto.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
         <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1"></asp:GridView>
         <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <div id="cartbuttons">
            <table>
                <tr>
                    <td><asp:Button ID="btnRemove" runat="server" Text="Remove Item" OnClick="btnRemove_Click" /></td>
                    <td><asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" OnClick="btnEmpty_Click" /></td>
                </tr>
            </table>
        </div>
        <br />
        <div id="shopbuttons">
             <table>
                <tr>
                    <td><asp:Button ID="btnContinue" runat="server" Text="Continue Shopping" OnClick="btnContinue_Click"/></td>
                    <td><asp:Button ID="btnCheckOut" runat="server" Text="Check Out" OnClick="btnCheckOut_Click"/></td>
                </tr>
            </table>
        </div>
        <p id="message">
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </p>
    </div>
</asp:Content>
