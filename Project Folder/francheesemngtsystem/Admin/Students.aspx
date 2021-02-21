<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Students.aspx.cs" Inherits="Admin_Students" Title="Students details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 674px; position: static; height: 100px">
            <tr>
                <td colspan="8">
                    <strong>All students Details are&nbsp; :</strong></td>
            </tr>
            <tr>
                <td colspan="8" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None" Style="position: static"
                        Width="485px" EmptyDataText="There are no students details." OnRowCommand="GridView1_RowCommand">
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#E3EAEB" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        
                        <AlternatingRowStyle BackColor="White" />
                        <EmptyDataTemplate>
                            <strong>There no students details.</strong>                        
                        </EmptyDataTemplate>
                        
                        <Columns>
                        
                        <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                        <asp:LinkButton ID="delete" runat="server" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="StudentId">
                        <ItemTemplate>
                        <asp:Label ID="uid" runat="server" Text='<%#Eval("uid") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="FrancheeseName">
                        <ItemTemplate>
                        <asp:Label ID="fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="BranchName">
                        <ItemTemplate>
                        <asp:Label ID="Bname" runat="server" Text='<%#Eval("bname") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="StudentName">
                        <ItemTemplate>
                        <asp:Label ID="name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        
                        <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#Eval("status") %>' CommandArgument='<%#Eval("uid") %>' CommandName="Status"></asp:LinkButton>
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
                        
                        <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate>
                        <asp:Label ID="cno" runat="server" Text='<%#Eval("contactno") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="CDate">
                        <ItemTemplate>
                        <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Payments">
                        <ItemTemplate>
                        <asp:LinkButton ID="Payments" runat="server" Text="Payments" CommandName="Payments" CommandArgument='<%#Eval("uid") %>'></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Courses">
                        <ItemTemplate>
                        <asp:LinkButton ID="Courses" runat="server" Text="Courses" CommandName="Courses" CommandArgument='<%#Eval("uid") %>'></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        </Columns>
                        
                    </asp:GridView>
                </td>
            </tr>
            <tr>
            </tr>
             
        </table>
    </div>
</asp:Content>

