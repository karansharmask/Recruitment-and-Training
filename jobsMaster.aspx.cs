using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class jobsMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_fields()
    {
        txt_experience.Text = "";
        txt_no_of_post.Text = "";
        txt_qualification.Text = "";
        txt_range.Text = "";
        TxtJobName.Text = "";
        DDLDesigId.SelectedIndex = 0;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        string qry = "INSERT into Jobs(Job_Name,Designation_ID,Posts,Qualification_Required,Experience_Required,Salary_Range) VALUES(@name," + DDLDesigId.SelectedValue + ",@posts,@qual,@exper,@sal)";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TxtJobName .Text ;
        cmd.Parameters.Add("@posts", SqlDbType.VarChar).Value =txt_no_of_post .Text ;
        cmd.Parameters.Add("@qual", SqlDbType.VarChar).Value =txt_qualification .Text ;
        cmd.Parameters.Add("@exper", SqlDbType.VarChar).Value =txt_experience .Text;
        cmd.Parameters.Add("@sal", SqlDbType.VarChar).Value = txt_range.Text;
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
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        clear_fields();
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