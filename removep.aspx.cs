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

public partial class removep : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());

  protected void Button1_Click(object sender, EventArgs e)
    {
    con.Open();
    string s = "select * from product where pid=@p1 ";

    SqlCommand cmd = new SqlCommand(s, con);

    cmd.Parameters.AddWithValue("@p1", TextBox1.Text);

    SqlDataAdapter da = new SqlDataAdapter(cmd);

    DataTable dt = new DataTable();

    da.Fill(dt);
    con.Close();
    if (dt.Rows.Count > 0)
    {
      con.Open();
      string s1 = "DELETE FROM  product where pid=@p1 ";

      SqlCommand cmd1 = new SqlCommand(s1, con);

      cmd1.Parameters.AddWithValue("@p1", TextBox1.Text);
      cmd1.ExecuteNonQuery();

      con.Close();
      TextBox1.Text = "";
      Label1.Text = "Product Deleted Successfully";


    }


    else
    {

      TextBox1.Text = "";
      Label1.Text = "Product not found ";

    }
  }
}
