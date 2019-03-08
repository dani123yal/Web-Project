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
        DataHandler db = new DataHandler();
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
                    string query = "select * from Products where pId = " + id.ToString();
                    prod.DataSource = db.getData(query);
                    prod.DataBind();
                }
            }  
        }


        protected void addToCart(Object sender, EventArgs args)
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            List<Product> pr = new List<Product>();
            Product product = new Product();
            
            string query = "select * from Products where pId = " + id;
            DataTable dt = new DataTable();
            dt = db.getData(query);


            foreach (DataRow dr in dt.Rows)
            {
                product.productName = dr["pName"].ToString();
                product.imagePath = dr["pImage"].ToString();
                product.price = dr["pPrice"].ToString();  
            }
            

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