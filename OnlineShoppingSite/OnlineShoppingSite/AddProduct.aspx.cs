using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace OnlineShoppingSite
{
    public partial class AddProduct : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            if(FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "Images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + filename);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Product1 values" +
                    "('"+TextBox1.Text+"', '"+TextBox2.Text+"', '"+TextBox3.Text+"', '"+ filepath + "', '"+TextBox4.Text+"')",con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Default.aspx");
            }
        }
    }
}