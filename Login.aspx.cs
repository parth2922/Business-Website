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

public partial class Login : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
  {

  }
  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["db"].ConnectionString.ToString());
  protected void Button1_Click(object sender, EventArgs e)
  {
    con.Open();
    string s = "select * from StudentInfo where MobileNo=@p1 and Password=@p2 ";

    SqlCommand cmd = new SqlCommand(s, con);

    cmd.Parameters.AddWithValue("@p1", txtmno.Text);

    cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
    if (txtmno.Text == "" || (TextBox2.Text == ""))
    {
      Label1.Text = "Invalild Username Or Password.. ";

    }
    else
    {
      SqlDataAdapter da = new SqlDataAdapter(cmd);

      DataTable dt = new DataTable();

      da.Fill(dt);
      con.Close();
      if (dt.Rows.Count > 0)
      {


        Session["Mno"] = txtmno.Text;
        con.Open();
        string s1 = "insert into signininfo values(@p1,@p2)";

        SqlCommand cmd1 = new SqlCommand(s1, con);

        cmd1.Parameters.AddWithValue("@p1", txtmno.Text);

        cmd1.Parameters.AddWithValue("@p2", DateTime.Now);
        cmd1.ExecuteNonQuery();

        con.Close();


        Response.Redirect("Home.aspx");

      }

      else
      {
        txtmno.Text = "";
        Label1.Text = "Invalild Username Or Password.. ";

      }
    }
  }

}
