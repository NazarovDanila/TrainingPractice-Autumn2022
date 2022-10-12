using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LopushokApp.ModelEF;

namespace LopushokApp.Views.PartialView
{
    public partial class ProductCard : UserControl
    {
        public ProductCard()
        {
            InitializeComponent();
        }
        #region Показ данных на карточке
        public void GenerateDataToAgentCard(Product product)
        {
            string m = null;
            int mnum = 0;
            ProductPicture.ImageLocation = product.Image;
            NameTypeProductLbl.Text = product.ProductType.Title + " | " + product.Title;
            ArticleLbl.Text = product.ArticleNumber;
            foreach(ProductMaterial productMaterial in product.ProductMaterial)
            {
                m += $"{productMaterial.Material.Title}, ";
                mnum++;
            }
            if (mnum == 0)
                MaterialLbl.Text = null;
            else
            {
                m = m.Substring(0, m.Length - 2);
                MaterialLbl.Text = "Материалы: " + m;                
            }
            CostLbl.Text = Convert.ToString(product.MinCostForAgent);
        }
        #endregion
        public void CardClick()
        {
            this.BackColor = Color.FromArgb(0, 204, 118);
            ProductPicture.BackColor = Color.FromArgb(0, 204, 118);
            NameTypeProductLbl.BackColor = Color.FromArgb(0, 204, 118);
            ArticleLbl.BackColor = Color.FromArgb(0, 204, 118);
            MaterialLbl.BackColor = Color.FromArgb(0, 204, 118);
            CostLbl.BackColor = Color.FromArgb(0, 204, 118);
            //MessageBox.Show("Здесь должно быть окно редактирования данных");
            switch (MessageBox.Show("Редактировать", "Удалить", MessageBoxButtons.YesNoCancel))
            {
                case DialogResult.Yes:
                    MessageBox.Show("Здесь должно быть окно редактирования данных");
                    break;
                case DialogResult.No:
                    MessageBox.Show("Здесь должно быть окно удаления данных");
                    break;
                case default:
                    MessageBox.Close();
                    break;
            }
            if (MessageBox.Show("Редактировать", "Удалить", MessageBoxButtons.YesNoCancel) == DialogResult.Yes)
            {
                MessageBox.Show("Здесь должно быть окно редактирования данных");
            }
            else if (MessageBox.Show("Редактировать", "Удалить", MessageBoxButtons.YesNoCancel) == DialogResult.No)
            {
                MessageBox.Show("Здесь должно быть окно удаления данных");
            }
            this.BackColor = Color.White;
            ProductPicture.BackColor = Color.White;
            NameTypeProductLbl.BackColor = Color.White;
            ArticleLbl.BackColor = Color.White;
            MaterialLbl.BackColor = Color.White;
            CostLbl.BackColor = Color.White;
        }
        private void ProductCard_DoubleClick(object sender, EventArgs e)
        {
            CardClick();
        }
        private void ProductPicture_DoubleClick(object sender, EventArgs e)
        {
            CardClick();
        }
        private void NameTypeProductLbl_DoubleClick(object sender, EventArgs e)
        {
            CardClick();
        }
        private void ArticleLbl_DoubleClick(object sender, EventArgs e)
        {
            CardClick();
        }
        private void MaterialLbl_DoubleClick(object sender, EventArgs e)
        {
            CardClick();
        }
        private void CostLbl_DoubleClick(object sender, EventArgs e)
        {
            CardClick();
        }
    }
}
