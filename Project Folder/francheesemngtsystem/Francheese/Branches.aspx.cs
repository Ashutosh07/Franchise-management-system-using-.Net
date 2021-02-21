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

public partial class Francheese_Branches : System.Web.UI.Page
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

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetBranches();
    }
}
