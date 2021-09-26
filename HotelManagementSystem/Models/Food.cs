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

    public partial class Food
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Food()
        {
            this.OrderFoods = new HashSet<OrderFood>();
        }
    
        public int FoodId { get; set; }
        [Required]
        [Display(Name = "Food Name")]
        [StringLength(50)]
        public string FoodName { get; set; }
        
        [Display(Name = "Food Image")]
        [DataType(DataType.Upload)]
        public string ImageUrl { get; set; }
        [Required]
        [Display(Name = "Item Price")]
        [DataType(DataType.Currency)]
        public Nullable<decimal> Price { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderFood> OrderFoods { get; set; }
    }
}
