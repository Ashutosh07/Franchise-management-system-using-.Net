<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 366px; position: static; height: 100px" align="left">
        <tr>
            <td align="center" colspan="3" valign="top">
                <strong>Manager Login</strong></td>
        </tr>
        <tr>
            <td align="center" colspan="3" valign="top">
                <asp:Label ID="Label1" runat="server" Style="position: static" Width="267px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px">
                Username :</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" Style="position: static"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Password :</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" Style="position: static" TextMode="Password"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Appointed as :</td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server" Style="position: static" Width="97px">
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                Branch :</td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="DropDownList1" runat="server" Style="position: static" Width="101px">
                </asp:DropDownList></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="height: 21px" valign="top">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                    Text="SignIn" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 23px">
            </td>
            <td style="width: 100px; height: 23px">
            </td>
            <td style="width: 100px; height: 23px">
            </td>
        </tr>
    </table>
</asp:Content>

