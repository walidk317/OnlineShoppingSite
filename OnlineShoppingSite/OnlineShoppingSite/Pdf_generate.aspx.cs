using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace OnlineShoppingSite
{
    public partial class Pdf_generate : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["RecordDBConnectionString"].ConnectionString;

        string Address = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
            }
            if (Session["Orderid"] == null)
            {
                Response.Redirect("AddToCart.aspx");
            }
            string Orderid = Session["Orderid"].ToString();
            Label1.Text = Orderid;
            findorderdate(Label2.Text);
            FindOrderAddress(Address);
            //string Address = Address;
            Label3.Text = Address;
            showgrid(Label1.Text);

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            // base.VerifyRenderingInServerForm(control);
        }

        [Obsolete]
        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }

        [Obsolete]
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }

        private void findorderdate(string Orderid)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select * from OrderDetails where orderid='" + Label1.Text + "'");
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label2.Text = ds.Tables[0].Rows[0]["Orderdate"].ToString();
            }
            con.Close();
        }

        private void FindOrderAddress(string Addr)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Record where Email ='" + Session["username"] +"' ", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Address = ds.Tables[0].Rows[0]["Address"].ToString();
            }
        }

        private void showgrid(string orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            SqlConnection scon = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("select * from OrderDetails where orderid='" + Label1.Text + "'");
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["productid"] = ds.Tables[0].Rows[i]["productid"].ToString();
                dr["productname"] = ds.Tables[0].Rows[i]["productname"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                int price = Convert.ToInt32(ds.Tables[0].Rows[i]["quantity"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Label4.Text = grandtotal.ToString();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}