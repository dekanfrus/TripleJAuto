<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TripleJAuto.WebForm36" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link href="Content/Site.css" rel="stylesheet" />
    <div class="container">
        <div class="container-header">
            <h1>Welcome to Triple J Auto!</h1>
            <h2>Sign Up Page.</h2>
        </div>
        <table>
            <tr>
                <td style="width: 30%">User Name</td>
                <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbUsername" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Password</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:Label ID="lbPassword" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
             <tr>
                <td style="width: 30%">Confirm Password</td>
                <td><asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:Label ID="lbConfirm" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Fist Name</td>
                <td><asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbFName" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Last Name</td>
                <td><asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbLName" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></td>
                <td><asp:Label ID="lbEmail" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Address</td>
                <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbAddress" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">City</td>
                <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbCity" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Zip</td>
                <td><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbZip" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Country</td>
                <td><asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbCountry" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">Phone</td>
                <td><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="lbPhone" runat="server" Text="*This field is required." ForeColor="#FF3300" Visible="False"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 30%">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="168px" Height =" 25px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Label ID="lberror" runat="server" ForeColor="#FF3300" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone], [UserAdmin] FROM [User]"></asp:SqlDataSource>
    </div>
</asp:Content>
