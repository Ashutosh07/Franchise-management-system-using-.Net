<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Managers.aspx.cs" Inherits="Admin_Managers" Title="Wel come to managers creation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 500px; position: static; height: 100px">
            <tr>
                <td colspan="4">
                    <strong><span style="text-decoration: underline">New Appointments</span></strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Francheese :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"
                        Style="position: static">
                    </asp:DropDownList></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Branch :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:DropDownList ID="DropDownList4" runat="server" Style="position: static">
                    </asp:DropDownList></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Username :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Password :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Confirm pwd :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox3" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Name :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Appointed as :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Gender :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static">
                        <asp:ListItem>---Select---</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Email Id :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px">
                    Contact no :</td>
                <td align="left" style="width: 100px; height: 27px" valign="top">
                    <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
                <td align="left" style="width: 100px; height: 27px" valign="top">
                </td>
                <td style="width: 103px; height: 27px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Submit" OnClick="Button1_Click" /></td>
                <td style="width: 100px">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 103px">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <strong><span style="text-decoration: underline">Appointed Details</span></strong></td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                        PageSize="4" Style="position: static">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EditRowStyle BackColor="#2461BF" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="delete" runat="server" CommandArgument='<%#Eval("uid") %>' CommandName="Delete"
                                        Text="delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UserName">
                                <ItemTemplate>
                                    <asp:Label ID="uname" runat="server" Text='<%#Eval("uname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="gender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmailId">
                                <ItemTemplate>
                                    <asp:Label ID="email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Appointed as">
                                <ItemTemplate>
                                    <asp:Label ID="appas" runat="server" Text='<%#Eval("appointedas") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Cdate">
                                <ItemTemplate>
                                    <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EmptyDataTemplate>
                            <strong>There are no Appointments.</strong>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

