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

public partial class manager_CourseDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetCourseDetails();
        }
    }

    private void GetCourseDetails()
    {
        da = new SqlDataAdapter("select tc.cid,tf.fname,tc.cname,tc.duration,tc.fee,tc.cdate from tbl_courses tc inner join tbl_branches tb on tc.bid=tb.bid inner join tbl_francheese tf on tf.fid=tb.fid where tb.bname='"+Session["bname"].ToString()+"' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_c");
        GridView1.DataSource = ds.Tables["tbl_c"].DefaultView;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetCourseDetails();
    }
}
