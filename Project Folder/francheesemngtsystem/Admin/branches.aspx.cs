using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public partial class branches : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        if (!Page.IsPostBack)
        {
            GetBranches();
            GetFrancheeseNames();
        }
    }

    private void GetFrancheeseNames()
    {
        da = new SqlDataAdapter("select fid,fname from tbl_francheese", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_f");
        if(ds.Tables.Count>0 && ds.Tables["tbl_f"].Rows.Count>0)
        {
            DropDownList1.DataSource =ds.Tables["tbl_f"].DefaultView;
            DropDownList1.DataTextField = "fname";
            DropDownList1.DataValueField = "fid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---Select---");
        }
    }

    private void GetBranches()
    {
        da = new SqlDataAdapter("select tb.bid,tf.fname,tb.bname,tb.address,tb.country,tb.state,tb.city,tb.cdate from tbl_branches tb inner join tbl_francheese tf on tb.fid=tf.fid", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_branches");
        GridView1.DataSource = ds.Tables["tbl_branches"].DefaultView;
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
            da = new SqlDataAdapter("insert into tbl_branches(fid,bname,address,country,state,city,cdate)values(" + Convert.ToInt32(DropDownList1.SelectedValue) + ",'"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"',getdate())", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetBranches();
                DropDownList1.SelectedIndex = 0;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";



            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetBranches();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            da = new SqlDataAdapter("delete from tbl_branches where bid=" + Convert.ToInt32(e.CommandArgument.ToString()) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetBranches();
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
