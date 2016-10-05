using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class ApplicantsMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_fields()
    {
        TxtAppName.Text = "";
        TxtAppAdd.Text = "";
        TxtAppCity.Text = "";
        dob.SelectedDate = DateTime .Today ;
        TxtAppStatus.Text = "";
        TxtSSCResult.Text = "";
        TxtHSCResult.Text = "";
        TxtAddDetail.Text="";  
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        clear_fields();
    }
   
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry="INSERT into Applicant_Details(Applicant_Name,Address,City,DOB,Maritial_Status,SSC_Result,HSC_Result,Additional_Details) VALUES(@name,@addr,@city,@dob,@maritial,@ssc,@hsc,@add_det)";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters .Add ("@name",SqlDbType.VarChar).Value=TxtAppName .Text ;
        cmd.Parameters.Add("@addr", SqlDbType.VarChar).Value = TxtAppAdd .Text ;
        cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = TxtAppCity .Text ;
        cmd.Parameters.Add("@dob", SqlDbType.Date).Value = dob.SelectedDate ;
        cmd.Parameters.Add("@maritial", SqlDbType.VarChar).Value = TxtAppStatus .Text;
        cmd.Parameters.Add("@ssc", SqlDbType.VarChar).Value = TxtSSCResult .Text;
        cmd.Parameters.Add("@hsc", SqlDbType.VarChar).Value = TxtHSCResult .Text;
        cmd.Parameters.Add("@add_det", SqlDbType.VarChar).Value = TxtAddDetail .Text;
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
    protected void grd_data_SelectedIndexChanged(object sender, EventArgs e)
    {
        pnl_form.Visible = true;
        pnl_data_view.Visible = false;

        TxtAppName.Text = grd_data.SelectedRow.Cells[1].Text;
        TxtAppAdd.Text = grd_data.SelectedRow.Cells[2].Text;
        TxtAppCity.Text = grd_data.SelectedRow.Cells[3].Text;
        dob.SelectedDate  = Convert.ToDateTime (grd_data.SelectedRow.Cells[4].Text).Date ;
        TxtAppStatus.Text = grd_data.SelectedRow.Cells[5].Text;
        TxtSSCResult.Text = grd_data.SelectedRow.Cells[6].Text;
        TxtHSCResult.Text = grd_data.SelectedRow.Cells[7].Text;
        TxtAddDetail.Text = grd_data.SelectedRow.Cells[8].Text;
       
        btn_submit.Text = "Update";
       // btnDelete.Visible = true;

    }
}