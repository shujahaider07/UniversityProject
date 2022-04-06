using System;

namespace UniversityProject.Dashboard
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Label1.Text = "Welcome " + Session["user"].ToString();
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("~/Login.aspx");
            }


        }

      
    }
}