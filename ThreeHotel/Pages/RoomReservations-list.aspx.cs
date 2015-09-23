using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using BusinessLogic;

namespace ThreeHotel.Pages
{
    public partial class RoomReservations_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((string)Session["CheckIn"] == string.Empty)
                {
                    Response.Redirect("RoomReservations-input.aspx");
                }

                //populate search field
                String[] RoomOptions = new[] { "1", "2", "3" };
                foreach (string option in RoomOptions)
                {
                    DropDownListRoomCount.Items.Add(new ListItem(option, option));
                }

                populateByRoom();
                populateByAdult();

                //set search field with previously chosen values
                checkInDatePicker.Text = Session["CheckIn"].ToString();
                checkOutDatePicker.Text = Session["CheckOut"].ToString();
                DropDownListRoomCount.Text = Session["RoomCount"].ToString();
                DropDownListAdult.Text = Session["AdultCount"].ToString();
                DropDownListChildren.Text = Session["ChildrenCount"].ToString();
            }

            //Search database for available rooms
            ThreeHotelEntities ctx = new ThreeHotelEntities();
            var result = ctx.SearchOccupancy(Convert.ToDateTime(Session["CheckInDB"]), Convert.ToDateTime(Session["CheckOutDB"]));

            int[] count = new int[8];
            string[] roomType = new string[8] { "DCK", "DCT", "DSK", "DST", "HCK", "HCT", "HSK", "HST" };

            foreach (var item in result)
            {
                switch (item.RoomType)
                {
                    case "DCK":
                        count[0]++;
                        break;
                    case "DCT":
                        count[1]++;
                        break;
                    case "DSK":
                        count[2]++;
                        break;
                    case "DST":
                        count[3]++;
                        break;
                    case "HCK":
                        count[4]++;
                        break;
                    case "HCT":
                        count[5]++;
                        break;
                    case "HSK":
                        count[6]++;
                        break;
                    case "HST":
                        count[7]++;
                        break;
                    default:
                        break;
                }
            }

            int[] roomQty = new int[8] { 20, 20, 20, 20, 20, 20, 20, 20 };
            string[] availability = new string[8];
            int unavailableCount = 0;

            for (int i = 0; i < 8; i++)
            {
                if ((roomQty[i] - count[i]) >= Convert.ToInt16(Convert.ToString(Session["RoomCount"])))
                {
                    availability[i] = "available";
                }
                else
                {
                    unavailableCount++;
                    availability[i] = "unavailable";
                }

            }

            if (unavailableCount == 8)
            {
                lblAllUnavailable.Text = "All rooms are unavailable for the chosen date range " + Session["CheckIn"] + " to " + Session["CheckOut"] + " .";
            }
            else
            {
                //Check DCK and DCT
                if (availability[0] == "available" && availability[1] == "available")
                {
                    rbtn_DCK.Enabled = true;
                    rbtn_DCT.Enabled = true;

                    rbtn_DCK.Checked = true;
                }
                else if (availability[0] == "unavailable" && availability[1] == "unavailable")
                {
                    btnBook_DC.Enabled = false;
                    btnBook_DC.Text = "SOLD OUT!";
                    btnBook_DC.BorderStyle = BorderStyle.None;
                    btnBook_DC.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_DC.BorderColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_DC.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000000");
                }
                else if (availability[0] == "available")
                {
                    rbtn_DCK.Enabled = true;
                    rbtn_DCK.Checked = true;
                }
                else if (availability[1] == "available")
                {
                    rbtn_DCT.Enabled = true;
                    rbtn_DCT.Checked = true;
                }

                //check DSK and DST

                if (availability[2] == "available" && availability[3] == "available")
                {
                    rbtn_DSK.Enabled = true;
                    rbtn_DST.Enabled = true;

                    rbtn_DSK.Checked = true;
                }
                else if (availability[2] == "unavailable" && availability[3] == "unavailable")
                {
                    btnBook_DS.Enabled = false;
                    btnBook_DS.Text = "SOLD OUT!";
                    btnBook_DS.BorderStyle = BorderStyle.None;
                    btnBook_DS.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_DS.BorderColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_DS.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000000");
                }
                else if (availability[2] == "available")
                {
                    rbtn_DSK.Enabled = true;
                    rbtn_DSK.Checked = true;
                }
                else if (availability[3] == "available")
                {
                    rbtn_DST.Enabled = true;
                    rbtn_DST.Checked = true;
                }

                //Check HCK and HCT
                if (availability[4] == "available" && availability[5] == "available")
                {
                    rbtn_HCK.Enabled = true;
                    rbtn_HCT.Enabled = true;

                    rbtn_HCK.Checked = true;
                }
                else if (availability[4] == "unavailable" && availability[5] == "unavailable")
                {
                    btnBook_HC.Enabled = false;
                    btnBook_HC.Text = "SOLD OUT!";
                    btnBook_HC.BorderStyle = BorderStyle.None;
                    btnBook_HC.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_HC.BorderColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_HC.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000000");
                }
                else if (availability[4] == "available")
                {
                    rbtn_HCK.Enabled = true;
                    rbtn_HCK.Checked = true;
                }
                else if (availability[5] == "available")
                {
                    rbtn_HCT.Enabled = true;
                    rbtn_HCT.Checked = true;
                }

                //check HSK and HST

                if (availability[6] == "available" && availability[7] == "available")
                {
                    rbtn_HSK.Enabled = true;
                    rbtn_HST.Enabled = true;

                    rbtn_HSK.Checked = true;
                }
                else if (availability[6] == "unavailable" && availability[7] == "unavailable")
                {
                    btnBook_HS.Enabled = false;
                    btnBook_HS.Text = "SOLD OUT!";
                    btnBook_HS.BorderStyle = BorderStyle.None;
                    btnBook_HS.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_HS.BorderColor = System.Drawing.ColorTranslator.FromHtml("#FFFFFF");
                    btnBook_HS.ForeColor = System.Drawing.ColorTranslator.FromHtml("#000000");
                }
                else if (availability[6] == "available")
                {
                    rbtn_HSK.Enabled = true;
                    rbtn_HSK.Checked = true;
                }
                else if (availability[7] == "available")
                {
                    rbtn_HST.Enabled = true;
                    rbtn_HST.Checked = true;
                }
            }

        }

        protected void DropDownListRoomCount_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListAdult.Items.Clear();
            DropDownListChildren.Items.Clear();

            populateByRoomSelected();
        }

        protected void DropDownListAdult_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListChildren.Items.Clear();

            populateByAdultSelected();
        }

        private void populateByRoomSelected()
        {
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

        private void populateByRoom()
        {
            if (Convert.ToInt16(Session["RoomCount"].ToString()) == 1)
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

            if (Convert.ToInt16(Session["RoomCount"].ToString()) == 2)
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

            if (Convert.ToInt16(Session["RoomCount"].ToString()) == 3)
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

        private void populateByAdult()
        {
            if (Convert.ToInt16(Session["RoomCount"].ToString()) == 1)
            {
                if (Convert.ToInt16(Session["AdultCount"].ToString()) == 1)
                {
                    String[] childrenOptions = new[] { "0", "1", "2" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 2)
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

            if (Convert.ToInt16(Session["RoomCount"].ToString()) == 2)
            {
                if (Convert.ToInt16(Session["AdultCount"].ToString()) == 1)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 2)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 3)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 4)
                {
                    String[] childrenOptions = new[] { "0", "1", "2" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 5)
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

            if (Convert.ToInt16(Session["RoomCount"].ToString()) == 3)
            {
                if (Convert.ToInt16(Session["AdultCount"].ToString()) == 1)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6", "7", "8" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 2)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6", "7" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 3)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5", "6" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 4)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4", "5" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 5)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3", "4" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 6)
                {
                    String[] childrenOptions = new[] { "0", "1", "2", "3" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 7)
                {
                    String[] childrenOptions = new[] { "0", "1", "2" };
                    foreach (string option in childrenOptions)
                    {
                        DropDownListChildren.Items.Add(new ListItem(option, option));
                    }
                }
                else if (Convert.ToInt16(Session["AdultCount"].ToString()) == 8)
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

        private void populateByAdultSelected()
        {
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

        protected void lbtnSearchAgain_Click(object sender, EventArgs e)
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
            Response.Redirect("RoomReservations-list.aspx");
        }

        protected void btnBook_DC_Click(object sender, EventArgs e)
        {
            if (rbtn_DCT.Checked)
            {
                Session["RoomType"] = "DCT";
                Session["BedType"] = "Twin";
                Session["RoomDesc"] = "Deluxe City View Room";
                Session["Rate"] = lblDCRate.Text;
            }
            else
            {
                Session["RoomType"] = "DCK";
                Session["BedType"] = "King";
                Session["RoomDesc"] = "Deluxe City View Room";
                Session["Rate"] = lblDCRate.Text;
            }

            Response.Redirect("RoomReservations-reservation.aspx");
        }

        protected void btnBook_DS_Click(object sender, EventArgs e)
        {
            if (rbtn_DST.Checked)
            {
                Session["RoomType"] = "DST";
                Session["BedType"] = "Twin";
                Session["RoomDesc"] = "Deluxe Sea View Room";
                Session["Rate"] = lblDSRate.Text;
            }
            else
            {
                Session["RoomType"] = "DSK";
                Session["BedType"] = "King";
                Session["RoomDesc"] = "Deluxe Sea View Room";
                Session["Rate"] = lblDSRate.Text;
            }

            Response.Redirect("RoomReservations-reservation.aspx");
        }

        protected void btnBook_HC_Click(object sender, EventArgs e)
        {
            if (rbtn_HCT.Checked)
            {
                Session["RoomType"] = "HCT";
                Session["BedType"] = "Twin";
                Session["RoomDesc"] = "Horizon Club City View Room";
                Session["Rate"] = lblHCRate.Text;
            }
            else
            {
                Session["RoomType"] = "HCK";
                Session["BedType"] = "King";
                Session["RoomDesc"] = "Horizon Club City View Room";
                Session["Rate"] = lblHCRate.Text;
            }

            Response.Redirect("RoomReservations-reservation.aspx");
        }

        protected void btnBook_HS_Click(object sender, EventArgs e)
        {
            if (rbtn_HST.Checked)
            {
                Session["RoomType"] = "HST";
                Session["BedType"] = "Twin";
                Session["RoomDesc"] = "Horizon Club Sea View Room";
                Session["Rate"] = lblHSRate.Text;
            }
            else
            {
                Session["RoomType"] = "HSK";
                Session["BedType"] = "King";
                Session["RoomDesc"] = "Horizon Club Sea View Room";
                Session["Rate"] = lblHSRate.Text;
            }

            Response.Redirect("RoomReservations-reservation.aspx");
        }

    }
}