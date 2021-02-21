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

public partial class StudentRegistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);    
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            GetFrancheeseNames();
        }
    }

    private void GetFrancheeseNames()
    {
        da = new SqlDataAdapter("select fid,fname from tbl_francheese", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_f");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_f"].Rows.Count > 0)
        {
            DropDownList4.DataSource = ds.Tables["tbl_f"].DefaultView;
            DropDownList4.DataTextField = "fname";
            DropDownList4.DataValueField = "fid";
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "---Select---");
        }
    }

    private void GetBranchNames(int fid)
    {
        da = new SqlDataAdapter("select bid,bname from tbl_branches where fid=" + fid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_b");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_b"].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds.Tables["tbl_b"].DefaultView;
            DropDownList2.DataTextField = "bname";
            DropDownList2.DataValueField = "bid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "---Select---");
        }
    }

    private void GetCourses(int bid)
    {
        da = new SqlDataAdapter("select cid,cname from tbl_courses where bid=" + bid + " ", con);
        ds = new DataSet();
        da.Fill(ds, "tbl_c");
        if (ds.Tables.Count > 0 && ds.Tables["tbl_c"].Rows.Count > 0)
        {
            CheckBoxList1.DataSource = ds.Tables["tbl_c"].DefaultView;
            CheckBoxList1.DataTextField = "cname";
            CheckBoxList1.DataValueField = "cid";
            CheckBoxList1.DataBind();
            //checkedlist.Items.Insert(0, "---Select---");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label1.Text == "Username is Available.")
        {
            if (CheckBoxList1.Items.Count > 0)
            {
                if (TextBox1.Text != "" && TextBox2.Text != "")
                {
                    cmd = new SqlCommand("insert into tbl_login(fid,uname,password,name,appointedas,gender,email,contactno,fname,bname,status,cdate)values(" + Convert.ToInt32(DropDownList4.SelectedValue) + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','Student','" + DropDownList1.SelectedItem.ToString() + "',' " + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList4.SelectedItem.Text + "','" + DropDownList2.SelectedItem.ToString() + "','Activate',getdate())", con);
                    con.Open();
                    int user = cmd.ExecuteNonQuery();
                    con.Close();
                    if (user == 1)
                    {
                        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                        {
                            if (CheckBoxList1.Items[i].Selected == true)
                            {
                                cmd = new SqlCommand("insert into tbl_scourses(uid,fname,bname,cname,cdate)values(" + Convert.ToInt32(GetUid(TextBox1.Text).ToString()) + ",'" + DropDownList4.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + CheckBoxList1.Items[i].Text + "',getdate())", con);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                        }
                        string s = "Your Registration successfully completed.";
                        Response.Redirect("~/studentlogin.aspx?rconfirm=" + s.ToString());
                    }
                }
            }
            else
            {
                Label2.Text = "There are no courses to join.";
            }
        }
        else
        {
            Label2.Text = "The Username is already taken.Choose another Name.";
        }
    }

    private int GetUid(string uname)
    {
        cmd = new SqlCommand("select uid from tbl_login where uname='" + uname.ToString() + "' and appointedas='Student' ", con);
        con.Open();
        dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        int n = 0;
        if (dr.Read())
        {
            n = Convert.ToInt32(dr[0].ToString());
        }
        dr.Close();
        return n;
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select uname from tbl_login where uname='" + TextBox1.Text + "' and appointedas='Student' ", con);
        con.Open();
        dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        if (dr.Read())
        {
            Label1.Text = "Username is not Available.";
            Label1.BackColor = System.Drawing.Color.Red;
            TextBox1.Focus();
        }
        else
        {
            Label1.Text = "Username is Available.";
            Label1.BackColor = System.Drawing.Color.Green;
            TextBox2.Focus();
        }
        dr.Close();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList4.SelectedIndex > 0)
        {
            GetBranchNames(Convert.ToInt32(DropDownList4.SelectedValue));
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedIndex > 0)
        {
            GetCourses(Convert.ToInt32(DropDownList2.SelectedValue));
        }
    }
}
