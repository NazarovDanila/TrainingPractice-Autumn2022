using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using LopushokApp.Utils;
using LopushokApp.ModelEF;
using LopushokApp.Views.PartialView;

namespace LopushokApp
{
    public partial class MainPage : Form
    {        
        #region Показ данных
        List<Product> products = new List<Product>();
        static int nDataInPage = 20;// количество товаров на странице
        static int nLabels = 4;// количество кнопок
        // поля формы для задания текущих значений
        //int nPageAll = 0;// общее количество страниц
        //int nPageFirst = 1;// начальная страница на кнопках
        //int nPageCurrent = 1;// номер текущей (показываемой) страницы                              
        //Label[] lblsList = new Label[nLabels];// массив кнопок для переходов между страницами
        public MainPage()
        {
            InitializeComponent();
            products = DbContext.db.Product.ToList();// выбираем все товары из БД
            GenerateProductCardList(products);
            //nPageCurrent = 1;// задаем текущую (первую) страницу                              
            //nPageAll = nLabels / nDataInPage;// рассчитываем общее кол-во страниц (после фильтрации и поиска)
            //if (nPageAll * nDataInPage < nLabels)
            //    nPageAll++;
            //ShowData();// вызываем метод показа данных текущей страницы
            //ShowButtons(nPageFirst, nPageCurrent);// вызываем метод показа кнопок начиная с номера nPageFirst. кнопка текущей страницы nPageCurrent выделяется цветом
        }
        private void GenerateProductCardList(List<Product> products)
        {
            foreach (var p in products)
            {
                ProductCard card = new ProductCard();
                card.GenerateDataToAgentCard(p);
                flowLayoutPanel1.Controls.Add(card);
            }
        }        
        private void MainPage_Load(object sender, EventArgs e)
        {
            var allType = DbContext.db.ProductType.Select(type => type.Title).ToList();
            allType.Insert(0, "Все типы");
            FilterComboBox.DataSource = allType;
            SortComboBox.SelectedIndex = 0;
            //lblsList[0] = Lbl1;
            //lblsList[1] = Lbl2;
            //lblsList[2] = Lbl3;
            //lblsList[3] = Lbl4;
        }
        #endregion
        #region Поиск, фильтрация, сортировка и убывание        
        private void Podgotovka()//SortListView
        {
            flowLayoutPanel1.Controls.Clear();
            var listUpdate = DbContext.db.Product.ToList();
            switch (SortComboBox.Text)
            {
                case "Артикул":
                    if (!DescCheckBox.Checked)
                        listUpdate = listUpdate.OrderBy(a => a.ArticleNumber).ToList();
                    else
                        listUpdate = listUpdate.OrderByDescending(a => a.ArticleNumber).ToList();
                    break;
                case "Минимальная стоимость для агента":
                    if (!DescCheckBox.Checked)
                        listUpdate = listUpdate.OrderBy(a => a.MinCostForAgent).ToList();
                    else
                        listUpdate = listUpdate.OrderByDescending(a => a.MinCostForAgent).ToList();
                    break;
                case "Наименование":
                    if (!DescCheckBox.Checked)
                        listUpdate = listUpdate.OrderBy(a => a.Title).ToList();
                    else
                        listUpdate = listUpdate.OrderByDescending(a => a.Title).ToList();
                    break;                
                case "Номер производственного цеха":
                    if (!DescCheckBox.Checked)
                        listUpdate = listUpdate.OrderBy(a => a.ProductionWorkshopNumber).ToList();
                    else
                        listUpdate = listUpdate.OrderByDescending(a => a.ProductionWorkshopNumber).ToList();
                    break;                
            }
            if (FilterComboBox.Text != "Все типы")
            {
                listUpdate = listUpdate.Where(type => type.ProductType.Title == FilterComboBox.SelectedItem.ToString()).ToList();
            }
            if (SearchTextBox.Text != "Введите для поиска")
            {
                listUpdate = listUpdate.Where(p => p.Title.ToLower().Contains(SearchTextBox.Text.ToLower()) || p.ArticleNumber.Contains(SearchTextBox.Text)).ToList();
            }
            GenerateProductCardList(listUpdate);
        }
        private void SearchTextBox_TextChanged(object sender, EventArgs e)
        {
            Podgotovka();
        }
        private void SortComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Podgotovka();
        }
        private void FilterComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            Podgotovka();
        }
        private void DescCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            Podgotovka();
        }
        #endregion
        #region Кнопки        
        //void ShowButtons(int nPageFirst, int nPageCurrent)// рисуем все кнопки начиная с nPageFirst и выделением текущую страницу
        //{ // рисуем кнопки с номерами
        //    for (int i = 0; i < nLabels; i++)
        //    {
        //        int nPage = nPageFirst + i;// определяем номер страницы
        //        lblsList[i].Text = nPage.ToString();// задаем номер кнопки
        //        lblsList[i].BackColor = Color.White;// задаем цвет кнопки
        //        lblsList[i].Visible = true;// делаем кнопку видимой                                            
        //        if (nPage <= nPageAll)// проверяем - есть ли такая страница?
        //        {
        //            if (nPage == nPageCurrent) // если это текущая страница
        //                lblsList[i].BackColor = Color.LightBlue; // выделяем ее цветом
        //        }
        //        else// если такой страницы уже НЕТ, то кнопку не показываем
        //        {
        //            lblsList[i].Visible = false;
        //        }
        //    }
        //    // показываем кнопку "Влево"
        //    if (nPageCurrent == 1)
        //    { // если это первая страница товаров
        //        LeftLbl.Enabled = false; // делаем кнопку не активной
        //        LeftLbl.BackColor = Color.LightGray; // и серого цвета
        //    }
        //    else
        //    { // если это НЕ первая страница товаров
        //        LeftLbl.Enabled = true; // делаем кнопку активной
        //        LeftLbl.BackColor = Color.White; // и белого цвета
        //    }
        //    // показываем кнопку "Вправо"
        //    if (nPageCurrent == nPageAll)
        //    { // если это последняя страница товаров
        //        RightLbl.Enabled = false; // делаем кнопку не активной
        //        RightLbl.BackColor = Color.LightGray; // и серого цвета
        //    }
        //    else
        //    { // если это НЕ последняя страница товаров
        //        RightLbl.Enabled = true; // делаем кнопку активной
        //        RightLbl.BackColor = Color.White; // и белого цвета
        //    }
        //}        
        private void LeftLbl_Click(object sender, EventArgs e)
        {
            //if (nPageCurrent > nPageFirst) 
            //    nPageCurrent--;
            //else if ((nPageCurrent == nPageFirst) && (nPageFirst > 1))
            //{ 
            //    nPageFirst--;
            //    nPageCurrent = nPageFirst; // первая страница текущая
            //}            
            //ShowButtons(nPageFirst, nPageCurrent);// показываем все кнопки            
            //GenerateProductCardList(products);// показываем выбранную страницу
        }
        private void RightLbl_Click(object sender, EventArgs e)
        {
            //if (nPageCurrent < nPageFirst + nLabels - 1)
            //    nPageCurrent++;
            //else if (nPageCurrent < nPageAll)
            //{
            //    nPageFirst++;
            //    nPageCurrent++;
            //}
            //ShowButtons(nPageFirst, nPageCurrent);// показываем все кнопки            
            //ShowData();// показываем выбранную страницу
        }
        private void Lbl1_Click(object sender, EventArgs e)
        {
            //Label lbl = (Label)sender;            
            //nPageCurrent = Convert.ToInt32(lbl.Text);// определяем номер показываемой страницы
            //ShowButtons(nPageFirst, nPageCurrent);// перерисовываем все кнопки
            //ShowData();// показываем новую страницу
        }
        private void Lbl2_Click(object sender, EventArgs e)
        {
            //Label lbl = (Label)sender;
            //nPageCurrent = Convert.ToInt32(lbl.Text);// определяем номер показываемой страницы
            //ShowButtons(nPageFirst, nPageCurrent);// перерисовываем все кнопки
            //ShowData();// показываем новую страницу
        }
        private void Lbl3_Click(object sender, EventArgs e)
        {
            //Label lbl = (Label)sender;
            //nPageCurrent = Convert.ToInt32(lbl.Text);// определяем номер показываемой страницы
            //ShowButtons(nPageFirst, nPageCurrent);// перерисовываем все кнопки
            //ShowData();// показываем новую страницу
        }
        private void Lbl4_Click(object sender, EventArgs e)
        {
            //Label lbl = (Label)sender;
            //nPageCurrent = Convert.ToInt32(lbl.Text);// определяем номер показываемой страницы
            //ShowButtons(nPageFirst, nPageCurrent);// перерисовываем все кнопки
            //ShowData();// показываем новую страницу
        }
        private void ExitBtn_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        #endregion
    }
}
