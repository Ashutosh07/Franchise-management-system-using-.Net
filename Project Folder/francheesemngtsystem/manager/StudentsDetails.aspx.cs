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


public partial class manager_StudentsDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            GetStudents();            
        }
    }

    private void GetStudents()
    {
        da = new SqlDataAdapter("select uid,name,gender,email,contactno,status,cdate from tbl_login where appointedas='Student' and bname='"+Session["bname"].ToString()+"' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_l");
        GridView1.DataSource = ds.Tables["tbl_l"].DefaultView;
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetStudents();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            int uid=Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("~/manager/viewStudentCourses.aspx?uid=" + uid.ToString());
        }
    }
}
