<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="studentcourses.aspx.cs" Inherits="Admin_studentcourses" Title="Add student courses details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="scid" DataSourceID="SqlDataSource1"
        ForeColor="#333333" GridLines="None" Style="position: static" Width="350px">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="scid" HeaderText="scid" InsertVisible="False" ReadOnly="True"
                SortExpression="scid" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
        </Columns>
        <RowStyle BackColor="#E3EAEB" />
        <EmptyDataTemplate>
            <strong>There are course details.</strong>
        </EmptyDataTemplate>
        <EditRowStyle BackColor="#7C6F57" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:con %>"
        DeleteCommand="DELETE FROM [tbl_scourses] WHERE [scid] = @scid" InsertCommand="INSERT INTO [tbl_scourses] ([cname], [cdate]) VALUES (@cname, @cdate)"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT [scid], [cname], [cdate] FROM [tbl_scourses] WHERE ([uid] = @uid)"
        UpdateCommand="UPDATE [tbl_scourses] SET [cname] = @cname, [cdate] = @cdate WHERE [scid] = @scid">
        <DeleteParameters>
            <asp:Parameter Name="scid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="scid" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="uid" QueryStringField="uid" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

