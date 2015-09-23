using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;

namespace ThreeHotel.Pages
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        GuestController gc = new GuestController();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Boolean chk;
            string username = txtusername.Text;
            string curpwd = txtcurpwd.Text;
            string newpwd = txtnewpwd.Text;
            string confirmpwd = txtconfirmpwd.Text;

            chk = gc.checkMember(username, curpwd) && newpwd==confirmpwd;

            if (chk)
            {
                gc.MemberChangePwd(username, newpwd);

                Response.Redirect("SignIn.aspx?change=success");
            }

            else
            {
                lblMsg.Text = "Incorrect Membership Number or Password entered. Kindly try again.";

            }
        }
    }
}