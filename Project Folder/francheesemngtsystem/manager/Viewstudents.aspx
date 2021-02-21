<%@ Page Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="Viewstudents.aspx.cs" Inherits="manager_Viewstudents" Title="view all branch details list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100px; position: static; height: 100px">
            <tr>
                <td align="center" valign="top">
                    <strong><span style="text-decoration: underline">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF8000"
                            Style="position: static" Text="Selected Course Students  Details are:" Font-Underline="True" Width="389px"></asp:Label></span></strong></td>
            </tr>
            <tr>
                <td align="center" style="width: 100px" valign="top">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="position: static" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" Width="560px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        
        <Columns>
        
        <asp:TemplateField HeaderText="Name">
        <ItemTemplate>
        <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Gender">
        <ItemTemplate>
        <asp:Label ID="gender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Email">
        <ItemTemplate>
        <asp:Label ID="email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        <asp:TemplateField HeaderText="Coursename">
        <ItemTemplate>
        <asp:Label ID="cname" runat="server" Text='<%#Eval("cname") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
         <asp:TemplateField HeaderText="CDate">
        <ItemTemplate>
        <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
        
    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

