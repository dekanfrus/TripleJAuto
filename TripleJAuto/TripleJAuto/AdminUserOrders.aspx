<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUserOrders.aspx.cs" Inherits="TripleJAuto.WebForm35" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="UserDetail" style="width: auto; margin: 0 auto; float: left">
        <asp:Label ID="lblUserLogin" runat="server"></asp:Label>
    </div>

    <div id="LoginArea" style="width: auto; margin: 0 auto; text-align: right;" class="auto-style17">
        <asp:Button ID="btnLogout" runat="server" Text="Logout" Width="61px" OnClick="btnAdminLogout_Click" />
    </div>

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewOrders" runat="server" OnClick="btnViewOrders_Click" Text="View Orders" Width="102px" />
                </td>
                <td class="auto-style20" __designer:mapid="443" style="width: 88px">&nbsp;</td>
                <td __designer:mapid="5d3" style="width: 127px">
                <asp:Label ID="lblSearchOrder" runat="server" Text="Search by OrderID"></asp:Label>
                </td>
                <td class="auto-style2" __designer:mapid="445" style="width: 77px">
                <asp:TextBox ID="txtSearchOrder" runat="server" Width="143px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnExecFind" runat="server" OnClick="btnExecFind_Click" Text="Find" />
                </td>
            </tr>
        </table>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewOrders" runat="server">
            <div id="searchID">
                <table style="width: 26%;">
                    <tr>
                        <td style="width: 153px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
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
                            <asp:RequiredFieldValidator ID="rfvEditRecipient" runat="server" ControlToValidate="TextBox1" ErrorMessage="Recepient is required" ForeColor="Red" Text="*">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderRecipient") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OrderAddress" SortExpression="OrderAddress">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("OrderAddress") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditAddress" runat="server" ControlToValidate="TextBox2" ErrorMessage="Address is required" ForeColor="Red" Text="*">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("OrderAddress") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OrderCity" SortExpression="OrderCity">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("OrderCity") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditCity" runat="server" ControlToValidate="TextBox3" ErrorMessage="City is required" ForeColor="Red" Text="*">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("OrderCity") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OrderState" SortExpression="OrderState">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("OrderState") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditState" runat="server" ControlToValidate="TextBox4" ErrorMessage="Recepient is required" ForeColor="Red" Text="*">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("OrderState") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="OrderZip" SortExpression="OrderZip">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("OrderZip") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditZip" runat="server" ControlToValidate="TextBox5" ErrorMessage="Zip Code is required" ForeColor="Red" Text="*">
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
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </asp:View>
        <asp:View ID="ViewSearchOrder" runat="server">
            <br />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Order] ([OrderRecipient], [OrderAddress], [OrderCity], [OrderState], [OrderZip]) VALUES (@OrderRecipient, @OrderAddress, @OrderCity, @OrderState, @OrderZip)" SelectCommand="SELECT * FROM [Order] WHERE ([OrderID] = @OrderID)" UpdateCommand="UPDATE [Order] SET [OrderRecipient] = @OrderRecipient, [OrderAddress] = @OrderAddress, [OrderCity] = @OrderCity, [OrderState] = @OrderState, [OrderZip] = @OrderZip WHERE [OrderID] = @OrderID">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtSearchOrder" Name="OrderID" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="OrderRecipient" Type="String" />
                    <asp:Parameter Name="OrderAddress" Type="String" />
                    <asp:Parameter Name="OrderCity" Type="String" />
                    <asp:Parameter Name="OrderState" Type="String" />
                    <asp:Parameter Name="OrderZip" Type="Int32" />
                    <asp:Parameter Name="OrderID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                    <asp:BoundField DataField="OrderRecipient" HeaderText="OrderRecipient" SortExpression="OrderRecipient" />
                    <asp:BoundField DataField="OrderAddress" HeaderText="OrderAddress" SortExpression="OrderAddress" />
                    <asp:BoundField DataField="OrderCity" HeaderText="OrderCity" SortExpression="OrderCity" />
                    <asp:BoundField DataField="OrderState" HeaderText="OrderState" SortExpression="OrderState" />
                    <asp:BoundField DataField="OrderZip" HeaderText="OrderZip" SortExpression="OrderZip" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
