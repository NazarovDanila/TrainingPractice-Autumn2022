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

namespace Eyes_Save.Views.PartialView
{
    public partial class AgentCard : UserControl
    {
        public AgentCard()
        {
            InitializeComponent();
        }
        #region Показ данных на карточке
        public void GenerateDataToAgentCard(Agent agent)
        {
            int qty = 0;
            decimal sum = 0;
            AgentPicture.ImageLocation = agent.Logo;
            NameTypeAgentLabel.Text = agent.AgentType.Title + " | " + agent.Title;
            foreach (ProductSale sale in agent.ProductSale)
            {
                qty += sale.ProductCount;
                sum += qty * sale.Product.MinCostForAgent;
            }
            SaleYearLabel.Text = qty + " продаж за год";
            PhoneLabel.Text = agent.Phone;
            PriorityLabel.Text = "Приоритетность: " + agent.Priority;
            if (sum < 10000)
                PercentLabel.Text = "0%";
            else if (sum >= 10000 && sum < 50000)
                PercentLabel.Text = "5%";
            else if (sum >= 50000 && sum < 150000)
                PercentLabel.Text = "10%";
            else if (sum >= 150000 && sum < 500000)
                PercentLabel.Text = "20%";
            else
                PercentLabel.Text = "25%";
        }
        #endregion
    }
}
