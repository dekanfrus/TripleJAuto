<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminWishList.aspx.cs" Inherits="TripleJAuto.AdminWishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="UserDetail" style="width: auto; margin: 0 auto; float: left">
        <asp:Label ID="lblUserLogin" runat="server"></asp:Label>
    </div>

    <div id="LoginArea" style="width: auto; margin: 0 auto; text-align: right; background-color: silver" class="auto-style17">
        <asp:Button ID="btnLogout" runat="server" Text="Logout" Width="61px" OnClick="btnAdminLogout_Click" />
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [User].UserFName, [User].UserLName, Wishlist.PartID, Wishlist.WishlistName, Wishlist.WishlistDesc FROM [User] INNER JOIN Wishlist ON [User].UserID = Wishlist.UserID"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
            <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
            <asp:BoundField DataField="PartID" HeaderText="PartID" SortExpression="PartID" />
            <asp:BoundField DataField="WishlistName" HeaderText="WishlistName" SortExpression="WishlistName" />
            <asp:BoundField DataField="WishlistDesc" HeaderText="WishlistDesc" SortExpression="WishlistDesc" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>
