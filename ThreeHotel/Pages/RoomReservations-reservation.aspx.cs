using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using BusinessLogic;
using System.Net;
using System.Net.Mail;

namespace ThreeHotel.Pages
{
    public partial class RoomReservations_reservation : System.Web.UI.Page
    {
        static double taxRate = 0.07;
        static double serviceChargeRate = 0.1;
        int bookingRefId = 0;
        string email = "";
        double totalCost = 0;
        double costNights = 0;
        int pointsEarned = 0;
        bool member = false;
        int noOfNights = 0;
        string taxSC = "";

        GuestController guestController;
        Guest guest;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if ((string)Session["RoomType"] == string.Empty)
                {
                    Response.Redirect("RoomReservations-list.aspx");
                }
                if(Session["Id"] != null)
                {
                    loadMemberInfo();
                    txtusername.Enabled = false;
                    txtpwd.Enabled = false;
                    btnLogin.Enabled = false;
                }
            }

            lblArrival.Text = Session["CheckIn"].ToString();
            lblDeparture.Text = Session["CheckOut"].ToString();
            lblRoomCount.Text = Session["RoomCount"].ToString();
            lblAdultCount.Text = Session["AdultCount"].ToString();
            lblChildrenCount.Text = Session["ChildrenCount"].ToString();
            lblRoomDesc.Text = Session["RoomDesc"].ToString();
            lblRate.Text = "SGD " + Session["Rate"].ToString();
            lblGroupCode.Text = Session["SpecialRateCode"].ToString();

            int startDateDay = Convert.ToInt16(Session["CheckIn"].ToString().Substring(0, 2));
            int endDateDay = Convert.ToInt16(Session["CheckOut"].ToString().Substring(0, 2));
            noOfNights = endDateDay - startDateDay;

            lblNoOfNights.Text = Convert.ToString(noOfNights);
            costNights = Convert.ToDouble(noOfNights) * Convert.ToDouble(Session["Rate"].ToString());
            lblCostNights.Text = "SGD " + Convert.ToString(costNights);
            lblDateRange.Text = Session["CheckIn"].ToString() + "-" + Session["CheckOut"].ToString();
            taxSC = string.Format("{0:########.00}", Convert.ToString((taxRate + serviceChargeRate) * noOfNights * Convert.ToInt16(Session["Rate"].ToString())));
            lblTaxSC.Text = "SGD " + taxSC;
            lblTotalCost.Text = "SGD " + Convert.ToString((1 + taxRate + serviceChargeRate) * costNights);

