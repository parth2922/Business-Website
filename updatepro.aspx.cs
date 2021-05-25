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
public partial class updatepro : System.Web.UI.Page
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
      string s1 = "update product set pid=@p2,pname=@p3,hsnc=@p4,pdesc=@p5,unit=@p6,tax=@p7,pqty=@p8,prate=@p9 where pid=@p1  ";

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
      Label1.Text = "Product Updated";

    }


    else
    { 
      TextBox1.Text = "";
      Label1.Text = "Product not found";

    }
  }

  protected void Button2_Click(object sender, EventArgs e)
  {
    con.Open();
    string s2 = "select * from product where pid=@p10 ";
    SqlCommand cmd2 = new SqlCommand(s2, con);
    cmd2.Parameters.AddWithValue("@p10", TextBox1.Text);
    SqlDataReader daa = cmd2.ExecuteReader();
    if(daa.Read())
    {
      TextBox2.Text = daa["pid"].ToString();
      TextBox3.Text = daa["pname"].ToString();
      TextBox4.Text = daa["hsnc"].ToString();
      TextBox5.Text = daa["pdesc"].ToString();
      TextBox6.Text = daa["unit"].ToString();
      TextBox7.Text = daa["tax"].ToString();
      TextBox8.Text = daa["pqty"].ToString();
      TextBox9.Text = daa.GetValue(9).ToString();
      Label1.Text = "Product found";
    }
    else
    {
      TextBox1.Text = "";
      TextBox2.Text = "";
      TextBox3.Text = "";
      TextBox4.Text = "";
      TextBox5.Text = "";
      TextBox6.Text = "";
      TextBox7.Text = "";
      TextBox8.Text = "";
      TextBox9.Text = "";
      
      Label1.Text = "Product not found";
    }
    con.Close();
  }
}
