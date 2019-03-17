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
    public partial class ShoesForm : System.Web.UI.Page
    {
        DataHandler db = new DataHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "select * from Shoes";
            datalist.DataSource = db.getData(query);
            datalist.DataBind();
        }

        protected void datalist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "productDetail")
            {
                Response.Redirect("productDetail.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}