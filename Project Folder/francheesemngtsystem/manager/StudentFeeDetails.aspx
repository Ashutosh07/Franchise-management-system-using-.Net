<%@ Page Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="StudentFeeDetails.aspx.cs" Inherits="manager_StudentFeeDetails" Title="view payment details of the branch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 618px; position: static; height: 100px">
            <tr>
                <td colspan="6">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF8000"
                        Style="position: static" Text="Students Payment Detaile are :" Width="320px"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" style="width: 100px; height: 30px" valign="top">
                </td>
                <td align="left" style="width: 100px; height: 30px" valign="top">
                    Student Name :</td>
                <td align="left" style="width: 100px; height: 30px" valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        Style="position: static">
                    </asp:DropDownList></td>
                <td align="left" style="width: 100px; height: 30px" valign="top">
                    Course Name :</td>
                <td align="left" style="width: 100px; height: 30px" valign="top">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                        Style="position: static">
                    </asp:DropDownList></td>
                <td align="left" style="width: 100px; height: 30px" valign="top">
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                        Style="position: static" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging" Width="520px">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <EmptyDataTemplate>
                            <strong>There are no students fee details.</strong>
                        </EmptyDataTemplate>
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
                        
                         <asp:TemplateField HeaderText="CourseName">
                        <ItemTemplate>
                        <asp:Label ID="cname" runat="server" Text='<%#Eval("cname") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                        <asp:Label ID="amount" runat="server" Text='<%#Eval("amount") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="PaidDate">
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

