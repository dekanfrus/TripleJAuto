<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin_parts_add.aspx.cs" Inherits="TripleJAuto.WebForm33" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="buttonArea" style="width: auto; background-color: silver; margin: 0 auto">

        <table style="width: 21%;">
            <tr>
                <td style="width: 121px">
                    <asp:Button ID="btnAddCategory" runat="server" OnClick="btnAddCategory_Click" Text="Add Category" Width="120px" />
                </td>
                <td style="width: 130px">
                    <asp:Button ID="btnAddParts" runat="server" OnClick="btnAddParts_Click" Text="Add Parts" Width="120px" />
                </td>
                <td class="body-content" style="width: 180px">&nbsp;</td>
            </tr>
        </table>

    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="AddCategory" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [Category] ([CategoryName]) VALUES (@CategoryName)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [CategoryID] = @CategoryID">
                <DeleteParameters>
                    <asp:Parameter Name="CategoryID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CategoryName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CategoryName" Type="String" />
                    <asp:Parameter Name="CategoryID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormViewAddCategory" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" ForeColor="#333333">
                <EditItemTemplate>
                    CategoryID:
                    <asp:Label ID="CategoryIDLabel1" runat="server" Text='<%# Eval("CategoryID") %>' />
                    <br />
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CategoryID:
                    <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    <br />
                    CategoryName:
                    <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
        </asp:View>
        <asp:View ID="AddParts" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [Part] WHERE [PartID] = @PartID" InsertCommand="INSERT INTO [Part] ([PartID], [CategoryID], [PartName], [PartCount], [PartCost], [PartDesc]) VALUES (@PartID, @CategoryID, @PartName, @PartCount, @PartCost, @PartDesc)" SelectCommand="SELECT * FROM [Part]" UpdateCommand="UPDATE [Part] SET [CategoryID] = @CategoryID, [PartName] = @PartName, [PartCount] = @PartCount, [PartCost] = @PartCost, [PartDesc] = @PartDesc WHERE [PartID] = @PartID">
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
            <asp:FormView ID="FormViewAddParts" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="PartID" DataSourceID="SqlDataSource2" ForeColor="#333333">
                <EditItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: right; width: 110px">Part ID:</td>
                            <td>
                                <asp:Label ID="PartIDLabel1" runat="server" Text='<%# Eval("PartID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">&nbsp;Category ID:</td>
                            <td>
                                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Name:</td>
                            <td>
                                <asp:TextBox ID="PartNameTextBox" runat="server" Height="16px" Text='<%# Bind("PartName") %>' Width="277px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Count:</td>
                            <td>
                                <asp:TextBox ID="PartCountTextBox" runat="server" Text='<%# Bind("PartCount") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Cost:</td>
                            <td>
                                <asp:TextBox ID="PartCostTextBox" runat="server" Text='<%# Bind("PartCost") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Description:</td>
                            <td>
                                <asp:TextBox ID="PartDescTextBox" runat="server" Height="20px" Text='<%# Bind("PartDesc") %>' Width="277px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 110px">
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    &nbsp;<table style="width:100%;">
                        <tr>
                            <td style="height: 30px; text-align: right; width: 110px">Part ID:</td>
                            <td style="height: 30px">
                                <asp:TextBox ID="PartIDTextBox" runat="server" Text='<%# Bind("PartID") %>' Height="16px" Width="121px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Category ID: </td>
                            <td>
                                <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' Height="16px" Width="267px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Name:</td>
                            <td>
                                <asp:TextBox ID="PartNameTextBox" runat="server" Text='<%# Bind("PartName") %>' Height="16px" Width="267px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Count: </td>
                            <td>
                                <asp:TextBox ID="PartCountTextBox" runat="server" Text='<%# Bind("PartCount") %>' Height="16px" Width="267px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Cost: </td>
                            <td>
                                <asp:TextBox ID="PartCostTextBox" runat="server" Text='<%# Bind("PartCost") %>' Height="16px" Width="267px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right; width: 110px">Part Description:</td>
                            <td>
                                <asp:TextBox ID="PartDescTextBox" runat="server" Text='<%# Bind("PartDesc") %>' Height="16px" Width="268px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 110px">
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </InsertItemTemplate>
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2" style="text-align: right">Part ID: </td>
                            <td>
                                <asp:Label ID="PartIDLabel" runat="server" Text='<%# Eval("PartID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">Category ID:</td>
                            <td>
                                <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Bind("CategoryID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">Part Name:</td>
                            <td>
                                <asp:Label ID="PartNameLabel" runat="server" Text='<%# Bind("PartName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">Part Count:</td>
                            <td>
                                <asp:Label ID="PartCountLabel" runat="server" Text='<%# Bind("PartCount") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">Part Cost: </td>
                            <td>
                                <asp:Label ID="PartCostLabel" runat="server" Text='<%# Bind("PartCost") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: right">Part Description: </td>
                            <td>
                                <asp:Label ID="PartDescLabel" runat="server" Text='<%# Bind("PartDesc") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 119px">
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                            </td>
                            <td style="width: 7px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
        </asp:View>
    </asp:MultiView>
</asp:Content>
