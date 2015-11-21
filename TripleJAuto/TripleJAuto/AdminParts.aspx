<%@ Page Title="Parts Management" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminParts.aspx.cs" Inherits="TripleJAuto.WebForm32" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="UserDetail" style="width: auto; margin: 0 auto; float: left">
        <asp:Label ID="lblUserLogin" runat="server"></asp:Label>
    </div>

    <div id="LoginArea" style="width: auto; margin: 0 auto; text-align: right; background-color: silver" class="auto-style17">
        <asp:Button ID="btnLogout" runat="server" Text="Logout" Width="61px" OnClick="btnAdminLogout_Click" />
    </div>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="PartID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="925px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="PartID" HeaderText="PartID" ReadOnly="True" SortExpression="PartID" />
                <asp:TemplateField HeaderText="CategoryID" SortExpression="CategoryID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditCategoryID" runat="server" ErrorMessage="CategoryID is required"
                            ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Part Name" SortExpression="PartName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PartName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPartName" runat="server" ErrorMessage="Part Name is required"
                            ControlToValidate="TextBox2" Text="*" ForeColor="Red">

                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("PartName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="125px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Part Count" SortExpression="PartCount">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PartCount") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPartCount" runat="server" ErrorMessage="Part Count is required"
                            ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("PartCount") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="112px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Part Cost" SortExpression="PartCost">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PartCost") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPartCost" runat="server" ErrorMessage="Part Cost is required"
                            ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("PartCost") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description" SortExpression="PartDesc">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PartDesc") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPartDesc" runat="server" ErrorMessage="Description is required"
                            ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("PartDesc") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle Width="300px" />
                </asp:TemplateField>
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
        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
    </div>
</asp:Content>
