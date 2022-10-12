
namespace PopryzhonokApp.Views.PartialView
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
            this.DiscountLabel = new System.Windows.Forms.Label();
            this.PriorityLabel = new System.Windows.Forms.Label();
            this.PhoneLabel = new System.Windows.Forms.Label();
            this.SaleYearLabel = new System.Windows.Forms.Label();
            this.NameTypeAgentLabel = new System.Windows.Forms.Label();
            this.AgentPicture = new System.Windows.Forms.PictureBox();
            this.IDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.AgentPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // DiscountLabel
            // 
            this.DiscountLabel.AutoSize = true;
            this.DiscountLabel.BackColor = System.Drawing.Color.White;
            this.DiscountLabel.Font = new System.Drawing.Font("Comic Sans MS", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DiscountLabel.ForeColor = System.Drawing.Color.Black;
            this.DiscountLabel.Location = new System.Drawing.Point(1139, 19);
            this.DiscountLabel.Name = "DiscountLabel";
            this.DiscountLabel.Size = new System.Drawing.Size(78, 39);
            this.DiscountLabel.TabIndex = 17;
            this.DiscountLabel.Text = "10 %";
            // 
            // PriorityLabel
            // 
            this.PriorityLabel.AutoSize = true;
            this.PriorityLabel.BackColor = System.Drawing.Color.White;
            this.PriorityLabel.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.PriorityLabel.ForeColor = System.Drawing.Color.Black;
            this.PriorityLabel.Location = new System.Drawing.Point(238, 127);
            this.PriorityLabel.Name = "PriorityLabel";
            this.PriorityLabel.Size = new System.Drawing.Size(204, 28);
            this.PriorityLabel.TabIndex = 16;
            this.PriorityLabel.Text = "Приоритетность: 10";
            // 
            // PhoneLabel
            // 
            this.PhoneLabel.AutoSize = true;
            this.PhoneLabel.BackColor = System.Drawing.Color.White;
            this.PhoneLabel.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.PhoneLabel.ForeColor = System.Drawing.Color.Black;
            this.PhoneLabel.Location = new System.Drawing.Point(238, 95);
            this.PhoneLabel.Name = "PhoneLabel";
            this.PhoneLabel.Size = new System.Drawing.Size(148, 28);
            this.PhoneLabel.TabIndex = 15;
            this.PhoneLabel.Text = "+7 111 111 11 11";
            // 
            // SaleYearLabel
            // 
            this.SaleYearLabel.AutoSize = true;
            this.SaleYearLabel.BackColor = System.Drawing.Color.White;
            this.SaleYearLabel.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.SaleYearLabel.ForeColor = System.Drawing.Color.Black;
            this.SaleYearLabel.Location = new System.Drawing.Point(238, 62);
            this.SaleYearLabel.Name = "SaleYearLabel";
            this.SaleYearLabel.Size = new System.Drawing.Size(175, 28);
            this.SaleYearLabel.TabIndex = 14;
            this.SaleYearLabel.Text = "10 продаж за год";
            // 
            // NameTypeAgentLabel
            // 
            this.NameTypeAgentLabel.AutoSize = true;
            this.NameTypeAgentLabel.BackColor = System.Drawing.Color.White;
            this.NameTypeAgentLabel.Font = new System.Drawing.Font("Comic Sans MS", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.NameTypeAgentLabel.ForeColor = System.Drawing.Color.Black;
            this.NameTypeAgentLabel.Location = new System.Drawing.Point(236, 19);
            this.NameTypeAgentLabel.Name = "NameTypeAgentLabel";
            this.NameTypeAgentLabel.Size = new System.Drawing.Size(393, 39);
            this.NameTypeAgentLabel.TabIndex = 13;
            this.NameTypeAgentLabel.Text = "Тип | Наименование агента";
            // 
            // AgentPicture
            // 
            this.AgentPicture.BackColor = System.Drawing.Color.White;
            this.AgentPicture.Image = global::PopryzhonokApp.Properties.Resources.picture;
            this.AgentPicture.Location = new System.Drawing.Point(18, 19);
            this.AgentPicture.Name = "AgentPicture";
            this.AgentPicture.Size = new System.Drawing.Size(200, 144);
            this.AgentPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.AgentPicture.TabIndex = 12;
            this.AgentPicture.TabStop = false;
            // 
            // IDLabel
            // 
            this.IDLabel.AutoSize = true;
            this.IDLabel.ForeColor = System.Drawing.Color.White;
            this.IDLabel.Location = new System.Drawing.Point(1157, 2);
            this.IDLabel.Name = "IDLabel";
            this.IDLabel.Size = new System.Drawing.Size(46, 17);
            this.IDLabel.TabIndex = 18;
            this.IDLabel.Text = "label1";
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
            this.Size = new System.Drawing.Size(1236, 179);
            ((System.ComponentModel.ISupportInitialize)(this.AgentPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label DiscountLabel;
        private System.Windows.Forms.Label PriorityLabel;
        private System.Windows.Forms.Label PhoneLabel;
        private System.Windows.Forms.Label SaleYearLabel;
        private System.Windows.Forms.Label NameTypeAgentLabel;
        private System.Windows.Forms.PictureBox AgentPicture;
        public System.Windows.Forms.Label IDLabel;
    }
}
