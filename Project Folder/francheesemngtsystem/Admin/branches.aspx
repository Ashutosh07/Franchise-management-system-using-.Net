<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="branches.aspx.cs" Inherits="branches" Title="Branches Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 402px; position: static; height: 100px">
        <tr>
            <td colspan="4">
                <strong><span style="text-decoration: underline">Add BramchName</span></strong></td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                SelectFranchisee :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static">
                </asp:DropDownList></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                Branch Name :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100px; height: 26px" valign="top">
                Address :</td>
            <td style="width: 100px; height: 26px" align="left">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: static" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                Country :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                State :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                City :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                    Text="Submit" OnClick="Button1_Click" /></td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <span style="text-decoration: underline"><strong>Available Branchnames are:</strong></span></td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging"
                    PageSize="4" Style="position: static" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
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
                                <asp:LinkButton ID="delete" runat="server" CommandArgument='<%#Eval("bid") %>' CommandName="delete"
                                    Text="delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BranchId">
                            <ItemTemplate>
                                <asp:Label ID="bid" runat="server" Text='<%#Eval("bid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BranchName">
                            <ItemTemplate>
                                <asp:Label ID="bname" runat="server" Text='<%#Eval("bname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate>
                                <asp:Label ID="add" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Country">
                            <ItemTemplate>
                                <asp:Label ID="country" runat="server" Text='<%#Eval("country") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="State">
                            <ItemTemplate>
                                <asp:Label ID="state" runat="server" Text='<%#Eval("state") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="City">
                            <ItemTemplate>
                                <asp:Label ID="city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="CDate">
                            <ItemTemplate>
                                <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <strong>There are no branches details.</strong>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

