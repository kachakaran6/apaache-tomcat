using System;
using System.Text;
using System.Xml.Linq;

namespace WebApplication4
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No code needed here now
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("<b>Name:</b> " + txtName.Text + "<br/>");
            sb.Append("<b>Date of Birth:</b> " + txtDOB.Text + "<br/>");
            sb.Append("<b>Gender:</b> " + rblGender.SelectedValue + "<br/>");
            sb.Append("<b>Email:</b> " + txtEmail.Text + "<br/>");
            sb.Append("<b>Contact No:</b> " + txtContact.Text + "<br/>");
            sb.Append("<b>Address:</b> " + txtAddress.Text + "<br/>");
            sb.Append("<b>City:</b> " + txtCity.Text + "<br/>");
            sb.Append("<b>Pin Code:</b> " + txtPin.Text + "<br/>");

            // Get selected hobbies
            sb.Append("<b>Hobbies:</b> ");
            foreach (var item in cblHobbies.Items)
            {
                var listItem = (System.Web.UI.WebControls.ListItem)item;
                if (listItem.Selected)
                {
                    sb.Append(listItem.Text + " ");
                }
            }

            lblResult.Text = sb.ToString();
            pnlResult.Visible = true;
        }
    }
}