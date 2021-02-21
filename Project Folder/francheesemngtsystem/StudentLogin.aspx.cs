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


public partial class StudentLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["rconfirm"] != null)
        {
            Label1.Text = Request.QueryString["rconfirm"].ToString();
        }

        if (Page.IsPostBack != true)
        {
            TextBox1.Focus();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            cmd = new SqlCommand("select count(*) from tbl_login where uname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' and appointedas='Student' and Status='Activate' ", con);
            con.Open();
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();
            if (n == 1)
            {
                cmd = new SqlCommand("select uid,bname,fname from tbl_login where uname='" + TextBox1.Text + "' and appointedas='Student' ", con);
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
                    Response.Redirect("~/student/profile.aspx?uid=" + n.ToString() + "&" + "userid=" + r.ToString());
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
