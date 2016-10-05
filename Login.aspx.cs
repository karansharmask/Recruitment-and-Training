using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == "")
        {

        }
        else
        {
            Response.Redirect("IndexChild.aspx");
        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        qry = "SELECT Username,Password,Fname,Lname FROM User_Info WHERE Username='" + Username.Text + "'";
        con.Open ();
        SqlCommand cmd = new SqlCommand (qry, con);
        SqlDataReader dr = cmd.ExecuteReader ();

        if (dr.Read()==true)
        {
            if (dr.GetValue(1).ToString() == Password.Text)
            {
                Session["Username"] = Username .Text ;
                Session["name"] = dr.GetValue(2).ToString();
                Session["name"] = Session["name"] + " " + dr.GetValue(3).ToString();
                Response.Redirect("IndexChild.aspx");
            }
            else
            {
                lblMsg.Text = "Password Incorrect.";
                lblMsg.ForeColor = System.Drawing.Color.White;
            }
        }
        else
        {
            lblMsg.Text="Username Incorrect.";
            lblMsg.ForeColor= System.Drawing.Color.White;
        }
        dr.Close ();
        con.Close();

    }

    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
}