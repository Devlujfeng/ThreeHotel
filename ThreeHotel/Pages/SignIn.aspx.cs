using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;

namespace ThreeHotel
{
    public partial class SignIn : System.Web.UI.Page
    {
        GuestController gc = new GuestController();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["change"] != null)
            {
                lblMsg.Text = "Successfully changed password!";
            }
            else
            {
                lblMsg.Text = "";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Boolean chk;
            string username = txtusername.Text;
            string pwd = txtpwd.Text;

            chk = gc.checkMember(username, pwd);

            if (chk == true)
            {
                Session["Id"] = txtusername.Text;
                Response.Redirect("Home.aspx");
            }

            else
            {
                lblMsg.Text = "Incorrect Membership Number or Password entered. Kindly try again.";
                txtusername.Text = "";
                txtpwd.Text = "";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegistration.aspx");
        }
    }
}