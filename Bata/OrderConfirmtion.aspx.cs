using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bata
{
    public partial class OrderConfirmtion : System.Web.UI.Page
    {
        public string id="";
        public string total="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != null) {
                string id = Request.QueryString["id"].ToString();
                string total = Request.QueryString["total"].ToString();
                ordId.InnerText += id;
                ttl.InnerText += total;
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }
    }
}