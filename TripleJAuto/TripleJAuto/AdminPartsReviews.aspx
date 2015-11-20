<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPartsReviews.aspx.cs" Inherits="TripleJAuto.WebForm34" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="partsReviews">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="183px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="UserFName" HeaderText="UserFName" SortExpression="UserFName" />
                <asp:BoundField DataField="UserLName" HeaderText="UserLName" SortExpression="UserLName" />
                <asp:BoundField DataField="PartID" HeaderText="PartID" SortExpression="PartID" />
                <asp:BoundField DataField="ReviewRating" HeaderText="ReviewRating" SortExpression="ReviewRating" />
                <asp:BoundField DataField="ReviewDesc" HeaderText="ReviewDesc" SortExpression="ReviewDesc" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [User].UserFName, [User].UserLName, Review.PartID, Review.ReviewRating, Review.ReviewDesc FROM [User] INNER JOIN Review ON [User].UserID = Review.UserID"></asp:SqlDataSource>
    </div>
</asp:Content>
