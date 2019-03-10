using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Bata.Models;
using System.Web.Services;

namespace Bata
{
    public partial class Cart : System.Web.UI.Page
    {
        List<Product> pr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
                error.InnerText = "Cart is Empty";
            }
            else
            {
                pr = (List<Product>)Session["cart"];

                cart.DataSource = pr;
                cart.DataBind();
                //pr.RemoveAt(ind);
            }
        }


        protected void delete(object sender, EventArgs e) {
            //pr = (List<Product>)Session["cart"];
            RepeaterItem item = (sender as LinkButton).NamingContainer as RepeaterItem;

            int pid = Convert.ToInt32((item.FindControl("id") as Label).Text);

            Product delItem = pr.Where<Product>(x=>x.id==pid).First<Product>();
            pr.Remove(delItem);

            //foreach (Product p in pr)
            //{
            //    error.InnerText += "id: " + delItem.id + " name: " + delItem.productName;
            //}
            Session["cart"] = pr;

            Response.Redirect("Cart.aspx");

        }
    }
}