﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User_Administration.aspx.cs" Inherits="TripleJAuto.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <style type="text/css">
    .auto-style2 {
        width: 170px;
    }
    .auto-style3 {
        width: 22%;
    }
        .auto-style4 {
            width: 102px;
        }
        .auto-style15 {
            text-align: left;
        }
        </style>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnViewUsers" runat="server" OnClick="btnViewUsers_Click" Text="View Users" Width="107px" />
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
            </table>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User] ([UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone], [UserAdmin]) VALUES (@UserUsername, @UserPassword, @UserEmail, @UserFName, @UserLName, @UserStreet, @UserCity, @UserZip, @UserCountry, @UserPhone, @UserAdmin)" SelectCommand="SELECT * FROM [User] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [User] SET [UserUsername] = @UserUsername, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserFName] = @UserFName, [UserLName] = @UserLName, [UserStreet] = @UserStreet, [UserCity] = @UserCity, [UserZip] = @UserZip, [UserCountry] = @UserCountry, [UserPhone] = @UserPhone, [UserAdmin] = @UserAdmin WHERE [UserID] = @UserID">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
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
            <div class="auto-style15">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
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
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="UserID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <Fields>
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
                        <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                </asp:DetailsView>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>


