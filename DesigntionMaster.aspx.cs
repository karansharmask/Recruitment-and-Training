using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class DesigntionMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_fields()
    {
        
        TxtDesigName.Text = "";
       
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        clear_fields();
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        string qry = "INSERT into Designations(Designation_Name,Department_ID) VALUES(@name,"+ddl_dept_id .SelectedValue +")";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TxtDesigName .Text;

        if (cmd.ExecuteNonQuery() < 1)
        {
            lbl_msg.Text = "Insertion Failed.";
        }
        else
        {
            lbl_msg.Text = "Record Inserted.";
            clear_fields();
        }
        con.Close();

    }
    protected void view_Click(object sender, EventArgs e)
    {
        if (btn_view.Text == "Show Data")
        {
            pnl_data_view.Visible = true;
            pnl_form.Visible = false;
            btn_view.Text = "Show Form";
        }
        else
        {
            pnl_data_view.Visible = false;
            pnl_form.Visible = true;
            btn_view.Text = "Show Data";
        }
    }
}