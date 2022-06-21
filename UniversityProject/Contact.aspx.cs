using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace UniversityProject
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            SqlCommand cmd = new SqlCommand("sp_insert", sql);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@email", emailtxt.Text);
            cmd.Parameters.AddWithValue("@subject", Subjecttxt.Text);
            cmd.Parameters.AddWithValue("@contact", Contacttxt.Text);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Good job!', 'Form Submitted Sucessfully!', 'success');", true);
                clearData();

                
            }
            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Invalid!', 'error');", true);
            }

            sql.Close();

        }
        public void clearData()
        {
            nametxt.Text = "";
            emailtxt.Text = "";
            Contacttxt.Text = "";
            Subjecttxt.Text = "";

        }

    }
}