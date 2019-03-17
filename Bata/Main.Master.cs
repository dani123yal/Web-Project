using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bata.Models;

namespace Bata
{
    public partial class Main : System.Web.UI.MasterPage
    {
        DataHandler db = new DataHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["credentials"] == null)
            {

            }
        }

        protected void loginCred(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('done')</script>");
            string email = credEmail.Value;
            string pass = credPass.Value;

            string query = "select * from UserAccount where email='" + email + "' and userPassword = " +
                "'" + pass + "'";

            User user = db.checkCred(query);
            if (user == null)
            {
                Response.Write("<script>alert('user is invalid')</script>");
            }
            else
            {
                Session["credential_ID"] = user.id;
                Session["credential"] = user.username;
            }


            string path = this.Page.Request.FilePath;

            Response.Redirect(path);
        }
    }
}