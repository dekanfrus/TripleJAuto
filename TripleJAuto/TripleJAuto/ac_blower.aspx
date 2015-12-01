<%@ Page Title="" Language="C#" MasterPageFile="~/Parts.master" AutoEventWireup="true" CodeBehind="ac_blower.aspx.cs" Inherits="TripleJAuto.ac_blower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div class="container">
        <div class="container-header">
            <h1>AC Blower Parts</h1>
        </div>
    <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Both" Height="135px" AllowPaging="True">
        <EditItemTemplate>
            PartName:
            <asp:TextBox ID="PartNameTextBox" runat="server" Text='<%# Bind("PartName") %>' />
            <br />
            PartCost:
            <asp:TextBox ID="PartCostTextBox" runat="server" Text='<%# Bind("PartCost") %>' />
            <br />
            PartDesc:
            <asp:TextBox ID="PartDescTextBox" runat="server" Text='<%# Bind("PartDesc") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            PartName:
            <asp:TextBox ID="PartNameTextBox" runat="server" Text='<%# Bind("PartName") %>' />
            <br />
            PartCost:
            <asp:TextBox ID="PartCostTextBox" runat="server" Text='<%# Bind("PartCost") %>' />
            <br />
            PartDesc:
            <asp:TextBox ID="PartDescTextBox" runat="server" Text='<%# Bind("PartDesc") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PartName:
            <asp:Label ID="PartNameLabel" runat="server" Text='<%# Bind("PartName") %>' />
            <br />
            PartCost:
            <asp:Label ID="PartCostLabel" runat="server" Text='<%# Bind("PartCost") %>' />
            <br />
            PartDesc:
            <asp:Label ID="PartDescLabel" runat="server" Text='<%# Bind("PartDesc") %>' />
            <br />
        </ItemTemplate>
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    </asp:FormView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT Part.PartName, Part.PartCost, Part.PartDesc
FROM Category INNER JOIN
Part ON Category.CategoryID = Part.CategoryID
WHERE (Category.CategoryName = 'A/C Blower Motor')"></asp:SqlDataSource>
</asp:Content>
