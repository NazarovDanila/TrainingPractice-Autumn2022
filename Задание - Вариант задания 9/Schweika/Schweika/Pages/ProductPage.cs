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
using Schweika.Utils;

namespace Schweika.Pages
{
    public partial class ProductPage : Form
    {
        public Form prevPAGE = LoginPage.ActiveForm;
        public static List<Product> products = new List<Product>();
        public ProductPage()
        {
            InitializeComponent();
            products = DbConnect.db.Product.ToList();
        }
        private void GenerateProductCards(List<Product> product)
        {
            foreach (var prCard in product)
            {
                ProductCard card = new ProductCard();
                card.GenerateProductCard(prCard);
                flowLayoutPanel1.Controls.Add(card);
            }
        }
        private void ProductPage_Load(object sender, EventArgs e)
        {
            SearchFilterSorting();
            SortCmb.SelectedIndex = 0;
        }
        public void SearchFilterSorting()

        {
            var listUpdate = DbConnect.db.Product.ToList();

            #region Сортировка
            if (SortCmb.Text == "Наименование")
            {
                if (!DescCheckBox.Checked)
                {
                    listUpdate = listUpdate.OrderBy(a => a.ProductName).ToList();
                }
                else
                {
                    listUpdate = listUpdate.OrderByDescending(a => a.ProductName).ToList();
                }
            }
            if (SortCmb.Text == "Стоимость")
            {
                if (!DescCheckBox.Checked)
                {
                    listUpdate = listUpdate.OrderBy(a => a.ProductCost).ToList();
                }
                else
                {
                    listUpdate = listUpdate.OrderByDescending(a => a.ProductCost).ToList();
                }
            }
            else if (SortCmb.Text == "Без сортировки")
            {
                listUpdate = DbConnect.db.Product.ToList();
            }
            #endregion
            flowLayoutPanel1.Controls.Clear();
            GenerateProductCards(listUpdate);
        }
        private void CloseBtn_Click_1(object sender, EventArgs e)
        {
            prevPAGE.Show();
            this.Close();
        }
    }
}
