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

public partial class Admin_Courses : System.Web.UI.Page
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
            GetCourseDetails();
            GetFrancheeseNames();
        }
    }

    private void GetCourseDetails()
    {
        da = new SqlDataAdapter("select tc.cid,tb.bname,tc.cname,tc.duration,tc.fee,tc.cdate from tbl_courses tc inner join tbl_branches tb on tc.bid=tb.bid", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_c");
        GridView1.DataSource = ds.Tables["tbl_c"].DefaultView;
        GridView1.DataBind();
    }

    private void GetFrancheeseNames()
    {
        da = new SqlDataAdapter("select fid,fname from tbl_francheese", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_f");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_f"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_f"].DefaultView;
            DropDownList1.DataTextField = "fname";
            DropDownList1.DataValueField = "fid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---Select---");
        }
    }

    private void GetBranchNames(int fid)  
        
    {
        da = new SqlDataAdapter("select bid,bname from tbl_branches where fid=" + fid + " ", con);
        //da=new SqlDataAdapter("select bid,bname
        ds = new DataSet();
        da.Fill(ds, "tbl_branches");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_branches"].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds.Tables["tbl_branches"].DefaultView;
            DropDownList2.DataTextField = "bname";
            DropDownList2.DataValueField = "bid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "---Select---");
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text!= "")
        {
            da = new SqlDataAdapter("insert into tbl_courses(bid,cname,duration,fee,cdate)values(" + Convert.ToInt32(DropDownList2.SelectedValue) + ",'" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "',getdate())", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetCourseDetails();
                DropDownList1.SelectedIndex = 0;
                DropDownList2.SelectedIndex = 0;
                TextBox1.Text = "";
                TextBox4.Text="";
                TextBox5.Text = "";
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
           GetBranchNames(Convert.ToInt32(DropDownList1.SelectedValue));
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "delete")
        {
            da = new SqlDataAdapter("delete from tbl_courses where cid=" + Convert.ToInt32(e.CommandArgument.ToString()) + " ", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetCourseDetails();
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

}
