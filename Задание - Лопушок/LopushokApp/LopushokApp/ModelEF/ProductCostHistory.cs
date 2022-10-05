namespace LopushokApp.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ProductCostHistory")]
    public partial class ProductCostHistory
    {
        public int ID { get; set; }

        public int ProductID { get; set; }

        public DateTime ChangeDate { get; set; }

        public decimal CostValue { get; set; }

        public virtual Product Product { get; set; }
    }
}
