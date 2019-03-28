using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bata.Models;

namespace Bata
{
    public partial class History : System.Web.UI.Page
    {
        public DataHandler db = new DataHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["credential_ID"] == null)
            {
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                string id = Session["credential_ID"].ToString();
                history.DataSource = db.getHistory(id);
                history.DataBind();
            }
        }
    }
}