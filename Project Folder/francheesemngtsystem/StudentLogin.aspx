<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" Title="Welcome to student login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" style="width: 366px; position: static; height: 100px">
        <tr>
            <td align="center" colspan="3" valign="top">
                <asp:Label ID="Label1" runat="server" Style="position: static" Width="353px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3" valign="top">
                <strong>Student Login</strong></td>
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
            <td align="center" colspan="3" style="height: 21px" valign="top">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Style="position: static"
                    Text="SignIn" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 23px">
                New Student?</td>
            <td style="width: 100px; height: 23px" align="left">
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/StudentRegistration.aspx"
                    Style="position: static" Width="156px">click here for SignUp</asp:LinkButton></td>
            <td style="width: 100px; height: 23px">
            </td>
        </tr>
    </table>
</asp:Content>

