
namespace Schweika.Pages
{
    partial class ProductCard
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
            this.PrPicture = new System.Windows.Forms.PictureBox();
            this.PrPriceLbl = new System.Windows.Forms.Label();
            this.PrManufacturerLbl = new System.Windows.Forms.Label();
            this.PrDescriptionLbl = new System.Windows.Forms.Label();
            this.PrDiscountLbl = new System.Windows.Forms.Label();
            this.PrNameLbl = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.PrPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // PrPicture
            // 
            this.PrPicture.Location = new System.Drawing.Point(16, 15);
            this.PrPicture.Name = "PrPicture";
            this.PrPicture.Size = new System.Drawing.Size(222, 128);
            this.PrPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.PrPicture.TabIndex = 0;
            this.PrPicture.TabStop = false;
            // 
            // PrPriceLbl
            // 
            this.PrPriceLbl.AutoSize = true;
            this.PrPriceLbl.BackColor = System.Drawing.Color.White;
            this.PrPriceLbl.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.PrPriceLbl.ForeColor = System.Drawing.Color.Black;
            this.PrPriceLbl.Location = new System.Drawing.Point(283, 121);
            this.PrPriceLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.PrPriceLbl.Name = "PrPriceLbl";
            this.PrPriceLbl.Size = new System.Drawing.Size(64, 26);
            this.PrPriceLbl.TabIndex = 10;
            this.PrPriceLbl.Text = "Цена:";
            // 
            // PrManufacturerLbl
            // 
            this.PrManufacturerLbl.AutoSize = true;
            this.PrManufacturerLbl.BackColor = System.Drawing.Color.White;
            this.PrManufacturerLbl.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.PrManufacturerLbl.ForeColor = System.Drawing.Color.Black;
            this.PrManufacturerLbl.Location = new System.Drawing.Point(279, 79);
            this.PrManufacturerLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.PrManufacturerLbl.Name = "PrManufacturerLbl";
            this.PrManufacturerLbl.Size = new System.Drawing.Size(160, 26);
            this.PrManufacturerLbl.TabIndex = 9;
            this.PrManufacturerLbl.Text = "Производитель:";
            // 
            // PrDescriptionLbl
            // 
            this.PrDescriptionLbl.AutoSize = true;
            this.PrDescriptionLbl.BackColor = System.Drawing.Color.White;
            this.PrDescriptionLbl.Font = new System.Drawing.Font("Comic Sans MS", 11.25F);
            this.PrDescriptionLbl.ForeColor = System.Drawing.Color.Black;
            this.PrDescriptionLbl.Location = new System.Drawing.Point(279, 48);
            this.PrDescriptionLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.PrDescriptionLbl.Name = "PrDescriptionLbl";
            this.PrDescriptionLbl.Size = new System.Drawing.Size(170, 26);
            this.PrDescriptionLbl.TabIndex = 8;
            this.PrDescriptionLbl.Text = "Описание товара";
            // 
            // PrDiscountLbl
            // 
            this.PrDiscountLbl.AutoSize = true;
            this.PrDiscountLbl.BackColor = System.Drawing.Color.White;
            this.PrDiscountLbl.Font = new System.Drawing.Font("Comic Sans MS", 11.25F, System.Drawing.FontStyle.Bold);
            this.PrDiscountLbl.ForeColor = System.Drawing.Color.Black;
            this.PrDiscountLbl.Location = new System.Drawing.Point(806, 15);
            this.PrDiscountLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.PrDiscountLbl.Name = "PrDiscountLbl";
            this.PrDiscountLbl.Size = new System.Drawing.Size(52, 27);
            this.PrDiscountLbl.TabIndex = 7;
            this.PrDiscountLbl.Text = "10%";
            // 
            // PrNameLbl
            // 
            this.PrNameLbl.AutoSize = true;
            this.PrNameLbl.BackColor = System.Drawing.Color.White;
            this.PrNameLbl.Font = new System.Drawing.Font("Comic Sans MS", 11.25F, System.Drawing.FontStyle.Bold);
            this.PrNameLbl.ForeColor = System.Drawing.Color.Black;
            this.PrNameLbl.Location = new System.Drawing.Point(279, 15);
            this.PrNameLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.PrNameLbl.Name = "PrNameLbl";
            this.PrNameLbl.Size = new System.Drawing.Size(222, 27);
            this.PrNameLbl.TabIndex = 6;
            this.PrNameLbl.Text = "Наименование товара";
            // 
            // ProductCard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.PrPriceLbl);
            this.Controls.Add(this.PrManufacturerLbl);
            this.Controls.Add(this.PrDescriptionLbl);
            this.Controls.Add(this.PrDiscountLbl);
            this.Controls.Add(this.PrNameLbl);
            this.Controls.Add(this.PrPicture);
            this.Name = "ProductCard";
            this.Size = new System.Drawing.Size(881, 159);
            ((System.ComponentModel.ISupportInitialize)(this.PrPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox PrPicture;
        private System.Windows.Forms.Label PrPriceLbl;
        private System.Windows.Forms.Label PrManufacturerLbl;
        private System.Windows.Forms.Label PrDescriptionLbl;
        private System.Windows.Forms.Label PrDiscountLbl;
        private System.Windows.Forms.Label PrNameLbl;
    }
}
