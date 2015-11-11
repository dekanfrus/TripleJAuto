<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User_Administration.aspx.cs" Inherits="TripleJAuto.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 170px;
    }
    .auto-style3 {
        width: 23%;
    }
        .auto-style4 {
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family: Arial, Helvetica, sans-serif">Triple-J User Administration</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewAddUser" runat="server">
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <EditItemTemplate>
                    UserID:
                    <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
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
                    UserAdmin:
                    <asp:CheckBox ID="UserAdminCheckBox" runat="server" Checked='<%# Bind("UserAdmin") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
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
                    UserAdmin:
                    <asp:CheckBox ID="UserAdminCheckBox" runat="server" Checked='<%# Bind("UserAdmin") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UserID:
                    <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
                    <br />
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
                    UserAdmin:
                    <asp:CheckBox ID="UserAdminCheckBox" runat="server" Checked='<%# Bind("UserAdmin") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:FormView>
        </asp:View>
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User] ([UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone], [UserAdmin]) VALUES (@UserUsername, @UserPassword, @UserEmail, @UserFName, @UserLName, @UserStreet, @UserCity, @UserZip, @UserCountry, @UserPhone, @UserAdmin)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [UserUsername] = @UserUsername, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserFName] = @UserFName, [UserLName] = @UserLName, [UserStreet] = @UserStreet, [UserCity] = @UserCity, [UserZip] = @UserZip, [UserCountry] = @UserCountry, [UserPhone] = @UserPhone, [UserAdmin] = @UserAdmin WHERE [UserID] = @UserID">
                <DeleteParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserUsername" Type="String" />
                    <asp:Parameter Name="UserPassword" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserFName" Type="String" />
                    <asp:Parameter Name="UserLName" Type="String" />
                    <asp:Parameter Name="UserStreet" Type="String" />
                    <asp:Parameter Name="UserCity" Type="String" />
                    <asp:Parameter Name="UserZip" Type="Int32" />
                    <asp:Parameter Name="UserCountry" Type="String" />
                    <asp:Parameter Name="UserPhone" Type="String" />
                    <asp:Parameter Name="UserAdmin" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserUsername" Type="String" />
                    <asp:Parameter Name="UserPassword" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserFName" Type="String" />
                    <asp:Parameter Name="UserLName" Type="String" />
                    <asp:Parameter Name="UserStreet" Type="String" />
                    <asp:Parameter Name="UserCity" Type="String" />
                    <asp:Parameter Name="UserZip" Type="Int32" />
                    <asp:Parameter Name="UserCountry" Type="String" />
                    <asp:Parameter Name="UserPhone" Type="String" />
                    <asp:Parameter Name="UserAdmin" Type="Boolean" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="UserUsername" HeaderText="UserUsername" SortExpression="UserUsername" />
                    <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                    <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" SortExpression="UserEmail" />
                    <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
                    <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
                    <asp:BoundField DataField="UserStreet" HeaderText="UserStreet" SortExpression="UserStreet" />
                    <asp:BoundField DataField="UserCity" HeaderText="UserCity" SortExpression="UserCity" />
                    <asp:BoundField DataField="UserZip" HeaderText="UserZip" SortExpression="UserZip" />
                    <asp:BoundField DataField="UserCountry" HeaderText="UserCountry" SortExpression="UserCountry" />
                    <asp:BoundField DataField="UserPhone" HeaderText="UserPhone" SortExpression="UserPhone" />
                    <asp:CheckBoxField DataField="UserAdmin" HeaderText="UserAdmin" SortExpression="UserAdmin" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </asp:View>
    </asp:MultiView>
</asp:Content>
<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <table class="auto-style3">
    <tr>
        <td class="auto-style4">
            <asp:Button ID="btnViewUsers" runat="server" Text="View Users" OnClick="btnViewUsers_Click" Width="107px" />
        </td>
        <td class="auto-style4">
            <asp:Button ID="btnAddUser" runat="server" Text="Add User" EnableViewState="False" Width="107px" OnClick="btnAddUser_Click" />
        </td>
        <td class="auto-style2">
            <asp:Button ID="btnEditUser" runat="server" Text="Edit User" Width="107px" />
        </td>
    </tr>
</table>
</asp:Content>

