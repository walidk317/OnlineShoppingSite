using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingSite
{
    public partial class ContactUs : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.CausesValidation = false;
            LinkButton2.CausesValidation = false;
            Button2.CausesValidation = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                Response.Redirect("https://mail.google.com/mail/u/0/#inbox?compose=new");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

                
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                Response.Redirect("ContactUs.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;

           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                using (SqlConnection con = new SqlConnection(str))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("insertcontactdetails", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Emailid", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@Phoneno", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@issue", TextBox5.Text);

                        if (FileUpload1.HasFile)
                        {
                            string filename = FileUpload1.PostedFile.FileName;
                            string filepath = "ContactImages/" + filename;
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/ContactImages/") + filename);
                            cmd.Parameters.AddWithValue("@fileupload", filepath);
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@fileupload", DBNull.Value);
                        }
                        ValidationSummary1.Visible = true;
                        cmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Your Query Has Been Accepted Successfully! We will get back to you...')</script>");
                        Response.Redirect("Default.aspx");
                    }
                }

            }
            else
            {
                Response.Redirect("Login.aspx");

            }
        }
    }
}








