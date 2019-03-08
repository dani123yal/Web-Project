using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Bata.Models;

namespace Bata
{
    public partial class productDetail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=Rough;User ID=sa;Password=12345");
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    Response.Redirect("ShoesForm.aspx");
                }
                else
                {
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());


                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select * from Products where pId = " + id;
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    prod.DataSource = dt;
                    prod.DataBind();
                    con.Close();
                }
            }  
        }


        protected void addToCart(Object sender, EventArgs args)
        {
            Response.Write("alert('done');");
            //Response.Redirect("ShoesForm.aspx");
            List<Product> pr = new List<Product>();
            Product product = new Product();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Products where pId = " + id;
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);


            foreach (DataRow dr in dt.Rows)
            {
                product.productName = dr["pName"].ToString();
                product.imagePath = dr["pImage"].ToString();
                product.price = dr["pPrice"].ToString();  
            }

            con.Close();

            

            if(Session["cart"] == null)
            {
                pr.Add(product);
                Session["cart"] = pr;
            }
            else
            {
                List<Product> newPr = (List<Product>)Session["cart"];
                newPr.Add(product);

                Session["cart"] = newPr;
            }

            //Response.Redirect();
        }

    }
}