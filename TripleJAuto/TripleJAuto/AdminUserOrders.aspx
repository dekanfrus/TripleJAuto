<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUserOrders.aspx.cs" Inherits="TripleJAuto.WebForm35" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblUserLogin" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Order] ([OrderRecipient], [OrderAddress], [OrderCity], [OrderState], [OrderZip]) VALUES (@OrderRecipient, @OrderAddress, @OrderCity, @OrderState, @OrderZip)" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [OrderRecipient] = @OrderRecipient, [OrderAddress] = @OrderAddress, [OrderCity] = @OrderCity, [OrderState] = @OrderState, [OrderZip] = @OrderZip WHERE [OrderID] = @OrderID">
        <DeleteParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderRecipient" Type="String" />
            <asp:Parameter Name="OrderAddress" Type="String" />
            <asp:Parameter Name="OrderCity" Type="String" />
            <asp:Parameter Name="OrderState" Type="String" />
            <asp:Parameter Name="OrderZip" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderRecipient" Type="String" />
            <asp:Parameter Name="OrderAddress" Type="String" />
            <asp:Parameter Name="OrderCity" Type="String" />
            <asp:Parameter Name="OrderState" Type="String" />
            <asp:Parameter Name="OrderZip" Type="Int32" />
            <asp:Parameter Name="OrderID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
            <asp:TemplateField HeaderText="OrderRecipient" SortExpression="OrderRecipient">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OrderRecipient") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditRecipient" runat="server" ErrorMessage="Recepient is required"
                        ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderRecipient") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderAddress" SortExpression="OrderAddress">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OrderAddress") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAddress" runat="server" ErrorMessage="Address is required"
                        ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("OrderAddress") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderCity" SortExpression="OrderCity">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("OrderCity") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditCity" runat="server" ErrorMessage="City is required"
                        ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("OrderCity") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderState" SortExpression="OrderState">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OrderState") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditState" runat="server" ErrorMessage="Recepient is required"
                        ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("OrderState") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OrderZip" SortExpression="OrderZip">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("OrderZip") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditZip" runat="server" ErrorMessage="Zip Code is required"
                        ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("OrderZip") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
</asp:Content>
