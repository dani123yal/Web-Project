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
            if (Session["credential"] == null)
            {
                userDD.Visible = false;
            }
            else
            {
                loginDD.Visible = false;
                dropdown03.InnerText = Session["credential"].ToString();
            }
            if (Request.QueryString["failed"] == null)
            {
                msg.Visible = false;
            }
            else
            {
                msg.Visible = true;
            }
            
        }

        protected void test(object sender, EventArgs e) {
            
        }

        protected void loginCred(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('done')</script>");
            string path = this.Page.Request.FilePath;
            string email = credEmail.Value;
            string pass = credPass.Value;

            string query = "select * from UserAccount where email='" + email + "' and userPassword = " +
                "'" + pass + "'";

            User user = db.checkCred(query);
            if (user == null)
            {
                Response.Redirect(path + "?failed=true");
            }
            else
            {
                Session["credential_ID"] = user.id;
                Session["credential"] = user.username;

                Response.Redirect(path);
            }
            
            
            
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session["credential"] = null;
            Session["credential_ID"] = null;

            string path = this.Page.Request.FilePath;

            Response.Redirect(path);
        }
    }
}