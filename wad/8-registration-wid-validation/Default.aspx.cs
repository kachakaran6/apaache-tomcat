using System;
using System.Web.UI;

namespace WebApp_8
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Any code on initial load
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text;
                string email = txtEmail.Text;
                string password = txtPassword.Text;

                Response.Write("<h3>Registration Successful!</h3>");
                Response.Write("Name: " + name + "<br/>");
                Response.Write("Email: " + email + "<br/>");
            }
        }
    }
}