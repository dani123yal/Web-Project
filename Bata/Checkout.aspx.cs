using Bata.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bata
{
    public partial class Checkout : System.Web.UI.Page
    {
        List<Product> pr;
        DataHandler dt = new DataHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] == null)
            {
               // error.InnerText = "Cart is Empty";
            }
            else
            {
                pr = (List<Product>)Session["cart"];

                cart.DataSource = pr;
                cart.DataBind();
                //pr.RemoveAt(ind);
            }

            Text1.Value = (string)Session["credential"];
            Text1.Disabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String userID = Session["credential_ID"].ToString();
            String ordAddress = Text2.Value;
            DateTime ordDate = DateTime.Now;
            string sqlFormattedDate = ordDate.ToString("yyyy-MM-dd HH:mm:ss.fff");
            String ordStatus = "Pending";
            float total = 0;
            
            foreach(Product p in (List<Product>)Session["cart"])
            {
                
                 total +=float.Parse(p.price);
               // Response.Write("<script>alert('"+p.price+"')</script>");
            }

            String totalString = total.ToString();


            dt.iud("insert into orders(userid,ordaddress,orddate,ordstatus,total) values(" + userID + ",'" + ordAddress + "','" + sqlFormattedDate + "','" + ordStatus + "'," + totalString + ")");

            String ordID = dt.getData("SELECT TOP 1 ordid FROM orders ORDER BY ordid DESC").Rows[0][0].ToString();

           foreach(Product p in (List<Product>)Session["cart"])
            {
                dt.iud("insert into orderdetail(ordid,shoeid,quantity,size) values("+ordID.ToString()+","+p.id.ToString()+",1,10)");
            }
            Response.Redirect("OrderConfirmtion.aspx");
        }
    }
}