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

public partial class Admin_Managers : System.Web.UI.Page
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
            GetFrancheeseNames();
            GetAppointments();
        }

    }

    private void GetAppointments()
    {
        da = new SqlDataAdapter("select uid,uname,name,gender,email,appointedas,contactno,cdate from tbl_login where appointedas<>'Student' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_l");
        GridView1.DataSource = ds.Tables["tbl_l"].DefaultView;
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            da = new SqlDataAdapter("insert into tbl_login(fid,uname,password,name,appointedas,gender,email,contactno,fname,bname,status,cdate)values("+Convert.ToInt32(DropDownList3.SelectedValue)+",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.ToString() + "',' " + TextBox5.Text + "','" + TextBox6.Text + "','"+DropDownList3.SelectedItem.Text+"','"+DropDownList4.SelectedItem.Text+"','Activate',getdate())", con);
            int n = da.SelectCommand.ExecuteNonQuery();
            if (n == 1)
            {
                GetAppointments();
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;
                DropDownList1.SelectedIndex = 0;
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
        }
    }

    private void GetFrancheeseNames()
    {
        da = new SqlDataAdapter("select fid,fname from tbl_francheese", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_f");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_f"].Rows.Count > 0)
        {
            DropDownList3.DataSource = ds.Tables["tbl_f"].DefaultView;
            DropDownList3.DataTextField = "fname";
            DropDownList3.DataValueField = "fid";
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "---Select---");
        }
    }

    private void GetBranchNames(int fid)
    {
        da = new SqlDataAdapter("select bid,bname from tbl_branches where fid=" + fid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_b");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_b"].Rows.Count > 0)
        {
            DropDownList4.DataSource = ds.Tables["tbl_b"].DefaultView;
            DropDownList4.DataTextField = "bname";
            DropDownList4.DataValueField = "bid";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "---Select---");
        }
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedIndex > 0)
        {
            GetBranchNames(Convert.ToInt32(DropDownList3.SelectedValue));
        }
    }
}
