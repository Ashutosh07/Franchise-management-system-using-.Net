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

public partial class Admin_Branches : System.Web.UI.Page
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
            GetFrancheese();
        }
    }

    private void GetFrancheese()
    {
        da = new SqlDataAdapter("select fid,fname,cdate from tbl_francheese", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_francheese");
        GridView1.DataSource = ds.Tables["tbl_francheese"].DefaultView;
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetFrancheese();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            da = new SqlDataAdapter("insert into tbl_francheese(fname,cdate)values('" + TextBox1.Text + "',getdate())", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetFrancheese();
                TextBox1.Text = "";
            }
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            da = new SqlDataAdapter("delete from tbl_francheese where fid=" + Convert.ToInt32(e.CommandArgument.ToString()) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetFrancheese();
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
}
