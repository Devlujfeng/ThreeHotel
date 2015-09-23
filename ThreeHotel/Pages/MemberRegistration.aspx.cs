using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using System.Net;
using System.Net.Mail;

namespace ThreeHotel
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            GuestController guestController = new GuestController();

            string salut = ddlSalutation.SelectedItem.Text;
            string familyName = txtFamilyName.Text;
            string fName = txtFirstName.Text;
            string password = txtPassword.Text;
            string conpwd = txtCPassword.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            string ph = txtPhoneNo.Text;
            string country = ddlCountry.SelectedItem.Text;

            string id = guestController.MemberSave(salut, familyName, fName, password, email, address, ph, country);
            string full = fName + " " + familyName;
            
            Session["fullName"] = full;
            Session["Id"] = id;
            
            Response.Redirect("MemberProfile.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
}