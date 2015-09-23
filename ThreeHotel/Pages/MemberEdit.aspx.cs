using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;

namespace ThreeHotel.Pages
{
    public partial class MemberEdit : System.Web.UI.Page
    {
        GuestController guestController;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] == null)
                {
                    Response.Redirect("SignIn.aspx");
                }
                else
                {
                    Guest guest = new Guest();
                    guestController = new GuestController();
                    guest = guestController.getByMemberId(Session["Id"].ToString());

                    lblMemberID.Text = guest.GuestId.ToString().Trim();
                    ddlSalutation.Items[0].Text = guest.Salutation;
                    ddlSalutation.SelectedValue = guest.Salutation.ToString().Trim();
                    txtFamilyName.Text = guest.FamilyName.ToString().Trim();
                    txtFirstName.Text = guest.FirstName.ToString().Trim();
                    txtEmail.Text = guest.Email.ToString().Trim();
                    txtAddress.Text = guest.Address.ToString().Trim();
                    txtPhoneNo.Text = guest.PhoneNo.ToString().Trim();

                    ddlCountry.SelectedValue = guest.Country.ToString().Trim();
                    
                }
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            Guest guest = new Guest();
            guestController = new GuestController();

            string id = "", salu = "", familyname = "", fname = "", email = "", address = "", ph = "", country = "";

            if (Session["Id"].ToString() != null)
            {
                 id = Session["Id"].ToString();
            }

            if (ddlSalutation.SelectedValue != string.Empty)
            {
                 salu = ddlSalutation.SelectedValue;
            }
            if(txtFamilyName.Text != string.Empty)
            {
                 familyname = txtFamilyName.Text;
            }
            
            if(txtFamilyName.Text != string.Empty)
            {
                 fname = txtFirstName.Text;
            }
            
            if(txtEmail.Text != string.Empty)
            {
                 email = txtEmail.Text;
            }
            
            if(txtAddress.Text != string.Empty)
            {
                 address = txtAddress.Text;
            }
            
            if(txtPhoneNo.Text != string.Empty)
            {
                 ph = txtPhoneNo.Text;
            }
            
            if(ddlCountry.SelectedValue != string.Empty)
            {
                 country = ddlCountry.SelectedValue;
            }
            
            guestController.MemberUpdate(id, salu, familyname, fname, email, address, ph, country);
            lblMsg.Text = "Successfully saved changes!";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberProfile.aspx");
        }
    }
}