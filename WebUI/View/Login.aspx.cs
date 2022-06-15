using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebUI.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if( txtEmail.Text == "Iyappa2" && txtPassword.Text == "@#")
            {
                Response.Redirect("Admin/Dashboard.aspx");

            }
            else
            {
                eerr.Text = "Invaild UserName or Password";
            }
                
        }
    }
}