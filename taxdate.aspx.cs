using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class taxdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());

  protected void Button1_Click(object sender, EventArgs e)
    {
    con.Open();
    string s = "select iid as Invoice_ID,idate as Invoice_Date,ddate as Due_Date,cname as Customer_name,cmo as Mobile,taxa as Tex_amount,pvalue as Product_value,total as Total from invoice where cname=@p1 and (idate between @p2 and @p3)";

    SqlCommand cmd = new SqlCommand(s, con);

    cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
    cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
    cmd.Parameters.AddWithValue("@p3", TextBox3.Text);

    SqlDataAdapter da = new SqlDataAdapter(cmd);

    DataTable dt = new DataTable();

    da.Fill(dt);
    GridView1.DataSource = dt;
    GridView1.DataBind();
    con.Close();
  }

    protected void Button2_Click(object sender, EventArgs e)
    {
    con.Open();
    string s = "select iid as Invoice_ID,idate as Invoice_Date,ddate as Due_Date,cname as Customer_name,cmo as Mobile,taxa as Tex_amount,pvalue as Product_value,total as Total from invoice";

    SqlCommand cmd = new SqlCommand(s, con);

    SqlDataAdapter da = new SqlDataAdapter(cmd);

    DataTable dt = new DataTable();

    da.Fill(dt);
    GridView1.DataSource = dt;
    GridView1.DataBind();
    con.Close();
  }
}
