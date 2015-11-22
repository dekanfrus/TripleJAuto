<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="TripleJAuto.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="lblUserFName" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" DataKeyNames="UserID" OnPageIndexChanging="FormView1_PageIndexChanging">
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
        UserID:
        <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
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
        UserID:
        <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
        <br />
        Username:
        <asp:Label ID="UserUsernameLabel" runat="server" Text='<%# Bind("UserUsername") %>' />
        <br />
        Password:
        <asp:Label ID="UserPasswordLabel" runat="server" Text='<%# Bind("UserPassword") %>' />
        <br />
        Email:
        <asp:Label ID="UserEmailLabel" runat="server" Text='<%# Bind("UserEmail") %>' />
        <br />
        First Name:
        <asp:Label ID="UserFNameLabel" runat="server" Text='<%# Bind("UserFName") %>' />
        <br />
        Last Name:
        <asp:Label ID="UserLNameLabel" runat="server" Text='<%# Bind("UserLName") %>' />
        <br />
        Street Address:
        <asp:Label ID="UserStreetLabel" runat="server" Text='<%# Bind("UserStreet") %>' />
        <br />
        City:
        <asp:Label ID="UserCityLabel" runat="server" Text='<%# Bind("UserCity") %>' />
        <br />
        Zip Code:
        <asp:Label ID="UserZipLabel" runat="server" Text='<%# Bind("UserZip") %>' />
        <br />
        Country:
        <asp:Label ID="UserCountryLabel" runat="server" Text='<%# Bind("UserCountry") %>' />
        <br />
        Phone Number:
        <asp:Label ID="UserPhoneLabel" runat="server" Text='<%# Bind("UserPhone") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        

    </ItemTemplate>
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
</asp:FormView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="Order Number" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="OrderRecipient" HeaderText="Recipient Name" SortExpression="OrderRecipient" />
            <asp:BoundField DataField="OrderAddress" HeaderText="Street Address" SortExpression="OrderAddress" />
            <asp:BoundField DataField="OrderCity" HeaderText="City" SortExpression="OrderCity" />
            <asp:BoundField DataField="OrderState" HeaderText="State" SortExpression="OrderState" />
            <asp:BoundField DataField="OrderZip" HeaderText="Zip" SortExpression="OrderZip" />
        </Columns>
    </asp:GridView>
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand= "SELECT [UserID], [UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone] FROM [User] WHERE ([UserUsername] = @UserUsername)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [User] WHERE [UserID] = @original_UserID AND [UserUsername] = @original_UserUsername AND [UserPassword] = @original_UserPassword AND [UserEmail] = @original_UserEmail AND [UserFName] = @original_UserFName AND [UserLName] = @original_UserLName AND [UserStreet] = @original_UserStreet AND [UserCity] = @original_UserCity AND [UserZip] = @original_UserZip AND [UserCountry] = @original_UserCountry AND [UserPhone] = @original_UserPhone" InsertCommand="INSERT INTO [User] ([UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone]) VALUES (@UserUsername, @UserPassword, @UserEmail, @UserFName, @UserLName, @UserStreet, @UserCity, @UserZip, @UserCountry, @UserPhone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [User] SET [UserUsername] = @UserUsername, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserFName] = @UserFName, [UserLName] = @UserLName, [UserStreet] = @UserStreet, [UserCity] = @UserCity, [UserZip] = @UserZip, [UserCountry] = @UserCountry, [UserPhone] = @UserPhone WHERE [UserID] = @original_UserID AND [UserUsername] = @original_UserUsername AND [UserPassword] = @original_UserPassword AND [UserEmail] = @original_UserEmail AND [UserFName] = @original_UserFName AND [UserLName] = @original_UserLName AND [UserStreet] = @original_UserStreet AND [UserCity] = @original_UserCity AND [UserZip] = @original_UserZip AND [UserCountry] = @original_UserCountry AND [UserPhone] = @original_UserPhone">
    <DeleteParameters>
        <asp:Parameter Name="original_UserID" Type="Int32" />
        <asp:Parameter Name="original_UserUsername" Type="String" />
        <asp:Parameter Name="original_UserPassword" Type="String" />
        <asp:Parameter Name="original_UserEmail" Type="String" />
        <asp:Parameter Name="original_UserFName" Type="String" />
        <asp:Parameter Name="original_UserLName" Type="String" />
        <asp:Parameter Name="original_UserStreet" Type="String" />
        <asp:Parameter Name="original_UserCity" Type="String" />
        <asp:Parameter Name="original_UserZip" Type="Int32" />
        <asp:Parameter Name="original_UserCountry" Type="String" />
        <asp:Parameter Name="original_UserPhone" Type="String" />
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
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="UserUsername" SessionField="Username" Type="String" />
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
        <asp:Parameter Name="original_UserID" Type="Int32" />
        <asp:Parameter Name="original_UserUsername" Type="String" />
        <asp:Parameter Name="original_UserPassword" Type="String" />
        <asp:Parameter Name="original_UserEmail" Type="String" />
        <asp:Parameter Name="original_UserFName" Type="String" />
        <asp:Parameter Name="original_UserLName" Type="String" />
        <asp:Parameter Name="original_UserStreet" Type="String" />
        <asp:Parameter Name="original_UserCity" Type="String" />
        <asp:Parameter Name="original_UserZip" Type="Int32" />
        <asp:Parameter Name="original_UserCountry" Type="String" />
        <asp:Parameter Name="original_UserPhone" Type="String" />
    </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [OrderID], [OrderRecipient], [OrderAddress], [OrderCity], [OrderState], [OrderZip] FROM [Order] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
