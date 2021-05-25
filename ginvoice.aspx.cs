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

public partial class ginvoice : System.Web.UI.Page
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
    cmd2.Parameters.AddWithValue("@p10", TextBox6.Text);
    SqlDataReader daa = cmd2.ExecuteReader();
    if (daa.Read())
    {
      TextBox9.Text = daa["cname"].ToString();
      TextBox10.Text = daa["addr"].ToString();
      TextBox11.Text = daa["addr2"].ToString();
      TextBox14.Text = daa["city"].ToString();
      TextBox18.Text = daa["pin"].ToString();
      TextBox16.Text = daa["mno"].ToString();
      TextBox19.Text = daa["gst"].ToString();
      Label1.Text = "Client found";
    }
    else
    {
      TextBox9.Text = "";
      TextBox10.Text = "";
      TextBox11.Text = "";
      TextBox14.Text = "";
      TextBox18.Text = "";
      TextBox16.Text = "";
      TextBox19.Text = "";

      Label1.Text = "Client not found";
    }
    con.Close();
  }

  protected void Button3_Click(object sender, EventArgs e)
  {
    con.Open();
    string s2 = "select * from product where pid=@p10 ";
    SqlCommand cmd2 = new SqlCommand(s2, con);
    cmd2.Parameters.AddWithValue("@p10", TextBox17.Text);
    SqlDataReader daa = cmd2.ExecuteReader();
    if (daa.Read())
    {
      TextBox21.Text = daa["pname"].ToString();
      TextBox20.Text = daa["hsnc"].ToString();
      TextBox22.Text = daa["pdesc"].ToString();
      TextBox23.Text = daa["unit"].ToString();
      TextBox24.Text = daa["tax"].ToString();
      TextBox25.Text = daa["pqty"].ToString();
      TextBox26.Text = daa["prate"].ToString();
      Label2.Text = "Product found";
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

      Label2.Text = "Product not found";
    }
    con.Close();
  }
  protected void Button4_Click(object sender, EventArgs e)
  {
    con.Open();
    string s = "select * from invoice where iid=@p1";
    string c1 = "select *from temp";

    SqlCommand cmd5 = new SqlCommand(s, con);

    SqlCommand cmd6 = new SqlCommand(c1, con);

    cmd5.Parameters.AddWithValue("@p1", TextBox1.Text);

    SqlDataAdapter da = new SqlDataAdapter(cmd5);

    SqlDataAdapter da2 = new SqlDataAdapter(cmd6);

    DataTable dt = new DataTable();

    DataTable dt2 = new DataTable();
    da.Fill(dt);
    da2.Fill(dt2);
    con.Close();
    if (dt.Rows.Count > 0)
    {

      TextBox1.Text = "";
      Label3.Text = "Invoice already exsist";

    }
    else if(TextBox1.Text==""||TextBox2.Text=="" || TextBox3.Text == "" || TextBox6.Text == "" || TextBox9.Text == "")
    {
      Label3.Text = "Enter proper Details";
    }
    else if(dt2.Rows.Count<=0)
    {
      Label3.Text = "Please First Select the Product";
    }

    else
    {
      con.Open();
      string s3 = "insert into temp2 select sum(taxa),sum(basica),sum(ta) from temp";

      SqlCommand cmd2 = new SqlCommand(s3, con);
      cmd2.ExecuteNonQuery();
      con.Close();
      con.Open();

      string s4 = "select * from temp2";
      SqlCommand cmd3 = new SqlCommand(s4, con);

      string a="0",b="0",c="0";

      SqlDataReader daa = cmd3.ExecuteReader();
      if (daa.Read())
      {
        a = daa["totalt"].ToString();
        b = daa["totalb"].ToString();
        c = daa["totala"].ToString();

      }
      
    



      con.Close();
      
      con.Open();
      string s1 = "insert into invoice values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8)";

      SqlCommand cmd1 = new SqlCommand(s1, con);
      cmd1.Parameters.AddWithValue("@p1", TextBox1.Text);
      cmd1.Parameters.AddWithValue("@p2", TextBox2.Text);
      cmd1.Parameters.AddWithValue("@p3", TextBox5.Text);
      cmd1.Parameters.AddWithValue("@p4", TextBox9.Text);
      cmd1.Parameters.AddWithValue("@p5", TextBox16.Text);
      cmd1.Parameters.AddWithValue("@p6", a);
      cmd1.Parameters.AddWithValue("@p7", b);
      cmd1.Parameters.AddWithValue("@p8", c);
      cmd1.ExecuteNonQuery();
      Label1.Text = "Invoice Created";
      con.Close();
      con.Open();
      string s5 = "delete from temp";
      SqlCommand cmd10 = new SqlCommand(s5, con);
      cmd10.ExecuteNonQuery();

      con.Close();
      con.Open();
      string d = "delete from temp2";
      SqlCommand cmd4 = new SqlCommand(d, con);
      cmd4.ExecuteNonQuery();
      con.Close();

      TextBox1.Text = "";
      Label3.Text = "Invoice Created";

    }
  }



  protected void Button1_Click(object sender, EventArgs e)
  {
      con.Open();
      string s1 = "insert into temp values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11) ";
    if (TextBox17.Text == "")
    {
      Label3.Text = "Please Fill Product Details";
    }
    else
    {
      SqlCommand cmd1 = new SqlCommand(s1, con);
      cmd1.Parameters.AddWithValue("@p1", TextBox17.Text);
      cmd1.Parameters.AddWithValue("@p2", TextBox20.Text);
      cmd1.Parameters.AddWithValue("@p3", TextBox21.Text);
      cmd1.Parameters.AddWithValue("@p4", TextBox22.Text);
      cmd1.Parameters.AddWithValue("@p5", TextBox25.Text);
      cmd1.Parameters.AddWithValue("@p6", TextBox23.Text);
      cmd1.Parameters.AddWithValue("@p7", TextBox26.Text);
      int a = Convert.ToInt32((TextBox26.Text)) * Convert.ToInt32((TextBox25.Text));

      cmd1.Parameters.AddWithValue("@p8", a);

      cmd1.Parameters.AddWithValue("@p9", TextBox24.Text);
      int b = (a * (Convert.ToInt32(TextBox24.Text)) / 100);
      cmd1.Parameters.AddWithValue("@p10", a);
      int c = a + b;
      cmd1.Parameters.AddWithValue("@p11", c);

      cmd1.ExecuteNonQuery();

      con.Close();
      con.Open();
      string s2 = "select * from temp";

      SqlCommand cmd2 = new SqlCommand(s2, con);

      SqlDataAdapter da1 = new SqlDataAdapter(cmd2);

      DataTable dt1 = new DataTable();

      da1.Fill(dt1);
      this.grid.Update();
    }
    con.Close();
  }
}
