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

public partial class Default7 : System.Web.UI.Page
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

      TextBox1.Text = "";
      Label1.Text = "Product is All ready Register ";

    }


    else
    {

      con.Open();
      string s1 = "insert into product values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9) ";

      SqlCommand cmd1 = new SqlCommand(s1, con);

      cmd1.Parameters.AddWithValue("@p1", TextBox1.Text);
      cmd1.Parameters.AddWithValue("@p2", TextBox2.Text);
      cmd1.Parameters.AddWithValue("@p3", TextBox3.Text);
      cmd1.Parameters.AddWithValue("@p4", TextBox4.Text);
      cmd1.Parameters.AddWithValue("@p5", TextBox5.Text);
      cmd1.Parameters.AddWithValue("@p6", TextBox6.Text);
      cmd1.Parameters.AddWithValue("@p7", TextBox7.Text);
      cmd1.Parameters.AddWithValue("@p8", TextBox8.Text);
      cmd1.Parameters.AddWithValue("@p9", TextBox9.Text);
      cmd1.ExecuteNonQuery();

      con.Close();
      TextBox1.Text = "";
      Label1.Text = "Product Registertion done";

    }
  }
}
