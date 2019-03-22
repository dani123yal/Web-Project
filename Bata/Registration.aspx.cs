using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bata.Models;

namespace Bata
{
    public partial class Registration : System.Web.UI.Page
    {
        DataHandler db = new DataHandler();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["msg"]))
            {
                // show the message
                message.Visible = true;
                message.InnerText = "successfully registered";
            }

        }

        protected void Register(object sender, EventArgs e)
        {
            string username = uName.Value;
            string em = email.Value;
            string password = pass.Value;
            string contact = phone.Value;

            string query = "insert into UserAccount (username,userPassword,email,phoneNo) " +
                "values('"+username+ "','" + password + "','" + em + "','" + contact + "')";

            db.iud(query);

            Response.Redirect("Registration.aspx?msg=true");
        }
    }
}