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
            string category = "";
            string query="";
            if(Request.QueryString["search"] != null)
            {
                //filterDiv.Visible = false;
                query = "select * from Shoes where shoeName like('%" + Request.QueryString["search"] + "%') or shoeType like('%" + Request.QueryString["search"] + "%')";
            }
            else
            {
                if (Request.QueryString["cat"] == "men")
                {
                    category = "Men";
                }
                else if (Request.QueryString["cat"] == "women")
                {
                    category = "Women";
                }
                else if (Request.QueryString["cat"] == "kids")
                {
                    category = "Kids";
                }
                query = "select * from Shoes where shoeCategory = '" + category + "'";
            }
            
            
            datalist.DataSource = db.getData(query);
            datalist.DataBind();

            string filterQuery = "select distinct(shoeType) from Shoes where shoeCategory = '" + category+"'";

            //filterr.DataSource = db.getData(filterQuery); ;
            //filterr.DataBind();


        }

        protected void datalist_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "productDetail")
            {
                Response.Redirect("productDetail.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void filterCheck(object sender, EventArgs e)
        {
            Response.Write("<script>alert('done')</script>");
        }

        protected void Unnamed_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("123");   
        }
    }
}