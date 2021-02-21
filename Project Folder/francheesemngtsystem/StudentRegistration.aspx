<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentRegistration.aspx.cs" Inherits="StudentRegistration" Title="New Student registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 500px; position: static; height: 100px">
        <tr>
            <td colspan="4" style="height: 21px">
                <asp:Label ID="Label2" runat="server" Style="position: static" Width="418px" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 25px">
                <strong><span style="text-decoration: underline">Course Details</span></strong></td>
        </tr>
         <tr>
            <td style="width: 100px; height: 27px">
                Franchisee :</td>
            <td align="left" style="width: 100px; height: 27px" valign="top">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"
                    Style="position: static" Width="106px">
                </asp:DropDownList></td>
            <td align="left" style="width: 100px; height: 27px" valign="top">
            </td>
            <td style="width: 103px; height: 27px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 27px">
                Branch :</td>
            <td align="left" style="width: 100px; height: 27px" valign="top">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Style="position: static" Width="109px">
                </asp:DropDownList></td>
            <td align="left" style="width: 100px; height: 27px" valign="top">
            </td>
            <td style="width: 103px; height: 27px">
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 100px; height: 27px" valign="top">
                Course :</td>
            <td align="left" colspan="3" style="height: 27px" valign="top">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Style="position: static" RepeatDirection="Horizontal" Width="354px">
                </asp:CheckBoxList></td>
        </tr>
        
        <tr>
            <td colspan="4">
                <strong><span style="text-decoration: underline">New Appointments</span></strong></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Username :</td>
            <td align="left" style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"
                    Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Style="position: static" Width="225px" Font-Bold="True"></asp:Label></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Password :</td>
            <td align="left" style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Confirm pwd :</td>
            <td align="left" style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox3" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Name :</td>
            <td align="left" style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox7" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Gender :</td>
            <td align="left" style="width: 100px" valign="top">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Email Id :</td>
            <td align="left" style="width: 100px" valign="top">
                <asp:TextBox ID="TextBox5" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px" valign="top">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 27px">
                Contact no :</td>
            <td align="left" style="width: 100px; height: 27px" valign="top">
                <asp:TextBox ID="TextBox6" runat="server" Style="position: static"></asp:TextBox></td>
            <td align="left" style="width: 100px; height: 27px" valign="top">
            </td>
            <td style="width: 103px; height: 27px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td align="left" style="width: 100px">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click"
                    Style="position: static" Text="Submit" /></td>
            <td style="width: 100px">
            </td>
            <td style="width: 103px">
            </td>
        </tr>
       
    </table>
</asp:Content>

