<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="TripleJAuto.UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="container-header">
            <h1>Please enter your credentials</h1>
        </div>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="User Name"></asp:TextBox></td>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="Label" ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password"></asp:TextBox></td>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Label" ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="168px" /></td>
                <td></td>
            </tr>
        </table>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [UserUsername], [UserPassword], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserEmail], [UserCountry], [UserPhone], [UserID] FROM [User]"></asp:SqlDataSource>
</asp:Content>
