using System;
using System.Configuration;
using System.Data.SqlClient;

namespace UniversityProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usertxt.Focus();
        }
        String cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Buttontxt_Click(object sender, EventArgs e)
        {
            SqlConnection sql = new SqlConnection(cs);
            sql.Open();
            string qry = "select * from login where name = @name and password = @pass";
            SqlCommand cmd = new SqlCommand(qry, sql);
            cmd.Parameters.AddWithValue("@name", Usertxt.Text);
            cmd.Parameters.AddWithValue("@pass", passwordtxt.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = Usertxt.Text;
                if (Session["user"] != null)
                {

                    this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Good job!', 'Login Sucessfully!', 'success');", true);
                 
                    Response.Redirect("Dashboard/dashboard.aspx");

                }



            }

            else
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "SweetAlert", "swal('Oops!', 'Invalid Password!', 'error');", true);
            }

            sql.Close();

        }
    }
}


