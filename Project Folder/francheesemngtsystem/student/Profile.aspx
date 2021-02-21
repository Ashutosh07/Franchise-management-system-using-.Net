<%@ Page Language="C#" MasterPageFile="~/studentmaster.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="student_Profile" Title="Your profile details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <div style="text-align: center">
            <div style="text-align: center">
                <table style="width: 354px; position: static; height: 2px">
                    <tr>
                        <td colspan="2" style="height: 21px">
                            <strong><span style="text-decoration: underline">Your Personal and Course Details</span></strong></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                            <asp:FormView ID="FormView1" runat="server" Style="position: static" Width="244px" CellPadding="4" ForeColor="#333333">
                                <EmptyDataTemplate>
                                    <strong>There are no personal details.</strong>
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table style="width: 258px; position: static; height: 100px">
                                            <tr>
                                                <td colspan="2">
                                                    <strong><span style="text-decoration: underline">Personal Details</span></strong></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Name :</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label1" runat="server" Style="position: static" Text='<%#Eval("name") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Gender :</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label2" runat="server" Style="position: static" Text='<%#Eval("gender") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Email Id :</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label3" runat="server" Style="position: static" Text='<%#Eval("email") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Contact no :</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label4" runat="server" Style="position: static" Text='<%#Eval("contactno") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Francheese ::</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label7" runat="server" Style="position: static" Text='<%#Eval("fname") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Branch :</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label8" runat="server" Style="position: static" Text='<%#Eval("bname") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td style="width: 100px">
                                                    Status as :</td>
                                                <td style="width: 100px">
                                                    <asp:Label ID="Label5" runat="server" Style="position: static" Text='<%#Eval("status") %>'></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <RowStyle BackColor="#EFF3FB" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            </asp:FormView>
                        </td>
                        <td align="center" style="width: 100px" valign="top">
                            <div style="text-align: center">
                                <div style="text-align: center">
                                    <table style="width: 166px; position: static; height: 100px">
                                        <tr>
                                            <td style="width: 100px">
                                                <strong><span style="text-decoration: underline">Selected courses are</span></strong></td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 100px" valign="top">
                                                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                    Style="position: static" Width="152px"></asp:ListBox></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </td>
                        <td align="center" style="width: 100px" valign="top">
                            <asp:FormView ID="FormView2" runat="server" Style="position: static" CellPadding="4" ForeColor="#333333">
                                <ItemTemplate>
                                    <table style="width: 224px; position: static; height: 100px">
                                        <tr>
                                            <td colspan="2">
                                                <strong><span style="text-decoration: underline">Selected Course Details</span></strong></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px; height: 21px;">
                                                Cid :</td>
                                            <td style="width: 100px; height: 21px;">
                                                <asp:Label ID="Label6" runat="server" Style="position: static" Text='<%#Eval("cid") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                Duration :</td>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label2" runat="server" Style="position: static" Text='<%#Eval("duration") %>'></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                Fee :</td>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label3" runat="server" Style="position: static" Text='<%#Eval("fee") %>'></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <RowStyle BackColor="#EFF3FB" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            </asp:FormView>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

