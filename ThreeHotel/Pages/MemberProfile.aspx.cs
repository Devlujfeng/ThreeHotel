using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using BusinessLogic;

namespace ThreeHotel.Pages
{
    public partial class MemberProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
    {
            if (Session["Id"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }

            else 
            {
                string id = Session["Id"].ToString();
                lblMemberId.Text = id;


                Guest guest = new Guest();
                GuestController guestController = new GuestController();
                guest = guestController.getByMemberId(id);
                string points = Convert.ToString(guest.Points);
                if (points == null)
                {
                    points = "0";
                }
                lblPoints.Text = points;

                string name = guest.Salutation + guest.FirstName + guest.FamilyName;
                lblName.Text = name;

                //to populate the gridview
                ThreeHotelEntities ctx = new ThreeHotelEntities();
                List<PastTransaction> tl = ctx.PastTransactions.Where(x => x.Member_No == id).ToList();
                if (tl != null)
                {
                    GridView1.DataSource = tl;
                    GridView1.DataBind();
                }
                else
                {
                    lblPastTransaction.Text = "No reservations with the hotel has been made.";
                }

            }
            
        }

        protected void btnEdit_Click1(object sender, EventArgs e)
        {
            Response.Redirect("MemberEdit.aspx");
        }

    }
}

