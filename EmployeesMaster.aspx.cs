using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class EmployeesMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\RT.mdf;Integrated Security=True;User Instance=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clear_fields()
    {

        txt_address.Text = "";
        txt_city.Text = "";
        txt_cont_no.Text = "";
        txt_email_id.Text = "";
        txt_emp_name.Text = "";
        dob.SelectedDate = DateTime.Today;
        ddl_dept.SelectedIndex = 0;
        ddl_type.SelectedIndex = 0;
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string qry = "INSERT into Employees(Employee_Name,Department_ID,Type_ID,DOB,Contact_No,Email_ID,Address,City) VALUES(@name,"+ ddl_dept .SelectedValue +","+ ddl_type .SelectedValue +",@dob,@cont,@email,@addr,@city)";
        con.Open();
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = txt_emp_name .Text ;
        cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = dob.SelectedDate;
        cmd.Parameters.Add("@cont", SqlDbType.VarChar).Value = txt_cont_no .Text ;
        cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = txt_email_id .Text ;
        cmd.Parameters.Add("@addr", SqlDbType.VarChar).Value = txt_address .Text ;
        cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = txt_city.Text;
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
    protected void btn_reset_Click(object sender, EventArgs e)
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