<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="ac_clutch.aspx.cs" Inherits="TripleJAuto.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PartName" HeaderText="PartName" SortExpression="PartName" />
            <asp:BoundField DataField="PartCost" HeaderText="PartCost" SortExpression="PartCost" />
            <asp:BoundField DataField="PartDesc" HeaderText="PartDesc" SortExpression="PartDesc" />
        </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT Part.PartName, Part.PartCost, Part.PartDesc
FROM Category INNER JOIN
Part ON Category.CategoryID = Part.CategoryID
WHERE (Category.CategoryName = 'A/C Clutch')"></asp:SqlDataSource>
</asp:Content>
