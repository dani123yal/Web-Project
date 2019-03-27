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

            //string path = this.Page.Request.Url.ToString();
            //int i = path.LastIndexOf('?');
            //if (i > 0)
            //{
            //    string newPath = path.Remove(i);
            //    Response.Write("<script>alert('"+newPath+"')</script>");
            //}
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
                if (Request.QueryString["cat"] != null)
                {
                    path += "?cat=" + Request.QueryString["cat"];
                    Response.Redirect(path + "&failed=true");
                }
                else
                {
                    Response.Redirect(path + "?failed=true");
                }
                
            }
            else
            {
                Session["credential_ID"] = user.id;
                Session["credential"] = user.username;

                if (Request.QueryString["cat"] != null)
                {
                    path += "?cat=" + Request.QueryString["cat"];
                    Response.Redirect(path);
                }
                else
                {
                    Response.Redirect(path);
                }
                
            }
            
            
            
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session["credential"] = null;
            Session["credential_ID"] = null;

            string path = this.Page.Request.Url.ToString();

            Response.Redirect(path);
        }


        protected void searchProduct(object sender, EventArgs e)
        {
            string toFind = search.Value;

            Response.Redirect("ShoesForm.aspx?search="+toFind);

        }
    }
}