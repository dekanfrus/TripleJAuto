<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="TripleJAuto.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
        <EditItemTemplate>
            UserUsername:
            <asp:TextBox ID="UserUsernameTextBox" runat="server" Text='<%# Bind("UserUsername") %>' />
            <br />
            UserPassword:
            <asp:TextBox ID="UserPasswordTextBox" runat="server" Text='<%# Bind("UserPassword") %>' />
            <br />
            UserEmail:
            <asp:TextBox ID="UserEmailTextBox" runat="server" Text='<%# Bind("UserEmail") %>' />
            <br />
            UserFName:
            <asp:TextBox ID="UserFNameTextBox" runat="server" Text='<%# Bind("UserFName") %>' />
            <br />
            UserLName:
            <asp:TextBox ID="UserLNameTextBox" runat="server" Text='<%# Bind("UserLName") %>' />
            <br />
            UserStreet:
            <asp:TextBox ID="UserStreetTextBox" runat="server" Text='<%# Bind("UserStreet") %>' />
            <br />
            UserCity:
            <asp:TextBox ID="UserCityTextBox" runat="server" Text='<%# Bind("UserCity") %>' />
            <br />
            UserZip:
            <asp:TextBox ID="UserZipTextBox" runat="server" Text='<%# Bind("UserZip") %>' />
            <br />
            UserCountry:
            <asp:TextBox ID="UserCountryTextBox" runat="server" Text='<%# Bind("UserCountry") %>' />
            <br />
            UserPhone:
            <asp:TextBox ID="UserPhoneTextBox" runat="server" Text='<%# Bind("UserPhone") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            UserUsername:
            <asp:TextBox ID="UserUsernameTextBox" runat="server" Text='<%# Bind("UserUsername") %>' />
            <br />
            UserPassword:
            <asp:TextBox ID="UserPasswordTextBox" runat="server" Text='<%# Bind("UserPassword") %>' />
            <br />
            UserEmail:
            <asp:TextBox ID="UserEmailTextBox" runat="server" Text='<%# Bind("UserEmail") %>' />
            <br />
            UserFName:
            <asp:TextBox ID="UserFNameTextBox" runat="server" Text='<%# Bind("UserFName") %>' />
            <br />
            UserLName:
            <asp:TextBox ID="UserLNameTextBox" runat="server" Text='<%# Bind("UserLName") %>' />
            <br />
            UserStreet:
            <asp:TextBox ID="UserStreetTextBox" runat="server" Text='<%# Bind("UserStreet") %>' />
            <br />
            UserCity:
            <asp:TextBox ID="UserCityTextBox" runat="server" Text='<%# Bind("UserCity") %>' />
            <br />
            UserZip:
            <asp:TextBox ID="UserZipTextBox" runat="server" Text='<%# Bind("UserZip") %>' />
            <br />
            UserCountry:
            <asp:TextBox ID="UserCountryTextBox" runat="server" Text='<%# Bind("UserCountry") %>' />
            <br />
            UserPhone:
            <asp:TextBox ID="UserPhoneTextBox" runat="server" Text='<%# Bind("UserPhone") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            UserUsername:
            <asp:Label ID="UserUsernameLabel" runat="server" Text='<%# Bind("UserUsername") %>' />
            <br />
            UserPassword:
            <asp:Label ID="UserPasswordLabel" runat="server" Text='<%# Bind("UserPassword") %>' />
            <br />
            UserEmail:
            <asp:Label ID="UserEmailLabel" runat="server" Text='<%# Bind("UserEmail") %>' />
            <br />
            UserFName:
            <asp:Label ID="UserFNameLabel" runat="server" Text='<%# Bind("UserFName") %>' />
            <br />
            UserLName:
            <asp:Label ID="UserLNameLabel" runat="server" Text='<%# Bind("UserLName") %>' />
            <br />
            UserStreet:
            <asp:Label ID="UserStreetLabel" runat="server" Text='<%# Bind("UserStreet") %>' />
            <br />
            UserCity:
            <asp:Label ID="UserCityLabel" runat="server" Text='<%# Bind("UserCity") %>' />
            <br />
            UserZip:
            <asp:Label ID="UserZipLabel" runat="server" Text='<%# Bind("UserZip") %>' />
            <br />
            UserCountry:
            <asp:Label ID="UserCountryLabel" runat="server" Text='<%# Bind("UserCountry") %>' />
            <br />
            UserPhone:
            <asp:Label ID="UserPhoneLabel" runat="server" Text='<%# Bind("UserPhone") %>' />
            <br />

        </ItemTemplate>
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone] FROM [User]"></asp:SqlDataSource>
</asp:Content>
