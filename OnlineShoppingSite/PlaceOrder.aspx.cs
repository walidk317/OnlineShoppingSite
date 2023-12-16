using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShoppingSite
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;
        
        bool isTrue = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            if (Session["buyitems"] != null && Session["Orderid"] != null)
            {
                DataTable dt = (DataTable)Session["buyitems"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    string pId = dt.Rows[i]["pid"].ToString();
                    int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                    SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product1 where ProductId='" + pId + "' ", con);
                    DataTable dtble = new DataTable();
                    sda.Fill(dtble);
                    int quantity = Convert.ToInt16(dtble.Rows[0][0]);
                    if (quantity > 0)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into OrderDetails (orderid, sno, productid, productname, price, quantity, orderdate, status,email) values('"
                        + Session["Orderid"] + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"]
                        + "," + dt.Rows[i]["pquantity"] + ",'" + DateTime.Now.ToString("dd-MM-yyyy") + "', 'pending', '" + Session["username"].ToString() + "' )", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                decreaseQuantity();
                Payment();
                clearCart();
                Session["buyitems"] = null;
                Response.Redirect("Pdf_generate.aspx");
            }
            else
            {
                Response.Redirect("AddToCart.aspx");

            }
        }


        public void Payment()
        {
            SqlConnection con = new SqlConnection(str);
            if (isTrue == true)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("InsertCardDetailsData", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
                cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text.ToString());
                cmd.Parameters.AddWithValue("@CVV", TextBox5.Text);
                cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);

                cmd.ExecuteNonQuery();
                con.Close();
            }
            Session["address"] = TextBox6.Text;
        }

        public void decreaseQuantity()
        {
            SqlConnection con = new SqlConnection(str);
            DataTable dt = (DataTable)Session["buyitems"];
            for (int i = 0; i < dt.Rows.Count - 1; i++)
            {
                int pId = Convert.ToInt16(dt.Rows[i]["pid"]);
                int pQuantity = Convert.ToInt16(dt.Rows[i]["pquantity"]);
                SqlDataAdapter sda = new SqlDataAdapter("Select Pquantity from Product1 where ProductId='" + pId + "' ", con);
                DataTable dtble = new DataTable();
                sda.Fill(dtble);
                int quantity = Convert.ToInt16(dtble.Rows[0][0]);
                if (quantity > 0)
                {
                    int reducedQuantity = quantity - pQuantity;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update Product1 set Pquantity='" + reducedQuantity + "' where ProductId='" + pId + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    isTrue = true;
                }
                else
                {
                    isTrue = false;
                }
            }
        }
        public void clearCart()
        {
            SqlConnection con = new SqlConnection(str);
            if (Session["username"] != null)
            {
                DataTable dt = (DataTable)Session["buyitems"];
                for(int i = 0; i <= dt.Rows.Count - 1;i++)
                {
                    int pid = Convert.ToInt16(dt.Rows[i]["pid"]);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Delete from CartDetails where ProductId='" + pid + "' and Email='" + Session["username"] + "' ",con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}