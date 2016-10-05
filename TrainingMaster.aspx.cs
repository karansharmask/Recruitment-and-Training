using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class TrainingMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_fields()
    {

        TxtFname.Text = "";
        TxtLocation.Text = "";
        TxtTrainDescrip.Text = "";
        TxtTrainHour.Text = "";
        ddl_Faculty_ID.SelectedIndex = 0;
        DDLTrainType.SelectedIndex = 0;

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        string qry = "INSERT into Trainings(Training_Name,Training_Hours,Training_Description,Faculty_ID,Training_Type,Training_Location) VALUES(@name,@hours,@des,"+ddl_Faculty_ID .SelectedValue +","+ DDLTrainType .SelectedValue +",@loc)";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value =TxtFname .Text ; 
        cmd.Parameters.Add("@hours", SqlDbType.VarChar).Value = TxtTrainHour .Text ;
        cmd.Parameters.Add("@des", SqlDbType.VarChar).Value = TxtTrainDescrip .Text ;
        cmd.Parameters.Add("@loc", SqlDbType.VarChar).Value = TxtLocation.Text;

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