using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using PopryzhonokApp.ModelEF;
using PopryzhonokApp.Utils;
using PopryzhonokApp.Views;
using PopryzhonokApp.Views.PartialView;

namespace PopryzhonokApp.Views
{
    public partial class EditAgentPage : Form
    {
        public Agent agent { get; set; } = null;
        public EditAgentPage()
        {
            InitializeComponent();
        }
        private void EditAgentPage_Load(object sender, EventArgs e)
        {
            foreach (AgentCard agentCard in MainPage.selectedAgentCard)
            {
                if (agent != null)
                {
                    if (agent.Logo != "")
                        agent.Logo = agent.Logo;
                    else
                        agent.Logo = "";
                }
                agent = DbContext.db.Agent.First(x => x.ID.ToString() == agentCard.IDLabel.Text);
                agentBindingSource.DataSource = agent;
                if (!string.IsNullOrEmpty(agent.Logo))
                    LogoPicBox.ImageLocation = agent.Logo;
                else
                    LogoPicBox.ImageLocation = "";
            }
            agentTypeBindingSource.DataSource = DbContext.db.AgentType.ToList();
        }
        #region Кнопки (или объекты со св-вом Click)
        private void SaveButn_Click(object sender, EventArgs e)
        {
            agent = (Agent)agentBindingSource.Current;
            if (agent.ID == 0)
                DbContext.db.Agent.Add(agent);
            try
            {
                DbContext.db.SaveChanges();
                MessageBox.Show("Данные сохранены");
                DialogResult = DialogResult.OK;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }
        private void ChangeImageButn_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            dialog.Filter = "Image Files(*.BMP; *.JPG; *.GIF; *.PNG)| *.BMP; *.JPG; *.GIF; *.PNG | All files(*.*) | *.* "; //формат загружаемого файла                                                                                                                           
            if (dialog.ShowDialog() == DialogResult.OK) //если в окне была нажата кнопка "ОК"
            {
                try
                {
                    Bitmap image = new Bitmap(dialog.FileName);
                    this.LogoPicBox.Size = image.Size;
                    LogoPicBox.Image = image;
                    LogoPicBox.Invalidate();
                }
                catch
                {
                    DialogResult rezult = MessageBox.Show("Невозможно открыть выбранный файл",
                    "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void ExitBtn_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;

        }
        #endregion
    }
}
