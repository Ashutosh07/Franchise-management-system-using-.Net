<%@ Page Language="C#" MasterPageFile="~/studentmaster.master" AutoEventWireup="true" CodeFile="JoinInNewCourses.aspx.cs" Inherits="student_JoinInNewCourses" Title="Join into new courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 100px; position: static; height: 100px">
            <tr>
                <td align="center" style="width: 100px" valign="top">
                    <asp:Label ID="Label1" runat="server" Style="position: static" Width="372px" Font-Bold="True"></asp:Label></td>
            </tr>
            <tr>
                <td align="center" style="width: 100px" valign="top">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="position: static" Width="350px" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <EditRowStyle BackColor="#2461BF" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        
        <Columns>
        
        <asp:TemplateField HeaderText="Jion">
                <ItemTemplate>
                    <asp:LinkButton ID="jid" runat="server" CommandArgument='<%#Eval("cid") %>' CommandName="Update" Text="now"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="CourseId">
                <ItemTemplate>
                    <asp:Label ID="cid" runat="server" Text='<%#Eval("cid") %>'></asp:Label>
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
            
           
        </Columns>
        <EmptyDataTemplate>
            <strong>There are no Course details.</strong>
        </EmptyDataTemplate>
        
    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

