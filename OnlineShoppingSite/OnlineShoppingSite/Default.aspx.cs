using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineShoppingSite
{
    public partial class Default : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";

            //Login Session
            if (Session["username"]!=null)
            {
                Label4.Text = "Logged in as " + Session["username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label4.Text = "Hello You Can Login Here...";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
            if(!IsPostBack)
            {
                Drp_ProductCategory();
            }
        }


        //logout button
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            Label4.Text = "You Have Logged Out Successfully...";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where (Pname like '%"+TextBox1.Text+ "%') or (ProductID like '%"+TextBox1.Text+"%')", str);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if(e.CommandName =="AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }




        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label productID = e.Item.FindControl("Label6") as Label;
            Label stock = e.Item.FindControl("Label5") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;

            if (productID != null && stock != null && btn != null)
            {
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where ProductId= '" + productID.Text + "' ", str);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                string stockdata = "";

                if (dt.Rows.Count > 0)
                {
                    stockdata = dt.Rows[0]["Pquantity"].ToString();
                }

                if (stockdata == "0")
                {
                    stock.Text = "Out of Stock";
                    btn.Enabled = false;
                    btn.ImageUrl = "Images/soldout.png";
                }
                else
                {
                    stock.Text = stockdata;
                }
            }
        }


        public void Drp_ProductCategory()
        {
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Category1", con);
            ProductCategories.DataSource = cmd.ExecuteReader();
            ProductCategories.DataTextField = "CategoryName";
            ProductCategories.DataValueField = "CategoryID";
            ProductCategories.DataBind();
            ProductCategories.Items.Insert(0, "Product Category");
            con.Close();
        }


        protected void ProductCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strQuery = "";
            string selectedProduct = ProductCategories.SelectedItem.Text;
            if(selectedProduct == "Product Category")
            {
                strQuery = "";
            }
            else
            {
                strQuery = "Where Pcategory = '" + selectedProduct + "' ";
            }
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 " + strQuery + " ", str);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            try
            {
                if(selectedProduct == dt.Rows[0][6].ToString())
                {

                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('No product found')</script>");
            }
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}