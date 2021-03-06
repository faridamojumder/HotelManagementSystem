//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotelManagementSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Booking
    {
        public int BookingId { get; set; }
        [Display(Name = "Full Name")]
        public string FullName
        {
            get
            {
                return FirstName + "  " + LastName;
            }
        }
        [Required]
        [Display(Name = "First Name")]
        [StringLength(50)]
        public string FirstName { get; set; }
        [Required]
        [Display(Name = "Last Name")]
        [StringLength(50)]
        public string LastName { get; set; }
        [Required]
        [Display(Name = "Address")]
        [StringLength(50)]
        public string Address { get; set; }
        [Required]
        [Display(Name = "Email")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        [Required]
        [Display(Name = "Mobile")]
        [DataType(DataType.PhoneNumber)]
        public string Phone { get; set; }
        [Required]
        [Display(Name = "NID/Cr Card")]
        [DataType(DataType.PhoneNumber)]
        public string NID_No { get; set; }
        [Required]
        [Display(Name = "Arrival Time")]
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> ArrivalTime { get; set; }
        [Required]
        [Display(Name = "Departure Date")]
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> DepartureDate { get; set; }
        [Required]
        [Display(Name = "Number of Adult")]
        public Nullable<int> AdultId { get; set; }
        [Required]
        [Display(Name = "Number of Child")]
        public Nullable<int> ChildId { get; set; }
        [Required]
        [Display(Name = "Room Type")]
        public Nullable<int> RoomTypeId { get; set; }
        [Required]
        [Display(Name = "Bedding Type")]
        public Nullable<int> BeddingTypeId { get; set; }
        [Required]
        [Display(Name = "Number Of Room")]
        public Nullable<int> RoomQuantityId { get; set; }
        [Required]
        [Display(Name = "Notes")]
        [DataType(DataType.MultilineText)]
        public string Notes { get; set; }
    
        public virtual Adult Adult { get; set; }
        public virtual BeddingType BeddingType { get; set; }
        public virtual Child Child { get; set; }
        public virtual RoomQuantity RoomQuantity { get; set; }
        public virtual RoomType RoomType { get; set; }
    }
}
