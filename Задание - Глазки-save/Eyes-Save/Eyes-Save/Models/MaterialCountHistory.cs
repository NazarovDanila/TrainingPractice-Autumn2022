namespace Eyes_Save.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MaterialCountHistory")]
    public partial class MaterialCountHistory
    {
        public int ID { get; set; }

        public int MaterialID { get; set; }

        public DateTime ChangeDate { get; set; }

        public double CountValue { get; set; }

        public virtual Material Material { get; set; }
    }
}
