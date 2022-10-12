
namespace PriyatnyjShelestApp.Views.PartialView
{
    partial class AgentCard
    {
        /// <summary> 
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором компонентов

        /// <summary> 
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AgentCard));
            this.IDLabel = new System.Windows.Forms.Label();
            this.DiscountLabel = new System.Windows.Forms.Label();
            this.PriorityLabel = new System.Windows.Forms.Label();
            this.PhoneLabel = new System.Windows.Forms.Label();
            this.SaleYearLabel = new System.Windows.Forms.Label();
            this.NameTypeAgentLabel = new System.Windows.Forms.Label();
            this.AgentPicture = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.AgentPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // IDLabel
            // 
            this.IDLabel.AutoSize = true;
            this.IDLabel.ForeColor = System.Drawing.Color.White;
            this.IDLabel.Location = new System.Drawing.Point(1164, 0);
            this.IDLabel.Name = "IDLabel";
            this.IDLabel.Size = new System.Drawing.Size(46, 17);
            this.IDLabel.TabIndex = 25;
            this.IDLabel.Text = "label1";
            // 
            // DiscountLabel
            // 
            this.DiscountLabel.AutoSize = true;
            this.DiscountLabel.BackColor = System.Drawing.Color.White;
            this.DiscountLabel.Font = new System.Drawing.Font("Monotype Corsiva", 16.2F);
            this.DiscountLabel.ForeColor = System.Drawing.Color.Black;
            this.DiscountLabel.Location = new System.Drawing.Point(1180, 17);
            this.DiscountLabel.Name = "DiscountLabel";
            this.DiscountLabel.Size = new System.Drawing.Size(64, 34);
            this.DiscountLabel.TabIndex = 24;
            this.DiscountLabel.Text = "10 %";
            // 
            // PriorityLabel
            // 
            this.PriorityLabel.AutoSize = true;
            this.PriorityLabel.BackColor = System.Drawing.Color.White;
            this.PriorityLabel.Font = new System.Drawing.Font("Monotype Corsiva", 12F);
            this.PriorityLabel.ForeColor = System.Drawing.Color.Black;
            this.PriorityLabel.Location = new System.Drawing.Point(245, 125);
            this.PriorityLabel.Name = "PriorityLabel";
            this.PriorityLabel.Size = new System.Drawing.Size(213, 30);
            this.PriorityLabel.TabIndex = 23;
            this.PriorityLabel.Text = "Приоритетность: 10";
            // 
            // PhoneLabel
            // 
            this.PhoneLabel.AutoSize = true;
            this.PhoneLabel.BackColor = System.Drawing.Color.White;
            this.PhoneLabel.Font = new System.Drawing.Font("Monotype Corsiva", 12F);
            this.PhoneLabel.ForeColor = System.Drawing.Color.Black;
            this.PhoneLabel.Location = new System.Drawing.Point(245, 93);
            this.PhoneLabel.Name = "PhoneLabel";
            this.PhoneLabel.Size = new System.Drawing.Size(169, 30);
            this.PhoneLabel.TabIndex = 22;
            this.PhoneLabel.Text = "+7 111 111 11 11";
            // 
            // SaleYearLabel
            // 
            this.SaleYearLabel.AutoSize = true;
            this.SaleYearLabel.BackColor = System.Drawing.Color.White;
            this.SaleYearLabel.Font = new System.Drawing.Font("Monotype Corsiva", 12F);
            this.SaleYearLabel.ForeColor = System.Drawing.Color.Black;
            this.SaleYearLabel.Location = new System.Drawing.Point(245, 60);
            this.SaleYearLabel.Name = "SaleYearLabel";
            this.SaleYearLabel.Size = new System.Drawing.Size(166, 30);
            this.SaleYearLabel.TabIndex = 21;
            this.SaleYearLabel.Text = "10 продаж за год";
            // 
            // NameTypeAgentLabel
            // 
            this.NameTypeAgentLabel.AutoSize = true;
            this.NameTypeAgentLabel.BackColor = System.Drawing.Color.White;
            this.NameTypeAgentLabel.Font = new System.Drawing.Font("Monotype Corsiva", 16.2F);
            this.NameTypeAgentLabel.ForeColor = System.Drawing.Color.Black;
            this.NameTypeAgentLabel.Location = new System.Drawing.Point(243, 17);
            this.NameTypeAgentLabel.Name = "NameTypeAgentLabel";
            this.NameTypeAgentLabel.Size = new System.Drawing.Size(409, 43);
            this.NameTypeAgentLabel.TabIndex = 20;
            this.NameTypeAgentLabel.Text = "Тип | Наименование агента";
            // 
            // AgentPicture
            // 
            this.AgentPicture.BackColor = System.Drawing.Color.White;
            this.AgentPicture.Image = ((System.Drawing.Image)(resources.GetObject("AgentPicture.Image")));
            this.AgentPicture.Location = new System.Drawing.Point(18, 17);
            this.AgentPicture.Name = "AgentPicture";
            this.AgentPicture.Size = new System.Drawing.Size(200, 144);
            this.AgentPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.AgentPicture.TabIndex = 19;
            this.AgentPicture.TabStop = false;
            // 
            // AgentCard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.IDLabel);
            this.Controls.Add(this.DiscountLabel);
            this.Controls.Add(this.PriorityLabel);
            this.Controls.Add(this.PhoneLabel);
            this.Controls.Add(this.SaleYearLabel);
            this.Controls.Add(this.NameTypeAgentLabel);
            this.Controls.Add(this.AgentPicture);
            this.Name = "AgentCard";
            this.Size = new System.Drawing.Size(1277, 175);
            ((System.ComponentModel.ISupportInitialize)(this.AgentPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.Label IDLabel;
        private System.Windows.Forms.Label DiscountLabel;
        private System.Windows.Forms.Label PriorityLabel;
        private System.Windows.Forms.Label PhoneLabel;
        private System.Windows.Forms.Label SaleYearLabel;
        private System.Windows.Forms.Label NameTypeAgentLabel;
        private System.Windows.Forms.PictureBox AgentPicture;
    }
}
