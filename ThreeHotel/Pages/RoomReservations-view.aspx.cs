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
    public partial class RoomReservations_view : System.Web.UI.Page
    {
        string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            //ObjectDataSource1.FilterExpression = "Booking Reference = " + Session["bookingRef"].ToString(); 
            if (Session["bookingRef"] != null)
            {
                int bookingRef = Convert.ToInt16(Session["bookingRef"].ToString());

                //to populate the gridview
                ThreeHotelEntities ctx = new ThreeHotelEntities();
                List<PastTransaction> tl = ctx.PastTransactions.Where(x => x.Booking_Ref == bookingRef).ToList();
                if (tl != null)
                {
                    GridView1.DataSource = tl;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnCancelReservation_Click(object sender, EventArgs e)
        {
            if(ckCancel.Checked == true)
            {
                int bookingRef = Convert.ToInt32(Session["bookingRef"].ToString());

                ThreeHotelEntities ctx = new ThreeHotelEntities();
                //Booking booking = ctx.Bookings.Where(x => x.GuestId == id).FirstOrDefault();
                Booking booking = ctx.Bookings.Where(x => x.BookingReferenceId == bookingRef).FirstOrDefault();
                RoomBooked roomBooked = ctx.RoomBookeds.Where(r => r.BookingReferenceId == bookingRef).FirstOrDefault();
                if (booking != null && roomBooked != null)
                {
                    booking.Status = "Cancelled";
                    roomBooked.Status = "Cancelled";
                    ctx.SaveChanges();
                    lblMsg.Text = "Reservation successfully cancelled.";
                }
                else
                {
                    lblMsg.Text = "Kindly select the check box if you wish to cancel your reservation.";
                }
                
            }
            else
            {
                lblMsg.Text = "Kindly select the check box if you wish to cancel your reservation.";
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoomReservations-input.aspx");
        }
    }
}