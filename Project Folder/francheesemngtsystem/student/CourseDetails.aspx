<%@ Page Language="C#" MasterPageFile="~/studentmaster.master" AutoEventWireup="true" CodeFile="CourseDetails.aspx.cs" Inherits="student_CourseDetails" Title="student course details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
        Style="position: static" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="scid" DataSourceID="SqlDataSource1">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#E3EAEB" />
        <EditRowStyle BackColor="#7C6F57" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="scid" HeaderText="scid" InsertVisible="False" ReadOnly="True"
                SortExpression="scid" />
            <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:con %>"
        DeleteCommand="DELETE FROM [tbl_scourses] WHERE [scid] = @scid" InsertCommand="INSERT INTO [tbl_scourses] ([fname], [bname], [cname], [cdate]) VALUES (@fname, @bname, @cname, @cdate)"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT [scid], [bname], [cname], [cdate] FROM [tbl_scourses] WHERE ([uid] = @uid)"
        UpdateCommand="UPDATE [tbl_scourses] SET [fname] = @fname, [bname] = @bname, [cname] = @cname, [cdate] = @cdate WHERE [scid] = @scid">
        <DeleteParameters>
            <asp:Parameter Name="scid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="bname" Type="String" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="scid" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="fname" Type="String" />
            <asp:Parameter Name="bname" Type="String" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

