using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace ThreeHotel.Pages
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WebMailSebd()
        {
            string customer = "Customer: " + TitleList.SelectedValue + " " + name.Text + " " + surname.Text + "<br>";
            string email = "Email Address: " + EmailAddress.Text + "<br>";
            string mno = "";
            string phoneno = "";
            string alterno = "";
            string date = "";
            if (MemberNo.Text != "")
            {
                mno = "Gold Circle Membership Number:" + MemberNo.Text + "<br>";
            }
            if (PhoneNumber.Text != "")
            {
                phoneno = "Phone Number:" + PhoneNumber.Text + "<br>";
            }
            if (AlterNumber.Text != "")
            {
                alterno = "Alternate Phone/Fax Number:" + AlterNumber.Text + "<br>";
            }

            string from = "barlaebyo@gmail.com"; 
            string to = "zhangzhonghua.cloris@gmail.com";
            string theme = SubjectList.SelectedValue;
            string content = "<strong>Personal Information:</strong><hr>" + customer + mno + phoneno + alterno + date + "Email Address" + email + "<br><hr>" + "<strong>Subject: </strong>" + SubjectList.SelectedValue + "<br><br>" + "<strong>Comments:</strong>" + CommentTextBox.Text;
            MailMessage messge = new MailMessage(from, to);
            messge.Body = content;
            messge.Subject = theme;
            messge.IsBodyHtml = true;
            messge.Priority = MailPriority.High;

            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Credentials = new NetworkCredential("barlaebyo@gmail.com", "peters1thu");
            client.EnableSsl = true;
            client.Send(messge);
            messge.Attachments.Dispose();
        }

        protected void TitleValid(object source, ServerValidateEventArgs args)
        {
            string s = SubjectList.SelectedItem.ToString();
            if (s == "Title")
            {
                args.IsValid = false;
            }
        }
        protected void SubjectValid(object source, ServerValidateEventArgs args)
        {
            string s = SubjectList.SelectedItem.ToString();
            if (s == "Please Select One")
            {

                args.IsValid = false;
            }
        }

        protected void ImageButton1_Click(object sender, EventArgs e)
        {
            if (TitleList.SelectedValue != "Title" &&
                surname.Text != "" &&
                name.Text != "" &&
                EmailAddress.Text != "" &&
                CommentTextBox.Text != "" &&
                SubjectList.SelectedValue != "Please Select One")
            {
                WebMailSebd();

                string url;
                url = "http://localhost:50834/Pages/Email-confirmation.aspx?fullname=" + TitleList.SelectedValue + " " + name.Text + " " + surname.Text;
                Response.Redirect(url);

            }
        }
    }
}