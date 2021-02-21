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


public partial class Manager : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != true)
        {
            GetBranches();
            GetAppointments();
            TextBox1.Focus();
        }
    }

    private void GetBranches()
    {
        da = new SqlDataAdapter("select bid,bname from tbl_branches", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_b");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_b"].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds.Tables["tbl_b"].DefaultView;
            DropDownList1.DataTextField = "bname";
            DropDownList1.DataValueField = "bid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--Select--");
        }
    }

    private void GetAppointments()
    {
        da = new SqlDataAdapter("select distinct appointedas from tbl_login where appointedas<>'Student' ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_l");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_l"].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds.Tables["tbl_l"].DefaultView;
            DropDownList2.DataTextField = "appointedas";
            DropDownList2.DataValueField = "appointedas";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select--");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            
            cmd = new SqlCommand("select count(*) from tbl_login where uname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' and appointedas='"+DropDownList2.SelectedItem.Text+"' and bname='"+DropDownList1.SelectedItem.Text+"' and Status='Activate' ", con);
            con.Open();
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (n == 1)
            {
                cmd = new SqlCommand("select uid,bname,fname from tbl_login where uname='" + TextBox1.Text + "' and appointedas='"+DropDownList2.SelectedItem.Text+"' and bname='"+DropDownList1.SelectedItem.Text+"' ", con);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataSet();
                da.Fill(ds, "tbl_login");
                int r = 0;
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    r = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
                    this.Session.Add("uid", r.ToString());
                    Session.Add("bname", ds.Tables[0].Rows[0][1].ToString());
                    Session.Add("fname", ds.Tables[0].Rows[0][2].ToString());
                    Response.Redirect("~/manager/StudentsDetails.aspx?uid=" + n.ToString() + "&" + "userid=" + r.ToString());
                }
            }
            else
            {
                Label1.Text = "Invalid Username and Password.";
                TextBox1.Focus();
            }   
        }
    }
}
