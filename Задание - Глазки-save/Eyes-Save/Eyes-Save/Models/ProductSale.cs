namespace Eyes_Save.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductSale")]
    public partial class ProductSale
    {
        public int ID { get; set; }

        public int AgentID { get; set; }

        public int ProductID { get; set; }

        [Column(TypeName = "date")]
        public DateTime SaleDate { get; set; }

        public int ProductCount { get; set; }

        public virtual Agent Agent { get; set; }

        public virtual Product Product { get; set; }
    }
}
