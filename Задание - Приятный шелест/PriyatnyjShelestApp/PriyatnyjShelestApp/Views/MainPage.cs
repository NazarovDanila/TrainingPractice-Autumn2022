using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PriyatnyjShelestApp.Utils;
using PriyatnyjShelestApp.ModelEF;
using PriyatnyjShelestApp.Views;
using PriyatnyjShelestApp.Views.PartialView;

namespace PriyatnyjShelestApp
{
    public partial class MainPage : Form
    {
        #region Показ данных
        public static List<Agent> agents = new List<Agent>();
        public static List<AgentCard> selectedAgentCard = new List<AgentCard>();
        int currentPage = 0;
        int currentSize = 10;
        // Счётчик страниц
        int pagenum = 0;
        int pagesize = 10;
        public MainPage()
        {
            InitializeComponent();
            agents = DbContext.db.Agent.ToList();
            Paging(currentPage, currentSize);
        }
        private void GenerateAgentCardList(List<Agent> agent)
        {
            foreach (var a in agent)
            {
                AgentCard card = new AgentCard();
                card.GenerateDataToAgentCard(a);
                flowLayoutPanel1.Controls.Add(card);
                card.DoubleClick += new System.EventHandler(this.AgentCard_DoubleClick);
            }
        }
        private void Paging(int new1, int new2)
        {
            if (currentPage < 0)
            {
                currentPage = 0;
                pagenum = 0;
                //return;
            }
            RangeLbl.Text = $"Страница {pagenum + 1} из {agents.Count / pagesize}";
            SortListView();
        }
        #endregion
        #region Поиск, фильтрация, сортировка и убывание
        private void MainPage_Load(object sender, EventArgs e)
        {
            var allType = DbContext.db.AgentType.Select(type => type.Title).ToList();
            allType.Insert(0, "Все типы");
            FilterComboBox.DataSource = allType;
            FilterComboBox.SelectedIndex = 0;
            SortComboBox.SelectedIndex = 0;
        }
        private void SortListView()
        {
            flowLayoutPanel1.Controls.Clear();
            var listUpdate = DbContext.db.Agent.ToList();
            #region Поиск
            if (SearchTextBox.Text != "Введите для поиска" && !string.IsNullOrWhiteSpace(SearchTextBox.Text))
            {
                listUpdate = listUpdate.Where(p => p.Title.ToLower().Contains(SearchTextBox.Text.ToLower())
                || p.Phone.Contains(SearchTextBox.Text)
                || p.Email.Contains(SearchTextBox.Text.ToLower())).ToList();
            }
            #endregion            
            #region Фильтрация
            if (FilterComboBox.SelectedIndex > 0)
            {
                listUpdate = listUpdate.Where(type => type.AgentType.Title == FilterComboBox.SelectedItem.ToString()).ToList();
            }
            #endregion            
            #region Сортировка
            switch (SortComboBox.Text)
            {
                case "Наименование":
                    if (!DescCheckBox.Checked)
                        listUpdate = listUpdate.OrderBy(a => a.Title).ToList();
                    else
                        listUpdate = listUpdate.OrderByDescending(a => a.Title).ToList();
                    break;
                case "Приоритет":
                    if (!DescCheckBox.Checked)
                        listUpdate = listUpdate.OrderBy(a => a.Priority).ToList();
                    else
                        listUpdate = listUpdate.OrderByDescending(a => a.Priority).ToList();
                    break;
                    //case "Скидка":                    
                    //    if (!DescCheckBox.Checked)
                    //        listUpdate = listUpdate.OrderBy(a => a.).ToList();
                    //    else
                    //        listUpdate = listUpdate.OrderByDescending(a => a.).ToList();
                    //    break;
            }
            #endregion
            var pageList = listUpdate.Skip(pagenum * pagesize).Take(pagesize).ToList();
            GenerateAgentCardList(pageList);
        }
        private void SearchTextBox_TextChanged(object sender, EventArgs e)
        {
            if (SearchTextBox.Text != "")
            {
                flowLayoutPanel1.Controls.Clear();
                pagenum = 0;
                Paging(currentPage, currentSize);
            }
        }
        private void SortComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            flowLayoutPanel1.Controls.Clear();
            SortListView();
        }
        private void FilterComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            flowLayoutPanel1.Controls.Clear();
            SortListView();
        }
        private void DescCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            flowLayoutPanel1.Controls.Clear();
            SortListView();
        }
        #endregion

        #region Кнопки (или объекты со св-вом Click)
        private void LeftLbl_Click(object sender, EventArgs e)
        {
            if (pagenum < 1)
                return;
            pagenum--;
            currentPage = (currentPage - currentSize) < 0 ? (currentPage - 1) : 0;
            flowLayoutPanel1.Controls.Clear();
            Paging(currentPage, currentSize);
        }
        private void RightLbl_Click(object sender, EventArgs e)
        {
            if (pagenum > ((agents.Count / pagesize) - 2))
                return;
            pagenum++;
            currentPage = ((currentPage + 1) * currentSize) < agents.Count() ? (currentPage + 1) : currentPage;
            flowLayoutPanel1.Controls.Clear();
            Paging(currentPage, currentSize);
        }
        private void AgentCard_DoubleClick(object sender, EventArgs e)
        {
            AgentCard card = sender as AgentCard;
            card.BackColor = Color.FromArgb(67, 220, 254);
            selectedAgentCard.Add(card);
            EditAgentPage editAgent = new EditAgentPage();
            DialogResult result = editAgent.ShowDialog();
            if (result == DialogResult.OK)
            {
                SortListView();
            }
            card.BackColor = Color.White;
            SortListView();
        }
        private void ExitBtn_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        #endregion
    }
}
