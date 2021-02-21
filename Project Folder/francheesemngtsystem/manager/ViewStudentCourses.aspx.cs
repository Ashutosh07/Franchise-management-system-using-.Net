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

public partial class manager_ViewStudentCourses : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count > 0)
        {
            if (!Page.IsPostBack)
            {
                GetSelectedStudentCourses(Convert.ToInt32(Request.QueryString["uid"].ToString()));
            }
        }
    }

    private void GetSelectedStudentCourses(int uid)
    {
        da = new SqlDataAdapter("select tl.uid,tl.name,tl.gender,tl.email,tsc.cname,tsc.cdate from tbl_login tl inner join tbl_scourses tsc on tl.uid=tsc.uid where tl.uid=" + uid + " and tsc.uid="+uid+" ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_scourses");
        GridView1.DataSource = ds.Tables["tbl_scourses"].DefaultView;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetSelectedStudentCourses(Convert.ToInt32(Request.QueryString["uid"].ToString()));
    }
    
}
