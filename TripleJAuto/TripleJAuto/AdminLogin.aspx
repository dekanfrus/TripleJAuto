﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="TripleJAuto.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="UserDetail" style="width: auto; margin: 0 auto; float: left">
            <strong>
        <asp:Label ID="lblUserLogged" runat="server" CssClass="auto-style19"></asp:Label>
            </strong>
    </div>

    <div id="LoginArea" style="width: auto; margin: 0 auto; text-align: right;" class="auto-style17">
        <asp:Label ID="lblCheckUser" runat="server" CssClass="auto-style18" style="color: #FF0000"></asp:Label>
        <asp:TextBox ID="txtUsername" placeholder="User Name" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="61px" OnClick="btnAdminLogin_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [UserUsername], [UserPassword], [UserFName], [UserLName], [UserAdmin] FROM [User]"></asp:SqlDataSource>
</asp:Content>
