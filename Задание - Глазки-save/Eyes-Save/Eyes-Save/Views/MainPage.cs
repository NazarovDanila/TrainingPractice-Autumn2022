using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Eyes_Save.Models;
using Eyes_Save.Views.PartialView;
using Eyes_Save.Utils;

namespace Eyes_Save
{
    public partial class MainPage : Form
    {
        #region Показ данных
        List<Agent> agents = new List<Agent>();
        public MainPage()
        {
            InitializeComponent();
            agents = DbContext.db.Agent.ToList();
            GenerateAgentCardList(agents);
        }
        private void GenerateAgentCardList(List<Agent> agent)
        {
            foreach(var a in agent)
            {
                AgentCard card = new AgentCard();
                card.GenerateDataToAgentCard(a);
                flowLayoutPanel1.Controls.Add(card);
            }
        }
        #endregion
        #region Кнопки
        private void ExitBtn_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        #endregion
        #region Поиск, фильтрация, сортировка и убывание
        private void SortListView()
        {
            flowLayoutPanel1.Controls.Clear();
            var listUpdate = DbContext.db.Agent.ToList();
            if (SortComboBox.Text == "Наименование")
            {
                if (!DescCheckBox.Checked)
                {
                    listUpdate = listUpdate.OrderBy(a => a.Title).ToList();
                }
                else
                {
                    listUpdate = listUpdate.OrderByDescending(a => a.Title).ToList();
                }
            }
            if (SortComboBox.Text == "Приоритет")
            {
                if (!DescCheckBox.Checked)
                {
                    listUpdate = listUpdate.OrderBy(a => a.Priority).ToList();
                }
                else
                {
                    listUpdate = listUpdate.OrderByDescending(a => a.Priority).ToList();
                }
            }
            if (FilterComboBox.Text != "Все типы")
            {
                listUpdate = listUpdate.Where(type => type.AgentType.Title == FilterComboBox.SelectedItem.ToString()).ToList();
            }
            if (SearchTextBox.Text != "Введите для поиска")
            {
                listUpdate = listUpdate.Where(p => p.Title.ToLower().Contains(SearchTextBox.Text.ToLower())
                || p.Phone.Contains(SearchTextBox.Text)
                || p.Email.Contains(SearchTextBox.Text.ToLower())).ToList();
            }
            GenerateAgentCardList(listUpdate);
        }
        private void MainPage_Load(object sender, EventArgs e)
        {
            var allType = DbContext.db.AgentType.Select(type => type.Title).ToList();
            allType.Insert(0, "Все типы");
            FilterComboBox.DataSource = allType;
            SortComboBox.SelectedIndex = 0;
        }
        private void SortComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            SortListView();
        }
        private void DescCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            SortListView();
        }
        private void FilterComboBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            SortListView();
        }
        private void SearchTextBox_TextChanged(object sender, EventArgs e)
        {
            SortListView();
        }
        #endregion
    }
}
