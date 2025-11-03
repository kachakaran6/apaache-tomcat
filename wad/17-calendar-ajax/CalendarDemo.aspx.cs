using System;
using System.Web.UI;

namespace WebApplication16
{
    public partial class CalendarDemo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No special initialization needed
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDate.Text))
            {
                lblResult.Text = "You selected: " + txtDate.Text;
            }
            else
            {
                lblResult.Text = "Please select a date!";
            }
        }
    }
}