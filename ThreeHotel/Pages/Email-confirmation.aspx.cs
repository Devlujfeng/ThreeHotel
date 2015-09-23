using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ThreeHotel.Pages
{
    public partial class Email_Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FullName.Text = Request.QueryString["fullname"];
        }
    }
}