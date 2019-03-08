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
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=Rough;User ID=sa;Password=12345");
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Product> pr = (List<Product>)Session["cart"];
            cart.DataSource = pr;
            cart.DataBind();
            
        }
    }
}