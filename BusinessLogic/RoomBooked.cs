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
    
    public partial class RoomBooked
    {
        public int RoomBookedId { get; set; }
        public int BookingReferenceId { get; set; }
        public string RoomType { get; set; }
        public double Rate { get; set; }
        public string Status { get; set; }
    
        public virtual Booking Booking { get; set; }
        public virtual Room Room { get; set; }
    }
}