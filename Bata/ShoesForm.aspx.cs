using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Bata
{
    public partial class ShoesForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=Rough;User ID=sa;Password=12345");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Products";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            datalist.DataSource = dt;
            datalist.DataBind();
            con.Close();
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