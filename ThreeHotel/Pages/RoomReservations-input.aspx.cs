using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using BusinessLogic;

namespace ThreeHotel
{
    public partial class RoomReservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnNewReservation.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;

                String[] RoomOptions = new[] { "1", "2", "3" };
                foreach (string option in RoomOptions)
                {
                    DropDownListRoomCount.Items.Add(new ListItem(option, option));
                }

                String[] adultOptions = new[] { "1", "2", "3" };
                foreach (string option in adultOptions)
                {
                    DropDownListAdult.Items.Add(new ListItem(option, option));
                }

                String[] childrenOptions = new[] { "0", "1", "2" };
                foreach (string option in childrenOptions)
                {
                    DropDownListChildren.Items.Add(new ListItem(option, option));
                }
            }
        }

        protected void btnNewReservation_Click(object sender, EventArgs e)
        {
            btnNewReservation.CssClass = "Clicked";
            btnViewReservation.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void btnViewReservation_Click(object sender, EventArgs e)
        {
            btnNewReservation.CssClass = "Initial";
            btnViewReservation.CssClass = "Clicked";
            MainView.ActiveViewIndex = 1;
        }

        protected void DropDownListRoomCount_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListAdult.Items.Clear();
            DropDownListChildren.Items.Clear();

            if (Convert.ToInt16(DropDownListRoomCount.SelectedItem.Text) == 1)
            {
                String[] adultOptions = new[] { "1", "2", "3" };
                foreach (string option in adultOptions)
                {
                    DropDownListAdult.Items.Add(new ListItem(option, option));
                }
                String[] childrenOptions = new[] { "0", "1", "2" };
                foreach (string option in childrenOptions)
                {
                    DropDownListChildren.Items.Add(new ListItem(option, option));
                }

            }

            if (Convert.ToInt16(DropDownListRoomCount.SelectedItem.Text) == 2)
            {
                String[] adultOptions = new[] { "1", "2", "3", "4", "5", "6" };
                foreach (string option in adultOptions)
                {
                    DropDownListAdult.Items.Add(new ListItem(option, option));
                }
                String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5" };
                foreach (string option in childrenOptions)
                {
                    DropDownListChildren.Items.Add(new ListItem(option, option));
                }
            }

            if (Convert.ToInt16(DropDownListRoomCount.SelectedItem.Text) == 3)
            {
                String[] adultOptions = new[] { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
                foreach (string option in adultOptions)
                {
                    DropDownListAdult.Items.Add(new ListItem(option, option));
                }
                String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6", "7", "8" };
                foreach (string option in childrenOptions)
                {
                    DropDownListChildren.Items.Add(new ListItem(option, option));
                }
            }



        }

        protected void DropDownListAdult_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListChildren.Items.Clear();

            if (Convert.ToInt16(DropDownListRoomCount.SelectedItem.Text) == 1)
            {
                if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 1)
                {
                    String[] childrenOptions = new[] { "0", "1", "2" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 2)
                {
                    String[] childrenOptions = new[] { "0", "1" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else
                {
                    DropDownListChildren.Items.Add(new ListItem("0", "0"));
                }
            }

            if (Convert.ToInt16(DropDownListRoomCount.SelectedItem.Text) == 2)
            {
                if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 1)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 2)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 3)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 4)
                {
                    String[] childrenOptions = new[] { "0", "1", "2" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 5)
                {
                    String[] childrenOptions = new[] { "0", "1" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else
                {
                    DropDownListChildren.Items.Add(new ListItem("0", "0"));
                }
            }

            if (Convert.ToInt16(DropDownListRoomCount.SelectedItem.Text) == 3)
            {
                if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 1)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6", "7", "8" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 2)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6", "7" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 3)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 4)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 5)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 6)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 7)
                {
                    String[] childrenOptions = new[] { "0", "1", "2" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(DropDownListAdult.SelectedItem.Text) == 8)
                {
                    String[] childrenOptions = new[] { "0", "1" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else
                {
                    DropDownListChildren.Items.Add(new ListItem("0", "0"));
                }
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String checkIn = (checkInDatePicker.Text).Substring(6, 4) + "-" + (checkInDatePicker.Text).Substring(3, 2) + "-" + (checkInDatePicker.Text).Substring(0, 2);
            String checkOut = (checkOutDatePicker.Text).Substring(6, 4) + "-" + (checkOutDatePicker.Text).Substring(3, 2) + "-" + (checkOutDatePicker.Text).Substring(0, 2);

            Session["CheckInDB"] = checkIn;
            Session["CheckOutDB"] = checkOut;
            Session["CheckIn"] = checkInDatePicker.Text;
            Session["CheckOut"] = checkOutDatePicker.Text;
            Session["RoomCount"] = DropDownListRoomCount.SelectedItem.Text;
            Session["AdultCount"] = DropDownListAdult.SelectedItem.Text;
            Session["ChildrenCount"] = DropDownListChildren.SelectedItem.Text;
            Session["SpecialRateCode"] = txtSpecialRate.Text;
            Response.Redirect("RoomReservations-list.aspx");
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            int refNo = Convert.ToInt16(txtReservationNo.Text);
            string familyName = txtLastName.Text;
            string guestId = null;
 
            ThreeHotelEntities ctx = new ThreeHotelEntities();

            Guest guest = ctx.Guests.Where(x=> x.FamilyName == familyName).FirstOrDefault();
            if (guest != null)
            {
                guestId = guest.GuestId.Trim();
            }
            else
            {
                lblMsg.Text = "Invalid Booking Reference No or Family/Last Name";
            }
            

            Booking booking = ctx.Bookings.Where(x => x.BookingReferenceId == refNo && x.GuestId == guestId).FirstOrDefault();
            if (booking != null && guestId != null)
            {
                Session["bookingRef"] = refNo;
                Response.Redirect("RoomReservations-view.aspx");
            }
            if (booking == null)
            {
                lblMsg.Text = "Invalid Booking Reference No or Family/Last Name";
            }
        }
    }
}