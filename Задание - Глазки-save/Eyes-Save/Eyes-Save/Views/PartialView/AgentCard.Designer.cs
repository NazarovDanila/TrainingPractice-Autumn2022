
namespace Eyes_Save.Views.PartialView
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
            this.NameTypeAgentLabel = new System.Windows.Forms.Label();
            this.SaleYearLabel = new System.Windows.Forms.Label();
            this.PhoneLabel = new System.Windows.Forms.Label();
            this.PriorityLabel = new System.Windows.Forms.Label();
            this.PercentLabel = new System.Windows.Forms.Label();
            this.AgentPicture = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.AgentPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // NameTypeAgentLabel
            // 
            this.NameTypeAgentLabel.AutoSize = true;
            this.NameTypeAgentLabel.Font = new System.Drawing.Font("Century Gothic", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.NameTypeAgentLabel.Location = new System.Drawing.Point(231, 12);
            this.NameTypeAgentLabel.Name = "NameTypeAgentLabel";
            this.NameTypeAgentLabel.Size = new System.Drawing.Size(414, 34);
            this.NameTypeAgentLabel.TabIndex = 1;
            this.NameTypeAgentLabel.Text = "Тип | Наименование агента";
            // 
            // SaleYearLabel
            // 
            this.SaleYearLabel.AutoSize = true;
            this.SaleYearLabel.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SaleYearLabel.Location = new System.Drawing.Point(233, 55);
            this.SaleYearLabel.Name = "SaleYearLabel";
            this.SaleYearLabel.Size = new System.Drawing.Size(184, 23);
            this.SaleYearLabel.TabIndex = 2;
            this.SaleYearLabel.Text = "10 продаж за год";
            // 
            // PhoneLabel
            // 
            this.PhoneLabel.AutoSize = true;
            this.PhoneLabel.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.PhoneLabel.Location = new System.Drawing.Point(233, 88);
            this.PhoneLabel.Name = "PhoneLabel";
            this.PhoneLabel.Size = new System.Drawing.Size(182, 23);
            this.PhoneLabel.TabIndex = 3;
            this.PhoneLabel.Text = "+7 (111) 111-11-11";
            // 
            // PriorityLabel
            // 
            this.PriorityLabel.AutoSize = true;
            this.PriorityLabel.Font = new System.Drawing.Font("Century Gothic", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.PriorityLabel.Location = new System.Drawing.Point(233, 120);
            this.PriorityLabel.Name = "PriorityLabel";
            this.PriorityLabel.Size = new System.Drawing.Size(206, 23);
            this.PriorityLabel.TabIndex = 4;
            this.PriorityLabel.Text = "Приоритетность: 10";
            // 
            // PercentLabel
            // 
            this.PercentLabel.AutoSize = true;
            this.PercentLabel.Font = new System.Drawing.Font("Century Gothic", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.PercentLabel.Location = new System.Drawing.Point(937, 77);
            this.PercentLabel.Name = "PercentLabel";
            this.PercentLabel.Size = new System.Drawing.Size(77, 34);
            this.PercentLabel.TabIndex = 5;
            this.PercentLabel.Text = "10 %";
            // 
            // AgentPicture
            // 
            this.AgentPicture.Image = global::Eyes_Save.Properties.Resources.picture;
            this.AgentPicture.Location = new System.Drawing.Point(13, 12);
            this.AgentPicture.Name = "AgentPicture";
            this.AgentPicture.Size = new System.Drawing.Size(200, 144);
            this.AgentPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.AgentPicture.TabIndex = 0;
            this.AgentPicture.TabStop = false;
            // 
            // AgentCard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.PercentLabel);
            this.Controls.Add(this.PriorityLabel);
            this.Controls.Add(this.PhoneLabel);
            this.Controls.Add(this.SaleYearLabel);
            this.Controls.Add(this.NameTypeAgentLabel);
            this.Controls.Add(this.AgentPicture);
            this.Name = "AgentCard";
            this.Size = new System.Drawing.Size(1026, 170);
            ((System.ComponentModel.ISupportInitialize)(this.AgentPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox AgentPicture;
        private System.Windows.Forms.Label NameTypeAgentLabel;
        private System.Windows.Forms.Label SaleYearLabel;
        private System.Windows.Forms.Label PhoneLabel;
        private System.Windows.Forms.Label PriorityLabel;
        private System.Windows.Forms.Label PercentLabel;
    }
}
