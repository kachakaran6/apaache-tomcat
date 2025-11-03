using System;
using System.Data;
using System.Xml;

namespace WebApplication17
{
    public partial class Default : System.Web.UI.Page
    {
        // Update path according to your XML location
        string path = @"D:\student.xml";

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(path); // Load existing XML

            // Create new Student element
            XmlElement student = doc.CreateElement("Student");

            XmlElement name = doc.CreateElement("Name");
            name.InnerText = txtName.Text;

            XmlElement age = doc.CreateElement("Age");
            age.InnerText = txtAge.Text;

            student.AppendChild(name);
            student.AppendChild(age);

            doc.DocumentElement.AppendChild(student); // Append to root
            doc.Save(path); // Save XML

            lblOutput.Text = "Data written successfully!";
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(path); // Load XML into DataSet

            lblOutput.Text = "Students:<br/>";
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                lblOutput.Text += row["Name"] + " - " + row["Age"] + "<br/>";
            }
        }
    }
}