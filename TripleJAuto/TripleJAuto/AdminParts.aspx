<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminParts.aspx.cs" Inherits="TripleJAuto.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [Part] WHERE [PartID] = @PartID" InsertCommand="INSERT INTO [Part] ([PartID], [CategoryID], [PartName], [PartCount], [PartCost], [PartDesc]) VALUES (@PartID, @CategoryID, @PartName, @PartCount, @PartCost, @PartDesc)" SelectCommand="SELECT * FROM [Part]" UpdateCommand="UPDATE [Part] SET [CategoryID] = @CategoryID, [PartName] = @PartName, [PartCount] = @PartCount, [PartCost] = @PartCost, [PartDesc] = @PartDesc WHERE [PartID] = @PartID">
    <DeleteParameters>
        <asp:Parameter Name="PartID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PartID" Type="String" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="PartName" Type="String" />
        <asp:Parameter Name="PartCount" Type="Int32" />
        <asp:Parameter Name="PartCost" Type="Double" />
        <asp:Parameter Name="PartDesc" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="PartName" Type="String" />
        <asp:Parameter Name="PartCount" Type="Int32" />
        <asp:Parameter Name="PartCost" Type="Double" />
        <asp:Parameter Name="PartDesc" Type="String" />
        <asp:Parameter Name="PartID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<div style="text-align: left">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PartID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PartID" HeaderText="PartID" ReadOnly="True" SortExpression="PartID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="PartName" HeaderText="Part Name" SortExpression="PartName" />
            <asp:BoundField DataField="PartCount" HeaderText="Part Count" SortExpression="PartCount" />
            <asp:BoundField DataField="PartCost" HeaderText="Part Cost" SortExpression="PartCost" />
            <asp:BoundField DataField="PartDesc" HeaderText="Description" SortExpression="PartDesc" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
</div>
</asp:Content>
