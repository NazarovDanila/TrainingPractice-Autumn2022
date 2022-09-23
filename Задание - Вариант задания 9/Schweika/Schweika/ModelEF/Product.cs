namespace Schweika.ModelEF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            OrderProduct = new HashSet<OrderProduct>();
        }

        [Key]
        [StringLength(100)]
        public string ProductArticleNumber { get; set; }

        [Required]
        public string ProductName { get; set; }

        [Required]
        public string ProductDescription { get; set; }

        public int ProductCategoryID { get; set; }

        [StringLength(100)]
        public string ProductImage { get; set; }

        public int ProductManufacturerID { get; set; }

        public int ProductSupplierID { get; set; }

        public decimal ProductCost { get; set; }

        public byte? ProductDiscountAmount { get; set; }

        public byte ProductMaxDiscount { get; set; }

        public int ProductQuantityInStock { get; set; }

        public int ProductUnitOfMeasureID { get; set; }

        public int ProductStatusID { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderProduct> OrderProduct { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }

        public virtual ProductManufacturer ProductManufacturer { get; set; }

        public virtual ProductStatus ProductStatus { get; set; }

        public virtual ProductSupplier ProductSupplier { get; set; }

        public virtual ProductUnitOfMeasure ProductUnitOfMeasure { get; set; }
    }
}
