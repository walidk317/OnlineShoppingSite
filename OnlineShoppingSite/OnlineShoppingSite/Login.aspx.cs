using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingSite
{
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    Response.Write("Default.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from register where email='" + TextBox1.Text +
                "' and password= '" + TextBox2.Text + "'", str);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (TextBox1.Text == "Admin" && TextBox2.Text == "123")
            {
                Session["admin"] = TextBox1.Text;

                Response.Redirect("Admin.aspx");
                //Label1.Text = "Admin Login Successfull!";
                //Label1.ForeColor = System.Drawing.Color.Green;
                //LinkButton1.Visible = false;
                //HyperLink1.Visible = true;         
            }
            else if (dt.Rows.Count == 1)
            {
                Session["username"] = TextBox1.Text;
                Session["buyitems"] = null;
                fillSavedCart();
                Response.Redirect("Default.aspx");
                //LinkButton1.Visible = true;
                //HyperLink1.Visible = false;
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Login Failed...";
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
        private void fillSavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("pid");
            dt.Columns.Add("pname");
            dt.Columns.Add("pimage");
            dt.Columns.Add("pdesc");
            dt.Columns.Add("pprice");
            dt.Columns.Add("pquantity");
            dt.Columns.Add("pcategory");
            dt.Columns.Add("ptotalprice");

            String mycon = str;
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from CartDetails where Email='" + Session["username"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet(); 
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["pid"] = ds.Tables[0].Rows[i]["ProductId"].ToString();
                    dr["pname"] = ds.Tables[0].Rows[i]["Pname"].ToString();
                    dr["pimage"] = ds.Tables[0].Rows[i]["Pimage"].ToString();
                    dr["pdesc"] = ds.Tables[0].Rows[0]["Pdesc"].ToString();
                    dr["pprice"] = ds.Tables[0].Rows[i]["Pprice"].ToString();
                    dr["pquantity"] = ds.Tables[0].Rows[i]["Pquantity"].ToString();
                    dr["pcategory"] = ds.Tables[0].Rows[0]["Pcategory"].ToString();
                    int price = Convert.ToInt32(ds.Tables[0].Rows[i]["pprice"].ToString());
                    int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["pquantity"].ToString());
                    int totalprice = price * quantity;
                    dr["ptotalprice"] = totalprice;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }
            }
            else
            {
                Session["buyitems"] = null;

            }
            Session["buyitems"] = dt;
        }
    }
}
