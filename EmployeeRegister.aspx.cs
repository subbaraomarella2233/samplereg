using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EmployeeRegister : System.Web.UI.Page
{
    string cs = ConfigurationManager.ConnectionStrings["connstr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {



        using (SqlConnection con = new SqlConnection(cs))
        {
            //long number=Convert.ToInt64(txtnumber.Text);
            //long aadhar=Convert.ToInt64(txtaadhar.Text);
            //int exp=Convert.ToInt32(txtexpir.Text);
            SqlCommand cmd = new SqlCommand("Emp_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@mail", txtemail.Text);
            cmd.Parameters.AddWithValue("@number", txtnumber.Text);
            cmd.Parameters.AddWithValue("@aadhar", txtaadhar.Text);
            cmd.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd.Parameters.AddWithValue("@blood", txtbloodgroup.Text);
            cmd.Parameters.AddWithValue("@exper", txtexpir.Text);
            cmd.Parameters.AddWithValue("@desig", txtexpir.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();

            if (i == 1)
            {

                Label1.Visible = true;
                Label1.Text = "Your Responce Saved";

            }
            else
            {
                Label1.Visible = true;

                Label1.Text = "Fail";
            }
            con.Close();
        }

    }



    public void BindGrid()
    {
        using (SqlConnection con1 = new SqlConnection(cs))
        {
            //SqlCommand cmd = new SqlCommand("USP_GET_EMPLOYEE_DETAILS",con1);
            //cmd.CommandType = CommandType.StoredProcedure;
            //con1.Open();
            SqlDataAdapter da = new SqlDataAdapter("USP_GET_EMPLOYEE_DETAILS", con1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds != null)
            {
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds.Tables[0];
                        GridView1.DataBind();
                    }
                }
            }

            //con1.Close();

        }
    }
}