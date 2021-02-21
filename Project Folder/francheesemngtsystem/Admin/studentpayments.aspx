<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="studentpayments.aspx.cs" Inherits="Admin_studentpayments" Title="Student payments details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="paymentid" DataSourceID="SqlDataSource1"
        ForeColor="#333333" GridLines="None" Style="position: static">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="paymentid" HeaderText="paymentid" InsertVisible="False"
                ReadOnly="True" SortExpression="paymentid" />
            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
        </Columns>
        <RowStyle BackColor="#E3EAEB" />
        <EmptyDataTemplate>
            <strong>There are payment details.</strong>
        </EmptyDataTemplate>
        <EditRowStyle BackColor="#7C6F57" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:con %>"
        DeleteCommand="DELETE FROM [tbl_payments] WHERE [paymentid] = @paymentid" InsertCommand="INSERT INTO [tbl_payments] ([cname], [amount], [cdate]) VALUES (@cname, @amount, @cdate)"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT [paymentid], [cname], [amount], [cdate] FROM [tbl_payments] WHERE ([uid] = @uid)"
        UpdateCommand="UPDATE [tbl_payments] SET [cname] = @cname, [amount] = @amount, [cdate] = @cdate WHERE [paymentid] = @paymentid">
        <DeleteParameters>
            <asp:Parameter Name="paymentid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="amount" Type="Decimal" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="paymentid" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="uid" QueryStringField="uid" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="cname" Type="String" />
            <asp:Parameter Name="amount" Type="Decimal" />
            <asp:Parameter Name="cdate" Type="DateTime" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

