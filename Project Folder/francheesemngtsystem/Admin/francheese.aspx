<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="francheese.aspx.cs" Inherits="Admin_Branches" Title="Franchisee Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 402px; position: static; height: 100px">
            <tr>
                <td colspan="3">
                    <strong><span style="text-decoration: underline">Add FranchiseeName</span></strong></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 26px">
                    Franchisee Name :</td>
                <td style="width: 100px; height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
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
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <strong><span style="text-decoration: underline">Available Franchisees are:</span></strong></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                        Style="position: static" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="4" OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting">
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
                        <asp:LinkButton ID="delete" runat="server" CommandArgument='<%#Eval("fid") %>' CommandName="delete" Text="delete"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="FranchiseeId">
                        <ItemTemplate>
                        <asp:Label ID="fid" runat="server" Text='<%#Eval("fid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="BranchName">
                        <ItemTemplate>
                        <asp:Label ID="bname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="CDate">
                        <ItemTemplate>
                        <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        </Columns>
                        <EmptyDataTemplate>
                            <strong>There are no francheese details.</strong>
                        </EmptyDataTemplate>
                        
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>