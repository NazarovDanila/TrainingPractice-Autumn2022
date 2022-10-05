
namespace LopushokApp.Views.PartialView
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProductCard));
            this.CostLbl = new System.Windows.Forms.Label();
            this.MaterialLbl = new System.Windows.Forms.Label();
            this.ArticleLbl = new System.Windows.Forms.Label();
            this.NameTypeProductLbl = new System.Windows.Forms.Label();
            this.ProductPicture = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.ProductPicture)).BeginInit();
            this.SuspendLayout();
            // 
            // CostLbl
            // 
            this.CostLbl.AutoSize = true;
            this.CostLbl.BackColor = System.Drawing.Color.White;
            this.CostLbl.Font = new System.Drawing.Font("Gabriola", 16.2F);
            this.CostLbl.ForeColor = System.Drawing.Color.Black;
            this.CostLbl.Location = new System.Drawing.Point(1118, 12);
            this.CostLbl.Name = "CostLbl";
            this.CostLbl.Size = new System.Drawing.Size(131, 51);
            this.CostLbl.TabIndex = 17;
            this.CostLbl.Text = "Стоимость";
            this.CostLbl.DoubleClick += new System.EventHandler(this.CostLbl_DoubleClick);
            // 
            // MaterialLbl
            // 
            this.MaterialLbl.BackColor = System.Drawing.Color.White;
            this.MaterialLbl.Font = new System.Drawing.Font("Gabriola", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.MaterialLbl.ForeColor = System.Drawing.Color.Black;
            this.MaterialLbl.Location = new System.Drawing.Point(226, 99);
            this.MaterialLbl.Name = "MaterialLbl";
            this.MaterialLbl.Size = new System.Drawing.Size(1023, 90);
            this.MaterialLbl.TabIndex = 15;
            this.MaterialLbl.Text = "Материалы: материал1, материал2, материал3,\r\nматериал4, ..., материалN";
            this.MaterialLbl.DoubleClick += new System.EventHandler(this.MaterialLbl_DoubleClick);
            // 
            // ArticleLbl
            // 
            this.ArticleLbl.AutoSize = true;
            this.ArticleLbl.BackColor = System.Drawing.Color.White;
            this.ArticleLbl.Font = new System.Drawing.Font("Gabriola", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ArticleLbl.ForeColor = System.Drawing.Color.Black;
            this.ArticleLbl.Location = new System.Drawing.Point(226, 54);
            this.ArticleLbl.Name = "ArticleLbl";
            this.ArticleLbl.Size = new System.Drawing.Size(90, 45);
            this.ArticleLbl.TabIndex = 14;
            this.ArticleLbl.Text = "Артикул";
            this.ArticleLbl.DoubleClick += new System.EventHandler(this.ArticleLbl_DoubleClick);
            // 
            // NameTypeProductLbl
            // 
            this.NameTypeProductLbl.AutoSize = true;
            this.NameTypeProductLbl.BackColor = System.Drawing.Color.White;
            this.NameTypeProductLbl.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.NameTypeProductLbl.ForeColor = System.Drawing.Color.Black;
            this.NameTypeProductLbl.Location = new System.Drawing.Point(225, 12);
            this.NameTypeProductLbl.Name = "NameTypeProductLbl";
            this.NameTypeProductLbl.Size = new System.Drawing.Size(391, 51);
            this.NameTypeProductLbl.TabIndex = 13;
            this.NameTypeProductLbl.Text = "Тип продукта | Наименование продукта";
            this.NameTypeProductLbl.DoubleClick += new System.EventHandler(this.NameTypeProductLbl_DoubleClick);
            // 
            // ProductPicture
            // 
            this.ProductPicture.BackColor = System.Drawing.Color.White;
            this.ProductPicture.Image = ((System.Drawing.Image)(resources.GetObject("ProductPicture.Image")));
            this.ProductPicture.Location = new System.Drawing.Point(20, 32);
            this.ProductPicture.Name = "ProductPicture";
            this.ProductPicture.Size = new System.Drawing.Size(200, 144);
            this.ProductPicture.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.ProductPicture.TabIndex = 12;
            this.ProductPicture.TabStop = false;
            this.ProductPicture.DoubleClick += new System.EventHandler(this.ProductPicture_DoubleClick);
            // 
            // ProductCard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.Controls.Add(this.CostLbl);
            this.Controls.Add(this.MaterialLbl);
            this.Controls.Add(this.ArticleLbl);
            this.Controls.Add(this.NameTypeProductLbl);
            this.Controls.Add(this.ProductPicture);
            this.Name = "ProductCard";
            this.Size = new System.Drawing.Size(1264, 203);
            this.DoubleClick += new System.EventHandler(this.ProductCard_DoubleClick);
            ((System.ComponentModel.ISupportInitialize)(this.ProductPicture)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label CostLbl;
        private System.Windows.Forms.Label MaterialLbl;
        private System.Windows.Forms.Label ArticleLbl;
        private System.Windows.Forms.Label NameTypeProductLbl;
        private System.Windows.Forms.PictureBox ProductPicture;
    }
}
