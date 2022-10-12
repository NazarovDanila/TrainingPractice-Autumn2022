namespace PriyatnyjShelestApp.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Shop")]
    public partial class Shop
    {
        public int ID { get; set; }

        [Required]
        [StringLength(150)]
        public string Title { get; set; }

        [StringLength(300)]
        public string Address { get; set; }

        public int AgentID { get; set; }

        public virtual Agent Agent { get; set; }
    }
}
