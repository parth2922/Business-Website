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

public partial class printdu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());



  protected void Button2_Click(object sender, EventArgs e)
  {
    con.Open();
    string s = "select iid as Invoice_ID,idate as Invoice_Date,ddate as Due_Date,cname as Customer_name,cmo as Mobile,taxa as Tex_amount,pvalue as Product_value,total as Total  from invoice where iid=@p1 or cname=@p2 ";

    SqlCommand cmd = new SqlCommand(s, con);
    
    cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
    cmd.Parameters.AddWithValue("@p2", TextBox2.Text);

    SqlDataAdapter da = new SqlDataAdapter(cmd);

    DataTable dt = new DataTable();

    da.Fill(dt);
    GD.DataSource = dt;
    GD.DataBind();
    con.Close();
  }
}
