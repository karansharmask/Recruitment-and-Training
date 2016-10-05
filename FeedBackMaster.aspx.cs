using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedBackMaster : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {

        if (Session["Username"].Equals(""))
        {
            Page.MasterPageFile = "~/RTMaster.master";
        }
        else
        {
            Page.MasterPageFile = "~/inner.master";
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
}