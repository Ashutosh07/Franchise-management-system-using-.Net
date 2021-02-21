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

public partial class manager_StudentFeeDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            if (!Page.IsPostBack)
            {
                GetStudentPayments();
                GetStudentList(Session["bname"].ToString());
            }
        }    
    }

    private void GetStudentPayments()
    {
        da = new SqlDataAdapter("select tl.uid,tl.name,tp.cname,tp.amount,tp.cdate from tbl_payments tp inner join tbl_login tl on tp.uid=tl.uid where tl.bname='"+Session["bname"].ToString()+"' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_p");
        GridView1.DataSource = ds.Tables["tbl_p"].DefaultView;
        GridView1.DataBind();
    }

    private void GetStudentPayments(string sname)
    {
        da = new SqlDataAdapter("select tl.uid,tl.name,tp.cname,tp.amount,tp.cdate from tbl_payments tp inner join tbl_login tl on tp.uid=tl.uid where tl.bname='" + Session["bname"].ToString() + "' and tl.name='"+sname.ToString()+"' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_p");
        GridView1.DataSource = ds.Tables["tbl_p"].DefaultView;
        GridView1.DataBind();
    }

    private void GetStudentPayments(string sname,string cname)
    {
        da = new SqlDataAdapter("select tl.uid,tl.name,tp.cname,tp.amount,tp.cdate from tbl_payments tp inner join tbl_login tl on tp.uid=tl.uid where tl.bname='" + Session["bname"].ToString() + "' and tl.name='" + sname.ToString() + "' and tp.cname='"+cname.ToString()+"' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_p");
        GridView1.DataSource = ds.Tables["tbl_p"].DefaultView;
        GridView1.DataBind();
    }

    private void GetStudentList(string bname)
    {
        da = new SqlDataAdapter("select tl.uid,tl.name from tbl_login tl where tl.bname='" + Session["bname"].ToString() + "' and tl.appointedas='Student' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_l");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_l"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_l"].DefaultView;
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "uid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }

   

    private void GetStudentCourses(int uid)
    {
        da = new SqlDataAdapter("select tsc.scid,tsc.cname from tbl_scourses tsc inner join tbl_login tl on tl.uid=tsc.uid where tl.uid=" + uid + " and tl.appointedas='Student' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_l");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_l"].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds.Tables["tbl_l"].DefaultView;
            DropDownList2.DataTextField = "cname";
            DropDownList2.DataValueField = "scid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex > 0)
        {
            GetStudentCourses(Convert.ToInt32(DropDownList1.SelectedValue));
            GetStudentPayments(DropDownList1.SelectedItem.Text);
        }
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex > 0)
        {
            GetStudentPayments(DropDownList1.SelectedItem.Text,DropDownList2.SelectedItem.Text);
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetStudentPayments();
    }
}
