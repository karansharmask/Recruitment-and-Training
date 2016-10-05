using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Validation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void register_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO User_Info(Username,Fname,Lname,EMail,DOB) VALUES(@uname,@fname,@lname,@email,@dob)", con);
        cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = fname.Text;
        cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lname.Text;
        cmd.Parameters.Add("@uname", SqlDbType.VarChar).Value = uname.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email.Text;
       // cmd.Parameters.Add("@dob", SqlDbType.Date).Value = dob .SelectedDate ;
        Response.Redirect("login.aspx");
        cmd.ExecuteNonQuery();
        clear_fields();
        con.Close();
    }
    protected void clear_fields()
    {
        fname.Text = "";
        lname.Text = "";
        uname.Text = "";
        email.Text = "";
        //dob.SelectedDate = DateTime.Today;
    }

    protected void reset_Click(object sender, EventArgs e)
    {
        clear_fields();
    }
}