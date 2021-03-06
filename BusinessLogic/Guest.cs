//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BusinessLogic
{
    using System;
    using System.Collections.Generic;
    
    public partial class Guest
    {
        public Guest()
        {
            this.Bookings = new HashSet<Booking>();
        }
    
        public string GuestId { get; set; }
        public Nullable<int> Points { get; set; }
        public string Salutation { get; set; }
        public string FamilyName { get; set; }
        public string FirstName { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string PhoneNo { get; set; }
        public string Country { get; set; }
    
        public virtual User User { get; set; }
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
