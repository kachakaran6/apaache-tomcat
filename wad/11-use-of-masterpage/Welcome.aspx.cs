using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_11
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                lblWelcome.Text = "Welcome, " + Session["User"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

    }
}