<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Locations.aspx.cs" Inherits="Francheese_Locations" Title="All location details" %>
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
            <asp:TemplateField HeaderText="LocationId">
                <ItemTemplate>
                    <asp:Label ID="bid" runat="server" Text='<%#Eval("bid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FrancheeseName">
                <ItemTemplate>
                    <asp:Label ID="fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BranchName">
                <ItemTemplate>
                    <asp:Label ID="bname" runat="server" Text='<%#Eval("bname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CDate">
                <ItemTemplate>
                    <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField HeaderText="Details" NavigateUrl="~/StudentLogin.aspx" Text="View" />
        </Columns>
        <EmptyDataTemplate>
            <strong>There are no Locations.</strong>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

