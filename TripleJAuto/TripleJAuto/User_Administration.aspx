<%@ Page Title="User Administration" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User_Administration.aspx.cs" Inherits="TripleJAuto.UserAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        
        .auto-style15 {
            text-align: left;
        }

        .auto-style17 {
            text-align: right;
        }

        </style>
    <div id="commandbar" style="background-color: silver">
        <table class="auto-style3" __designer:mapid="43f">
            <tr __designer:mapid="440">
                <td class="auto-style16" __designer:mapid="441">
                    <asp:Button ID="btnViewUsers" runat="server" OnClick="btnViewUsers_Click" Text="View Users" Width="102px" />
                </td>
                <td class="auto-style20" __designer:mapid="443">&nbsp;</td>
                <td class="auto-style2" __designer:mapid="445">&nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewUsers" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User] ([UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone], [UserAdmin]) VALUES (@UserUsername, @UserPassword, @UserEmail, @UserFName, @UserLName, @UserStreet, @UserCity, @UserZip, @UserCountry, @UserPhone, @UserAdmin)" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [UserUsername] = @UserUsername, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserFName] = @UserFName, [UserLName] = @UserLName, [UserStreet] = @UserStreet, [UserCity] = @UserCity, [UserZip] = @UserZip, [UserCountry] = @UserCountry, [UserPhone] = @UserPhone, [UserAdmin] = @UserAdmin WHERE [UserID] = @UserID">
                <DeleteParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserUsername" Type="String" />
                    <asp:Parameter Name="UserPassword" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserFName" Type="String" />
                    <asp:Parameter Name="UserLName" Type="String" />
                    <asp:Parameter Name="UserStreet" Type="String" />
                    <asp:Parameter Name="UserCity" Type="String" />
                    <asp:Parameter Name="UserZip" Type="Int32" />
                    <asp:Parameter Name="UserCountry" Type="String" />
                    <asp:Parameter Name="UserPhone" Type="String" />
                    <asp:Parameter Name="UserAdmin" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserUsername" Type="String" />
                    <asp:Parameter Name="UserPassword" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserFName" Type="String" />
                    <asp:Parameter Name="UserLName" Type="String" />
                    <asp:Parameter Name="UserStreet" Type="String" />
                    <asp:Parameter Name="UserCity" Type="String" />
                    <asp:Parameter Name="UserZip" Type="Int32" />
                    <asp:Parameter Name="UserCountry" Type="String" />
                    <asp:Parameter Name="UserPhone" Type="String" />
                    <asp:Parameter Name="UserAdmin" Type="Boolean" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [User] ([UserUsername], [UserPassword], [UserEmail], [UserFName], [UserLName], [UserStreet], [UserCity], [UserZip], [UserCountry], [UserPhone], [UserAdmin]) VALUES (@UserUsername, @UserPassword, @UserEmail, @UserFName, @UserLName, @UserStreet, @UserCity, @UserZip, @UserCountry, @UserPhone, @UserAdmin)" SelectCommand="SELECT * FROM [User] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [User] SET [UserUsername] = @UserUsername, [UserPassword] = @UserPassword, [UserEmail] = @UserEmail, [UserFName] = @UserFName, [UserLName] = @UserLName, [UserStreet] = @UserStreet, [UserCity] = @UserCity, [UserZip] = @UserZip, [UserCountry] = @UserCountry, [UserPhone] = @UserPhone, [UserAdmin] = @UserAdmin WHERE [UserID] = @UserID">
                <DeleteParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserUsername" Type="String" />
                    <asp:Parameter Name="UserPassword" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserFName" Type="String" />
                    <asp:Parameter Name="UserLName" Type="String" />
                    <asp:Parameter Name="UserStreet" Type="String" />
                    <asp:Parameter Name="UserCity" Type="String" />
                    <asp:Parameter Name="UserZip" Type="Int32" />
                    <asp:Parameter Name="UserCountry" Type="String" />
                    <asp:Parameter Name="UserPhone" Type="String" />
                    <asp:Parameter Name="UserAdmin" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="UserID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserUsername" Type="String" />
                    <asp:Parameter Name="UserPassword" Type="String" />
                    <asp:Parameter Name="UserEmail" Type="String" />
                    <asp:Parameter Name="UserFName" Type="String" />
                    <asp:Parameter Name="UserLName" Type="String" />
                    <asp:Parameter Name="UserStreet" Type="String" />
                    <asp:Parameter Name="UserCity" Type="String" />
                    <asp:Parameter Name="UserZip" Type="Int32" />
                    <asp:Parameter Name="UserCountry" Type="String" />
                    <asp:Parameter Name="UserPhone" Type="String" />
                    <asp:Parameter Name="UserAdmin" Type="Boolean" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <div class="auto-style15">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebsiteConnectionString %>" SelectCommand="SELECT [UserUsername], [UserPassword], [UserFName], [UserLName], [UserAdmin] FROM [User]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="UserID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="UserUsername" HeaderText="Username" SortExpression="UserUsername" />
                        <asp:BoundField DataField="UserEmail" HeaderText="Email" SortExpression="UserEmail" />
                        <asp:BoundField DataField="UserFName" HeaderText="First Name" SortExpression="UserFName" />
                        <asp:BoundField DataField="UserLName" HeaderText="Last Name" SortExpression="UserLName" />
                        <asp:BoundField DataField="UserStreet" HeaderText="Street" SortExpression="UserStreet" />
                        <asp:BoundField DataField="UserCity" HeaderText="City" SortExpression="UserCity" />
                        <asp:BoundField DataField="UserZip" HeaderText="Zip" SortExpression="UserZip" />
                        <asp:BoundField DataField="UserCountry" HeaderText="Country" SortExpression="UserCountry" />
                        <asp:BoundField DataField="UserPhone" HeaderText="Phone" SortExpression="UserPhone" />
                        <asp:CheckBoxField DataField="UserAdmin" HeaderText="Admin Status" SortExpression="UserAdmin" />
                    </Columns>
                    <FooterStyle BackColor="#717D8C" ForeColor="#7ac1ae"/>
                    <HeaderStyle BackColor="#717D8C" Font-Bold="True" ForeColor="#7ac1ae" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DDDDDD" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="UserID" DataSourceID="SqlDataSource2" ForeColor="Black" Height="126px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="260px">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                        <asp:TemplateField HeaderText="UserUsername" SortExpression="UserUsername">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserUsername") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditUsername" runat="server" ErrorMessage="Username is required"
                                    ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserUsername") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfInsertUsername" runat="server" ErrorMessage="Username is required"
                                    ControlToValidate="TextBox1" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserUsername") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserPassword" SortExpression="UserPassword">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserPassword") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditPassword" runat="server" ErrorMessage="Password is required"
                                    ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("UserPassword") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertPassword" runat="server" ErrorMessage="Password is required"
                                    ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserPassword") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserEmail" SortExpression="UserEmail">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserEmail") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditUserEmail" runat="server" ErrorMessage="Email is required"
                                    ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserEmail") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertEmail" runat="server" ErrorMessage="Email is required"
                                    ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("UserEmail") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserFName" SortExpression="UserFName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UserFName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditFName" runat="server" ErrorMessage="First Name is required"
                                    ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("UserFName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertFName" runat="server" ErrorMessage="First Name is required"
                                    ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("UserFName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserLName" SortExpression="UserLName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UserLName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditLName" runat="server" ErrorMessage="Last Name is required"
                                    ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UserLName") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertLName" runat="server" ErrorMessage="Last Name is required"
                                    ControlToValidate="TextBox5" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("UserLName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserStreet" SortExpression="UserStreet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("UserStreet") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditStreet" runat="server" ErrorMessage="Street is required"
                                    ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("UserStreet") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertStreet" runat="server" ErrorMessage="Street is required"
                                    ControlToValidate="TextBox6" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("UserStreet") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserCity" SortExpression="UserCity">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("UserCity") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditCity" runat="server" ErrorMessage="City is required"
                                    ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("UserCity") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfInsertCity" runat="server" ErrorMessage="City is required"
                                    ControlToValidate="TextBox7" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("UserCity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserZip" SortExpression="UserZip">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("UserZip") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditZip" runat="server" ErrorMessage="Zip code is required"
                                    ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("UserZip") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertZip" runat="server" ErrorMessage="Zip code is required"
                                    ControlToValidate="TextBox8" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserZip") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserCountry" SortExpression="UserCountry">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("UserCountry") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditCountry" runat="server" ErrorMessage="Country is required"
                                    ControlToValidate="TextBox9" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("UserCountry") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertCountry" runat="server" ErrorMessage="Country is required"
                                    ControlToValidate="TextBox9" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("UserCountry") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UserPhone" SortExpression="UserPhone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("UserPhone") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEditPhone" runat="server" ErrorMessage="Phone is required"
                                    ControlToValidate="TextBox10" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("UserPhone") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvInsertPhone" runat="server" ErrorMessage="Phone is required"
                                    ControlToValidate="TextBox10" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("UserPhone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CheckBoxField DataField="UserAdmin" HeaderText="UserAdmin" SortExpression="UserAdmin" />
                        <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#717D8C" ForeColor="#7ac1ae" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" Width="300px" />

            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div id="UserDetail" style="width: auto; margin: 0 auto; float: left">
        <asp:Label ID="lblUserLogged" runat="server" CssClass="auto-style19"></asp:Label>
    </div>

    <div id="LoginArea" style="width: auto; margin: 0 auto; background-color: silver" class="auto-style17">
        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="61px" OnClick="btnAdminLogin_Click" />
    </div>

</asp:Content>





