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

public partial class updatec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());

  protected void Button2_Click(object sender, EventArgs e)
  {
    con.Open();
    string s2 = "select * from client where Cid=@p10 ";
    SqlCommand cmd2 = new SqlCommand(s2, con);
    cmd2.Parameters.AddWithValue("@p10", TextBox1.Text);
    SqlDataReader daa = cmd2.ExecuteReader();
    if (daa.Read())
    {
      TextBox3.Text = daa["cname"].ToString();
      TextBox4.Text = daa["addr"].ToString();
      TextBox5.Text = daa["addr2"].ToString();
      TextBox6.Text = daa["city"].ToString();
      TextBox7.Text = daa["pin"].ToString();
      TextBox8.Text = daa["mno"].ToString();
      TextBox9.Text = daa["gst"].ToString();
      Label1.Text = "Client found";
    }
    else
    {
      TextBox1.Text = "";
      TextBox3.Text = "";
      TextBox4.Text = "";
      TextBox5.Text = "";
      TextBox6.Text = "";
      TextBox7.Text = "";
      TextBox8.Text = "";
      TextBox9.Text = "";

      Label1.Text = "Client not found";
    }
    con.Close();
  }

  protected void Button1_Click(object sender, EventArgs e)
  {
    con.Open();
    string s = "select * from client where Cid=@p1 ";

    SqlCommand cmd = new SqlCommand(s, con);

    cmd.Parameters.AddWithValue("@p1", TextBox1.Text);

    SqlDataAdapter da = new SqlDataAdapter(cmd);

    DataTable dt = new DataTable();

    da.Fill(dt);
    con.Close();
    if (dt.Rows.Count > 0)
    {

      con.Open();
      string s1 = "update client set cname=@p1,addr=@p2,addr2=@p3,city=@p4,pin=@p5,mno=@p6,gst=@p7 where Cid=@p10  ";

      SqlCommand cmd1 = new SqlCommand(s1, con);

      cmd1.Parameters.AddWithValue("@p10", TextBox1.Text);
      cmd1.Parameters.AddWithValue("@p1", TextBox3.Text);
      cmd1.Parameters.AddWithValue("@p2", TextBox4.Text);
      cmd1.Parameters.AddWithValue("@p3", TextBox5.Text);
      cmd1.Parameters.AddWithValue("@p4", TextBox6.Text);
      cmd1.Parameters.AddWithValue("@p5", TextBox7.Text);
      cmd1.Parameters.AddWithValue("@p6", TextBox8.Text);
      cmd1.Parameters.AddWithValue("@p7", TextBox9.Text);
      cmd1.ExecuteNonQuery();

      con.Close();
      TextBox1.Text = "";
      Label1.Text = "Client Updated";

    }
    else
    {
      TextBox1.Text = "";
      Label1.Text = "Client not found";

    }
  }
}
