using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace OnlineShoppingSite
{
    public partial class UserProductStatus : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;
        
        public int val;

        public void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Status();
                DataBind(); //To Bind the Marquee repeatation value
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Status()
        {
            SqlConnection con = new SqlConnection(str);
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                string status = "";
                string orderId = "";
                String userid = Session["username"].ToString();

                //check and display the last Ordered details of user

                SqlDataAdapter sda = new SqlDataAdapter("Select * from OrderDetails inner join (Select max(orderdate) as LatestDate, email as userid from OrderDetails Group by email) SubMax on OrderDetails.orderdate = SubMax.LatestDate and OrderDetails.email = SubMax.userid where email = '" + userid + "' ", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count == 1)
                {
                    orderId = dt.Rows[0][0].ToString();
                    status = dt.Rows[0][7].ToString();
                    Label1.Text = orderId;
                    val = 25;
                    //for checking whether the user having 2 or more Orders of a product
                    //starts here..
                    SqlDataAdapter sda1 = new SqlDataAdapter("Select * from OrderDetails where email='" + userid + "' ", con);
                    DataTable dt1 = new DataTable();
                    sda1.Fill(dt1);
                    if (dt1.Rows.Count > 1)
                    {
                        HyperLink1.Visible = true;
                    }
                    else
                    {
                        HyperLink1.Visible = true;
                    }
                    //ends here...
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
                if (status == "Complete")
                {
                    val =0;
                    Page.Header.Controls.Add(new System.Web.UI.LiteralControl("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + ResolveUrl("~/CSS/StatusStyle.css") + "\" />"));
                }
            }
        }
    }
}
