namespace Schweika.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Order")]
    public partial class Order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Order()
        {
            OrderProduct = new HashSet<OrderProduct>();
        }

        public int OrderID { get; set; }

        public int OrderStatusID { get; set; }

        public DateTime OrderCreationDate { get; set; }

        public DateTime OrderDeliveryDate { get; set; }

        public int OrderPickupPointID { get; set; }

        public int OrderCodeToGet { get; set; }

        [StringLength(100)]
        public string ClientFullName { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderProduct> OrderProduct { get; set; }

        public virtual OrderPickupPoint OrderPickupPoint { get; set; }

        public virtual OrderStatus OrderStatus { get; set; }
    }
}
