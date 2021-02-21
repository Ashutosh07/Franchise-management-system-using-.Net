<%@ Page Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="StudentsDetails.aspx.cs" Inherits="manager_StudentsDetails" Title="Branch students details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20"
        Style="position: static" OnRowCommand="GridView1_RowCommand">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            
            <asp:TemplateField HeaderText="StudentId">
                <ItemTemplate>
                    <asp:Label ID="uid" runat="server" Text='<%#Eval("uid") %>'></asp:Label>
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
            
            <asp:TemplateField HeaderText="Contactno">
                <ItemTemplate>
                    <asp:Label ID="cno" runat="server" Text='<%#Eval("contactno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
             <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 
            
            <asp:TemplateField HeaderText="Cdate">
                <ItemTemplate>
                    <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>         
            
            <asp:TemplateField HeaderText="Details">
                <ItemTemplate>
                    <asp:LinkButton ID="view" runat="server" CommandArgument='<%#Eval("uid") %>' CommandName="view"
                        Text="view"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            
            
            
        </Columns>
        <EmptyDataTemplate>
            <strong>There are no students details.</strong>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

