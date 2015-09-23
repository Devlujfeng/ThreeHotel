using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;

namespace ThreeHotel
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                LinkButton2.Text = "SignOut";

                //get member name to display on Welcome
                Guest guest = new Guest();
                GuestController guestController = new GuestController();
                guest = guestController.getByMemberId(Session["Id"].ToString());
                string name = guest.Salutation + guest.FirstName + guest.FamilyName;
                lblWelcome.Text = "Welcome, " + name;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (LinkButton2.Text == "Sign In")
            {
                Response.Redirect("SignIn.aspx");
            }
            else
            {
                Session.Remove("Id");
                Response.Redirect("Home.aspx");
            }
        }

        protected void imgLogo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}