            totalCost = (1 + taxRate + serviceChargeRate) * noOfNights * Convert.ToInt16(Session["Rate"].ToString());
            pointsEarned = Convert.ToInt16(totalCost / 2);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoomReservations-list.aspx");
        }

        protected void btnCompleteReservation_Click(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                member = true;
            }

            ThreeHotelEntities ctx = new ThreeHotelEntities();

            char[] toTrim = { 'm', 'g', '0' };
            string guestID = "";

            //commit to database - Guest 

            //if non-member, create new guest by addding row to Guest table
            if (!member)
            {
                Guest addGuest = new Guest();
                var guest = (from x in ctx.Guests where x.GuestId.Contains("G") orderby x.GuestId descending select x).First();

                if (guest != null)
                {
                    int lastNo = Int32.Parse(guest.GuestId.TrimStart("GMgm0".ToCharArray()));
                    int nextNo = lastNo + 1;
                    guestID = "G" + nextNo.ToString().PadLeft(4, '0');
                    addGuest.GuestId = guestID;
                }

                if (ddlSalutation.SelectedValue != string.Empty)
                {
                    addGuest.Salutation = ddlSalutation.SelectedValue;
                }

                if (txtFamilyName.Text != string.Empty)
                    addGuest.FamilyName = txtFamilyName.Text;

                if (txtFirstName.Text != string.Empty)
                    addGuest.FirstName = txtFirstName.Text;
                
                email = txtEmail.Text;
                if (email != string.Empty)
                    addGuest.Email = email;

                if (txtAddress.Text != string.Empty)
                    addGuest.Address = txtAddress.Text;

                if (txtPhoneNo.Text != string.Empty)
                    addGuest.PhoneNo = txtPhoneNo.Text;

                if (ddlCountry.SelectedValue != string.Empty)
                    addGuest.Country = ddlCountry.SelectedValue;

                ctx.Guests.Add(addGuest);

                ctx.SaveChanges();
            }

            //if member, add points earned to his account
            if(member)
            {
                //MemberID session is saved when member signs in
                guestID = Session["Id"].ToString();

                var guest = ctx.Guests.Where(g => g.GuestId == guestID).FirstOrDefault();
                if (guest != null)
                {
                    int currentPoints = Convert.ToInt16(guest.Points);
                    int newPoints = currentPoints + pointsEarned;
                    guest.Points = newPoints;
                    ctx.SaveChanges();
                }
            }


            //commit to database - Booking
            Booking addBooking = new Booking();

            if (Session["SpecialRateCode"] != string.Empty)
            {
                addBooking.SpecialRateCode = Session["SpecialRateCode"].ToString();
            }

            addBooking.CheckIn = Convert.ToDateTime(Session["CheckInDB"].ToString());
            addBooking.CheckOut = Convert.ToDateTime(Session["CheckOutDB"].ToString());
            addBooking.NoOfRooms = Convert.ToInt16(Session["RoomCount"].ToString());
            addBooking.Tax = taxRate;
            addBooking.ServiceCharge = serviceChargeRate;

            if (member)
            {
                addBooking.PointsEarned = pointsEarned;
            }
            else
            {
                addBooking.PointsEarned = 0;
            }

            addBooking.GuestId = guestID;

            if (txtCardNo.Text != string.Empty)
            {
                addBooking.CreditCardNo = Convert.ToInt64(txtCardNo.Text);
            }

            if (rbtnCardType.SelectedValue != string.Empty)
            {
                addBooking.CreditCardType = rbtnCardType.SelectedValue;
            }

            if (ddlMonth.SelectedValue != string.Empty && ddlYear.SelectedValue != string.Empty)
            {
                addBooking.CardExpiredDate = ddlMonth.SelectedValue + ddlYear.SelectedValue;
            }

            addBooking.TotalCost = totalCost;

            ctx.Bookings.Add(addBooking);
            ctx.SaveChanges();


            //commit to database - RoomBooked
            RoomBooked addRoomBooked = new RoomBooked();
            var booking = (from x in ctx.Bookings orderby x.BookingReferenceId descending select x).First();

            if (booking != null)
            {
                bookingRefId = Convert.ToInt32(booking.BookingReferenceId);
                addRoomBooked.BookingReferenceId = bookingRefId;
            }

            addRoomBooked.RoomType = Session["RoomType"].ToString();
            addRoomBooked.Rate = Convert.ToDouble(Session["Rate"].ToString());

            ctx.RoomBookeds.Add(addRoomBooked);
            ctx.SaveChanges();


            if (txtEmail.Text != string.Empty)
            {
                Session["Email"] = txtEmail.Text;
            }
            Session["BookingRefID"] = bookingRefId;
            Session["TotalCost"] = totalCost;
            Session["Email"] = txtEmail.Text;
            string mailadd = txtEmail.Text;
            Session["CostNights"] = costNights;
            Session["TaxSc"] = taxSC;
            Session["NoOfNights"] = noOfNights;
            if (txtFamilyName.Text != string.Empty)
            {
                Session["FamilyName"] = txtFamilyName.Text;
            }

            SendMail(bookingRefId, mailadd);
            Response.Redirect("RoomReservations-confirmation.aspx");
            
        }

        public void SendMail(int bookingRefId,string email)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email);

            mail.From = new MailAddress("barlaebyo@gmail.com");
            mail.Subject = "Three Hotel Reservation";
            string Body = string.Format("Thank you for booking with us! Your Booking Reference No. is {0}.", bookingRefId);
            mail.Body = Body;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential
            ("barlaebyo@gmail.com", "peters1thu");

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);

        }

        protected void lbtnSearchAgain_Click(object sender, EventArgs e)
        {
            Response.Redirect("RoomReservations-list.aspx");
        }

        protected void imgSearchAgain_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RoomReservations-list.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            guestController = new GuestController();
            guest = new Guest();
            Boolean chk;
            string username = txtusername.Text;
            string pwd = txtpwd.Text;

            chk = guestController.checkMember(username, pwd);

            if (chk == true)
            {
                Session["Id"] = txtusername.Text;
                loadMemberInfo();
            }

            else
            {
                lblMsg.Text = "Incorrect Membership Number or Password entered. Kindly try again.";
                txtusername.Text = "";
                txtpwd.Text = "";
            }
        }

        private void loadMemberInfo()
        {
            guestController = new GuestController();
            guest = guestController.getByMemberId(Session["Id"].ToString());

            ddlSalutation.Items[0].Text = guest.Salutation;
            txtFamilyName.Text = guest.FamilyName;
            txtFirstName.Text = guest.FirstName;
            txtEmail.Text = guest.Email;
            txtAddress.Text = guest.Address;
            txtPhoneNo.Text = guest.PhoneNo;
            ddlCountry.Items[0].Text = guest.Country;

            ddlSalutation.Enabled = false;
            txtFamilyName.Enabled = false;
            txtFirstName.Enabled = false;
            txtEmail.Enabled = false;
            txtAddress.Enabled = false;
            txtPhoneNo.Enabled = false;
            ddlCountry.Enabled = false;
        }
    }
}