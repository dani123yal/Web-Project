using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bata.Models;

namespace Bata
{
    public partial class cartMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                List<Product> pr = (List<Product>)Session["cart"];
                items.InnerText = pr.Count().ToString();
                items.Attributes["data-count"] = pr.Count().ToString();
            }
        }
    }
}