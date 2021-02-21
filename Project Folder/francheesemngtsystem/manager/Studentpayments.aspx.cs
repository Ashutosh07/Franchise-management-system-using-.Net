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


public partial class manager_StudentCourses : System.Web.UI.Page
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

        if (Request.QueryString.Count > 0)
        {
            if (Page.IsPostBack != true)
            {
                Label2.Text = Request.QueryString["uid"].ToString();
                Label3.Text = Request.QueryString["sname"].ToString();
                GetBranchCourses(Session["bname"].ToString());
            }
        }
    }

    private void GetBranchCourses(string bname)
    {
        da = new SqlDataAdapter("select tc.cid,tc.cname from tbl_courses tc inner join tbl_branches tb on tc.bid=tb.bid where tb.bname='" + bname.ToString() + "' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_c");
        if (ds.Tables["tbl_c"].Rows.Count > 0 && ds.Tables.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_c"].DefaultView;
            DropDownList1.DataTextField = "cname";
            DropDownList1.DataValueField = "cid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("insert into tbl_payments(uid,cname,amount,cdate)values(" + Convert.ToInt32(Label2.Text) + ",'" + DropDownList1.SelectedItem.Text + "'," + Convert.ToDecimal(Label5.Text) + ",getdate())", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                Response.Redirect("~/manager/StudentFeeDetails.aspx");
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("select duration,fee from tbl_courses where cname='" + DropDownList1.SelectedItem.Text + "' ", con);
            ds = new DataSet();
            da.Fill(ds, "tbl_c");
            if (ds.Tables.Count > 0 && ds.Tables["tbl_c"].Rows.Count > 0)
            {
                Label4.Text = ds.Tables["tbl_c"].Rows[0][0].ToString();
                Label5.Text = Convert.ToDecimal(ds.Tables["tbl_c"].Rows[0][1].ToString()).ToString();
            }
        }
    }
}
