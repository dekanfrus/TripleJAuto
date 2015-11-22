<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="TripleJAuto.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:Label ID="lblUserFName" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" DataKeyNames="OrderID" OnPageIndexChanging="FormView1_PageIndexChanging">
    <EditItemTemplate>
        OrderID:
        <asp:Label ID="OrderIDLabel1" runat="server" Text='<%# Eval("OrderID") %>' />
        <br />
        OrderRecipient:
        <asp:TextBox ID="OrderRecipientTextBox" runat="server" Text='<%# Bind("OrderRecipient") %>' />
        <br />
        OrderAddress:
        <asp:TextBox ID="OrderAddressTextBox" runat="server" Text='<%# Bind("OrderAddress") %>' />
        <br />
        OrderCity:
        <asp:TextBox ID="OrderCityTextBox" runat="server" Text='<%# Bind("OrderCity") %>' />
        <br />
        OrderState:
        <asp:TextBox ID="OrderStateTextBox" runat="server" Text='<%# Bind("OrderState") %>' />
        <br />
        OrderZip:
        <asp:TextBox ID="OrderZipTextBox" runat="server" Text='<%# Bind("OrderZip") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <InsertItemTemplate>
        OrderRecipient:
        <asp:TextBox ID="OrderRecipientTextBox" runat="server" Text='<%# Bind("OrderRecipient") %>' />
        <br />
        OrderAddress:
        <asp:TextBox ID="OrderAddressTextBox" runat="server" Text='<%# Bind("OrderAddress") %>' />
        <br />
        OrderCity:
        <asp:TextBox ID="OrderCityTextBox" runat="server" Text='<%# Bind("OrderCity") %>' />
        <br />
        OrderState:
        <asp:TextBox ID="OrderStateTextBox" runat="server" Text='<%# Bind("OrderState") %>' />
        <br />
        OrderZip:
        <asp:TextBox ID="OrderZipTextBox" runat="server" Text='<%# Bind("OrderZip") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        OrderID:
        <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
        <br />
        OrderRecipient:
        <asp:Label ID="OrderRecipientLabel" runat="server" Text='<%# Bind("OrderRecipient") %>' />
        <br />
        OrderAddress:
        <asp:Label ID="OrderAddressLabel" runat="server" Text='<%# Bind("OrderAddress") %>' />
        <br />
        OrderCity:
        <asp:Label ID="OrderCityLabel" runat="server" Text='<%# Bind("OrderCity") %>' />
        <br />
        OrderState:
        <asp:Label ID="OrderStateLabel" runat="server" Text='<%# Bind("OrderState") %>' />
        <br />
        OrderZip:
        <asp:Label ID="OrderZipLabel" runat="server" Text='<%# Bind("OrderZip") %>' />
        <br />
        

    </ItemTemplate>
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
</asp:FormView>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="OrderID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:BoundField DataField="OrderRecipient" HeaderText="Recipient" SortExpression="OrderRecipient" />
            <asp:BoundField DataField="OrderAddress" HeaderText="Street Address" SortExpression="OrderAddress" />
            <asp:BoundField DataField="OrderCity" HeaderText="City" SortExpression="OrderCity" />
            <asp:BoundField DataField="OrderState" HeaderText="State" SortExpression="OrderState" />
            <asp:BoundField DataField="OrderZip" HeaderText="Zip Code" SortExpression="OrderZip" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand= "SELECT [OrderID], [OrderRecipient], [OrderAddress], [OrderCity], [OrderState], [OrderZip] FROM [Order] WHERE ([UserID] = @UserID)" OldValuesParameterFormatString="original_{0}">
    <SelectParameters>
        <asp:SessionParameter Name="UserID" SessionField="UserID" Type="Int32" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
