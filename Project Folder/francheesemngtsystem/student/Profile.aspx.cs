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


public partial class student_Profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session.Count > 0)
            {
                GetSelectedcourses(Convert.ToInt32(Session["uid"].ToString()));
                GetPdetails(Convert.ToInt32(Session["uid"].ToString()));
            }
            else
            {
                Response.Redirect("~/default.aspx");
            }
        }
    }

    private void GetPdetails(int uid)
    {
        da = new SqlDataAdapter("select name,gender,email,contactno,fname,bname,status from tbl_login where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_l");
        FormView1.DataSource = ds.Tables["tbl_l"].DefaultView;
        FormView1.DataBind();
    }

    private void GetSelectedcourses(int uid)
    {
        da = new SqlDataAdapter("select scid,cname from tbl_scourses where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_sc");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_sc"].Rows.Count > 0)
        {
            ListBox1.DataSource = ds.Tables[0].DefaultView;
            ListBox1.DataTextField = "cname";
            ListBox1.DataValueField = "scid";
            ListBox1.DataBind();
        }
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ListBox1.Items.Count>0)
        {
            da = new SqlDataAdapter("select bname from tbl_login where uid=" + Convert.ToInt32(Session["uid"].ToString()) + " ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_sc1");
            if (ds.Tables.Count > 0 && ds.Tables["tbl_sc1"].Rows.Count > 0)
            {
                da = new SqlDataAdapter("select tc.cid,tc.duration,tc.fee from tbl_courses tc inner join tbl_branches tb on tc.bid=tb.bid where tb.bname='" + ds.Tables["tbl_sc1"].Rows[0][0].ToString() + "' and tc.cname='"+ListBox1.SelectedItem.ToString()+"'  ", con);                
                da.Fill(ds, "tbl_course");
                if (ds.Tables.Count > 0 && ds.Tables["tbl_course"].Rows.Count > 0)
                {
                    FormView2.DataSource = ds.Tables["tbl_course"].DefaultView;
                    FormView2.DataBind();
                }
            }
        }
    }
}
