<%@ Page Language="C#" MasterPageFile="~/ManagerMaster.master" AutoEventWireup="true" CodeFile="Studentpayments.aspx.cs" Inherits="manager_StudentCourses" Title="Students course payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 352px; position: static; height: 100px">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF8000"
                        Style="position: static" Text="Fill Student Course fee deatils are :"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Student Id :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:Label ID="Label2" runat="server" Style="position: static"></asp:Label></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Name :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:Label ID="Label3" runat="server" Style="position: static"></asp:Label></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Course :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                    Duration :</td>
                <td align="left" style="width: 100px; height: 21px" valign="top">
                    <asp:Label ID="Label4" runat="server" Style="position: static"></asp:Label></td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Fee :</td>
                <td align="left" style="width: 100px" valign="top">
                    <asp:Label ID="Label5" runat="server" Style="position: static"></asp:Label></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 100px" valign="top">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                </td>
                <td align="left" style="width: 100px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                        Text="Submit..." OnClick="Button1_Click" /></td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

