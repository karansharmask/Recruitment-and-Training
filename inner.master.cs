using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inner : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["username"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
                lbl_user_name.Text = "Welcome Guest ";
            }
            else
            {
                lbl_user_name.Text ="Welcome," + Session["name"].ToString();
            }
           }
}
