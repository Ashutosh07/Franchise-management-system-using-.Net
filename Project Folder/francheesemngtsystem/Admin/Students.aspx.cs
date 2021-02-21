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


public partial class Admin_Students : System.Web.UI.Page
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
            GetStudents();
           
        }
    }

    private void GetStudents()
    {
        da = new SqlDataAdapter("select uid,name,gender,email,contactno,fname,bname,status,cdate from tbl_login where appointedas='Student' ", con);
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
        if (e.CommandName == "Status")
        {
            da=new SqlDataAdapter("select status from tbl_login where uid="+Convert.ToInt32(e.CommandArgument.ToString())+" ",con);
            ds=new DataSet();
            da.Fill(ds,"tbl_l");
            if(ds.Tables.Count>0 && ds.Tables["tbl_l"].Rows.Count>0)
            {
                if(ds.Tables["tbl_l"].Rows[0][0].ToString()=="Activate")
                {
                    da=new SqlDataAdapter("update tbl_login set status='Deactivate' where uid="+Convert.ToInt32(e.CommandArgument.ToString())+" ",con);
                    int n=da.SelectCommand.ExecuteNonQuery();
                    if(n==1)
                    {
                        GetStudents();
                    }
                }
                else if(ds.Tables["tbl_l"].Rows[0][0].ToString()=="Deactivate")
                {
                    da=new SqlDataAdapter("update tbl_login set status='Activate' where uid="+Convert.ToInt32(e.CommandArgument.ToString())+" ",con);
                    int n=da.SelectCommand.ExecuteNonQuery();
                    if(n==1)
                    {
                        GetStudents();
                    }
                }
            }
        }
        else if (e.CommandName == "Payments")
        {
            int uid = Convert.ToInt32(e.CommandArgument.ToString());

            Response.Redirect("~/admin/studentpayments.aspx?uid=" + uid.ToString());
        
        }
        else if (e.CommandName == "Courses")
        {
            int uid = Convert.ToInt32(e.CommandArgument.ToString());

            Response.Redirect("~/admin/studentcourses.aspx?uid="+uid.ToString());
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label uid = new Label();

        uid = (Label)GridView1.Rows[e.RowIndex].Cells[1].FindControl("uid");
        if (uid.Text != "")
        {
            da = new SqlDataAdapter("delete from tbl_login where uid=" + Convert.ToInt32(uid.Text) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if(n==1)
            {
                GetStudents();
            }
        }
    }
}
