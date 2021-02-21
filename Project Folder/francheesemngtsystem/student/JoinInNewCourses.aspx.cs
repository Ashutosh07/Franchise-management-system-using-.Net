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

public partial class student_JoinInNewCourses : System.Web.UI.Page
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
            if (Session.Count > 0)
            {
                GetCourses(Convert.ToInt32(Session["uid"].ToString()));
            }
            else
            {
                Response.Redirect("~/default.aspx");
            }
        }
    }

    private void GetCourses(int uid)
    {
        da = new SqlDataAdapter("select bname from tbl_login where uid=" + uid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_b");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_b"].Rows.Count > 0)
        {
            da = new SqlDataAdapter("select tc.cid,tc.cname,tc.duration,tc.fee from tbl_courses tc inner join tbl_branches tb on tc.bid=tb.bid where tb.bname='" + ds.Tables["tbl_b"].Rows[0][0].ToString() + "' ", con);
            da.Fill(ds, "tbl_c");
            GridView1.DataSource = ds.Tables["tbl_c"].DefaultView;
            GridView1.DataBind();
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetCourses(Convert.ToInt32(Session["uid"].ToString()));
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GetCourses(Convert.ToInt32(Session["uid"].ToString()));
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label cid = new Label();
        Label cname = new Label();
        Label dur = new Label();
        Label fee = new Label();

        cid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("cid");
        cname = (Label)GridView1.Rows[e.RowIndex].Cells[2].FindControl("cname");
        dur = (Label)GridView1.Rows[e.RowIndex].Cells[3].FindControl("duration");
        fee = (Label)GridView1.Rows[e.RowIndex].Cells[4].FindControl("fee");

        if (cid.Text != "" && cname.Text!="")
        {
            da = new SqlDataAdapter("select cname from tbl_scourses where cname='" + cname.Text + "' ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_sc");
            if (ds.Tables.Count > 0 && ds.Tables["tbl_sc"].Rows.Count > 0)
            {
                if (cname.Text == ds.Tables["tbl_sc"].Rows[0][0].ToString())
                {
                    da = new SqlDataAdapter("update tbl_scourses set cname='" + cname.Text + "' where uid='" + Convert.ToInt32(Session["uid"].ToString()) + "' and cname='" + cname.Text + "' ", con);
                    int n = da.SelectCommand.ExecuteNonQuery();
                    if (n == 1)
                    {
                        Label1.Text = "You are already joined in this course.";
                        Label1.BackColor = System.Drawing.Color.Green;
                    }
                }                
            }
            else
            {
                da = new SqlDataAdapter("insert into tbl_scourses(uid,fname,bname,cname,cdate)values(" + Convert.ToInt32(Session["uid"].ToString()) + ",'" + Session["fname"].ToString() + "','" + Session["bname"].ToString() + "','" + cname.Text + "',getdate())", con);
                int n = da.SelectCommand.ExecuteNonQuery();
                if (n == 1)
                {
                    Label1.Text = "You are joined into new course successfully.";
                    Label1.BackColor = System.Drawing.Color.Yellow;
                }
            }
        }
    }
}
