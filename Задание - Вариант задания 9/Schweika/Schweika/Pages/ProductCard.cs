using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Schweika.ModelEF;

namespace Schweika.Pages
{
    public partial class ProductCard : UserControl
    {
        public ProductCard()
        {
            InitializeComponent();
        }
        public void GenerateProductCard(Product product)
        {
            string path = null;
            if (!string.IsNullOrWhiteSpace(product.ProductImage))
            {
                path = ("Schweika/Schweika/bin/Debug/Products" + product.ProductImage);
            }
            PrPicture.ImageLocation = path;
            PrNameLbl.Text = product.ProductName;
            PrDescriptionLbl.Text = product.ProductDescription;
            PrManufacturerLbl.Text = product.ProductManufacturer.ProductManufacturerName;
            PrDiscountLbl.Text = (Convert.ToString(product.ProductDiscountAmount) + "%");
        }
    }
}
