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
    public partial class UserProductList : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;
        
        string emailId = "";
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

        protected void AllOrder_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            if (Session["username"] != null)
            {
                emailId = Session["username"].ToString();
                SqlDataAdapter sda = new SqlDataAdapter("select odr.orderid as OrderId,odr.productname as ProductName,pdt.Pimage as Image,odr.price as Price,odr.quantity as Quantity, odr.orderdate as OrderedDate, odr.status as Status from OrderDetails odr inner join Product1 pdt on pdt.ProductId = odr.productid where email='" + emailId + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    string status = dt.Rows[i][6].ToString();
                    if (status == "pending" || status == "Pending")
                    {
                        dt.Rows[i][6] = "Dispatched";
                    }
                    else
                    {
                        dt.Rows[i][6] = "Delivered";
                    }
                    status = "";
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
                TextBox1.Text = string.Empty;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                SqlConnection con = new SqlConnection(str);
                emailId = Session["username"].ToString();
                SqlDataAdapter sda = new SqlDataAdapter("select odr.orderid as OrderId,odr.productname as ProductName,pdt.Pimage as Image,odr.price as Price,odr.quantity as Quantity, odr.orderdate as OrderedDate, odr.status as Status from OrderDetails odr inner join Product1 pdt on pdt.Productid = odr.productid where odr.email='" + emailId + "' and odr.orderid like '" + TextBox1.Text + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    string status = dt.Rows[0][6].ToString();
                    if (status == "pending" || status == "Pending")
                    {
                        dt.Rows[0][6] = "Dispatched";
                    }
                    else
                    {
                        dt.Rows[0][6] = "Delivered";
                    }
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                    Response.Write("<script>alert('Plz enter Valid Orderf Id')</script>");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[7].Text == "Delivered")
                {
                    e.Row.Cells[7].ForeColor = System.Drawing.Color.White;
                    e.Row.Cells[7].BackColor = System.Drawing.Color.Green;
                }
                else
                {
                    e.Row.Cells[7].ForeColor = System.Drawing.Color.White;
                    e.Row.Cells[7].BackColor = System.Drawing.Color.Red;
                }
            }
            e.Row.Cells[5].HorizontalAlign = HorizontalAlign.Center;
            e.Row.Cells[3].Visible = false;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "ViewPDF")
            {
                Session["OrderId"] = e.CommandName.ToString();
                Response.Redirect("Pdf_generate.aspx");
            }
        }
    }
}