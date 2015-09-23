using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThreeHotel.Pages
{
    public partial class RoomReservations_confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCheckIn.Text = Session["CheckIn"].ToString();
            lblRoomCount.Text = Session["RoomCount"].ToString();
            lblRoomDesc.Text = Session["RoomDesc"].ToString();
            lblCheckOut.Text = Session["CheckOut"].ToString();
            lblEmail.Text = Session["Email"].ToString();
            lblFamilyName.Text = Session["FamilyName"].ToString();
            lblAdults.Text = Session["AdultCount"].ToString();
            lblChildren.Text = Session["ChildrenCount"].ToString();
            lblBedType.Text = Session["BedType"].ToString();
            lblSubTotal.Text = Convert.ToString(Convert.ToDouble(Session["CostNights"].ToString()));
            lblConfirmationNo.Text = Session["BookingRefID"].ToString();
            lblRoomCost.Text = Convert.ToString(Convert.ToDouble(Session["CostNights"].ToString()));
            lblTaxSC.Text = Session["TaxSc"].ToString();
            lblTotalCost.Text = "SGD " + Session["TotalCost"].ToString();
        }

        protected void btnJoin_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberRegistration.aspx");
        }
    }
}