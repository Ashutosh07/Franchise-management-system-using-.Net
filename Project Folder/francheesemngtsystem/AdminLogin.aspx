<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" Title="Admin login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 366px; position: static; height: 100px">
            <tr>
                <td align="center" colspan="3" valign="top">
                    <strong>Admin Login</strong></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Username :</td>
                <td style="width: 100px">
                    <asp:TextBox ID="TextBox1" runat="server" Style="position: static" 
                        ontextchanged="TextBox1_TextChanged"></asp:TextBox></td>
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
    </div>
</asp:Content>

