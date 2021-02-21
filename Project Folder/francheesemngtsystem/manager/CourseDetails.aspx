<%@ Page Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="manager_CourseDetails" Title="view all branch courses" %>
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
            <asp:TemplateField HeaderText="CourseId">
                <ItemTemplate>
                    <asp:Label ID="cid" runat="server" Text='<%#Eval("cid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="FranchiseeName">
                <ItemTemplate>
                    <asp:Label ID="fname" runat="server" Text='<%#Eval("fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="CourseName">
                <ItemTemplate>
                    <asp:Label ID="cname" runat="server" Text='<%#Eval("cname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Duration">
                <ItemTemplate>
                    <asp:Label ID="duration" runat="server" Text='<%#Eval("duration") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="FeeDetails">
                <ItemTemplate>
                    <asp:Label ID="fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:HyperLinkField HeaderText="Details" Text="view" DataNavigateUrlFields="cname" DataNavigateUrlFormatString="~/manager/Viewstudents.aspx?cname={0}" />
        </Columns>
        <EmptyDataTemplate>
            <strong>There are no Course details.</strong>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>

