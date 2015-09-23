using System;
using System.IO;
using System.Text;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;


namespace BusinessLogic
{
    public class GuestController
    {


        public string MemberSave(string salut, string familyName, string fName, string pwd, string email, string address, string ph, string country)
        {
            string id;
            ThreeHotelEntities ct = new ThreeHotelEntities();
            Guest g = new Guest();
            User user = new User();

            id = getMemberId();
            g.GuestId = id;

            g.Salutation = salut;
            g.FamilyName = familyName;
            g.FirstName = fName;
            user.MembershipId = id;
            user.Password = Encrypt(pwd);
            g.Email = email;
            g.Address = address;
            g.PhoneNo = ph;
            g.Country = country;

            ct.Guests.Add(g);
            ct.Users.Add(user);
            ct.SaveChanges();


            SendMail(fName, familyName, email, id);
            return id;

        }

        public void MemberUpdate(string id, string salut, string familyName, string fName, string email, string address, string ph, string country)
        {
            ThreeHotelEntities ct = new ThreeHotelEntities();
            Guest g = new Guest();

            g = (from x in ct.Guests
                 where x.GuestId == id
                 select x).First();

            g.Salutation = salut;
            g.FamilyName = familyName;
            g.FirstName = fName;

            g.Email = email;
            g.Address = address;
            g.PhoneNo = ph;
            g.Country = country;

            ct.SaveChanges();

        }

        public void MemberChangePwd(string id, string newpwd)
        {
            ThreeHotelEntities ct = new ThreeHotelEntities();
            User g = new User();

            g = (from x in ct.Users
                 where x.MembershipId == id
                 select x).First();

            g.Password = Encrypt(newpwd);

            ct.SaveChanges();

        }

        public Guest getByMemberId(string id)
        {
            ThreeHotelEntities ct = new ThreeHotelEntities();
            Guest guest = new Guest();

            guest = (from x in ct.Guests
                     where x.GuestId == id
                     select x).First();

            return guest;
        }

        public void SendMail(string fname, string familyname, string email, string id)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email);

            mail.From = new MailAddress("barlaebyo@gmail.com");
            mail.Subject = "Welcome To Three Hotel";
            string Body = string.Format("Dear {0}, welcome to Golden Circle! Your membership number is {1}.", fname + " " + familyname, id);
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

        public string getGuestId()
        {
            ThreeHotelEntities ct = new ThreeHotelEntities();

            Guest guest = new Guest();
            guest = (from x in ct.Guests
                     where x.GuestId.Contains("G")
                     orderby x.GuestId descending
                     select x).First();


            string a = guest.GuestId;
            string b = a.Substring(4, 1);

            int d = Convert.ToInt32(b);
            string e = Convert.ToString(d + 1);
            string c = "";
            if (d + 1 > 999)
                c = "G" + e;
            else if (d + 1 > 99)
                c = "G0" + e;
            else if (d + 1 > 9)
                c = "G00" + e;
            else
                c = "G000" + e;

            return c;
        }

        public string getMemberId()
        {
            ThreeHotelEntities ct = new ThreeHotelEntities();

            Guest guest = new Guest();
            guest = (from x in ct.Guests
                     where x.GuestId.Contains("M")
                     orderby x.GuestId descending
                     select x).First();


            string a = guest.GuestId;
            string b = a.Substring(1, 4);

            int d = Convert.ToInt32(b);
            string e = Convert.ToString(d + 1);
            string c = "";
            if (d + 1 > 999 && d + 1 < 9999)
                c = "M" + e;
            else if (d + 1 > 99 && d + 1 < 999)
                c = "M0" + e;
            else if (d + 1 > 9 && d + 1 < 99)
                c = "M00" + e;
            else
                c = "M000" + e;

            return c;
        }

        public Boolean checkMember(string username, string pwd)
        {
            Boolean status = false;
            try
            {
                ThreeHotelEntities ct = new ThreeHotelEntities();

                User guest = new User();
                string ppwd = Encrypt(pwd);
                var q = from x in ct.Users
                        where x.MembershipId == username && x.Password == ppwd
                        select x;
                User u = q.First();

                if (u == null)
                    status = false;
                else
                    status = true;

                return status;
            }
            catch
            {
                return status;
            }
        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
    }
}
