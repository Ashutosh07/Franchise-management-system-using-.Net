<%@ Page Language="C#" MasterPageFile="~/studentmaster.master" AutoEventWireup="true" CodeFile="FeeDetails.aspx.cs" Inherits="student_FeeDetails" Title="student fee details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="paymentid" DataSourceID="SqlDataSource1"
        ForeColor="#333333" GridLines="None" Style="position: static" Width="378px">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="paymentid" HeaderText="paymentid" InsertVisible="False"
                ReadOnly="True" SortExpression="paymentid" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
        </Columns>
        <RowStyle BackColor="#E3EAEB" />
        <EmptyDataTemplate>
            There are no FeeDetails.
        </EmptyDataTemplate>
        <EditRowStyle BackColor="#7C6F57" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:con %>"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT [paymentid],[cname], [amount], [cdate] FROM [tbl_payments] WHERE ([uid] = @uid)" DeleteCommand="DELETE FROM [tbl_payments] WHERE [paymentid] = @paymentid" InsertCommand="INSERT INTO [tbl_payments] ([amount], [cdate], [cname]) VALUES (@amount, @cdate, @cname)" UpdateCommand="UPDATE [tbl_payments] SET [amount] = @amount, [cdate] = @cdate, [cname] = @cname WHERE [paymentid] = @paymentid">
        <SelectParameters>
            <asp:SessionParameter Name="uid" SessionField="uid" Type="Int32" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="paymentid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="amount" Type="Decimal" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="paymentid" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="amount" Type="Decimal" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="cname" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

