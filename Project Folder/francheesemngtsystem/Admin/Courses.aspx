<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Admin_Courses" Title="Courses Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 402px; position: static; height: 100px">
        <tr>
            <td colspan="4">
                <strong><span style="text-decoration: underline">Add BramchName</span></strong></td>
            <td colspan="1">
            </td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                Select Francheese :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                Select Branch :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100px; height: 26px" valign="top">
                Course :</td>
            <td align="left" style="width: 100px; height: 26px">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                Duration :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="TextBox4" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
            <td style="width: 100px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px">
                Fee :</td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 26px" valign="top">
            </td>
            <td style="width: 100px; height: 26px">
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
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <span><strong><span style="text-decoration: underline">Available Branchnames</span></strong><strong><span
                    style="text-decoration: underline"> are:</span></strong></span></td>
            <td colspan="1">
            </td>
            <td colspan="1">
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <div style="text-align: center">
                    <div style="text-align: center">
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="6">
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
                                <asp:LinkButton ID="delete" runat="server" CommandArgument='<%#Eval("cid") %>' CommandName="delete"
                                    Text="delete"></asp:LinkButton>
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
                        
                        <asp:TemplateField HeaderText="CDate">
                            <ItemTemplate>
                                <asp:Label ID="cdate" runat="server" Text='<%#Eval("cdate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <strong>There are no courses details.</strong>
                    </EmptyDataTemplate>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

