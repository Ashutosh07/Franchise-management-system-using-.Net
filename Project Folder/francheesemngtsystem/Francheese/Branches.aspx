<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Branches.aspx.cs" Inherits="Francheese_Branches" Title="All branches details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            
            <asp:TemplateField HeaderText="BranchId">
                <ItemTemplate>
                    <asp:Label ID="bid" runat="server" Text='<%#Eval("bid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FranchiseeName">
                <ItemTemplate>
                    <asp:Label ID="fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
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
            <asp:HyperLinkField HeaderText="Details" NavigateUrl="~/StudentLogin.aspx" Text="view" />
        </Columns>
        <EmptyDataTemplate>
            <strong>There are no Branches details.</strong>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

