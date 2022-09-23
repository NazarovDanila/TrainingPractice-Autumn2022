
namespace Schweika.Pages
{
    partial class ProductPage
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProductPage));
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.DescCheckBox = new System.Windows.Forms.CheckBox();
            this.SortCmb = new System.Windows.Forms.ComboBox();
            this.SearchTxt = new System.Windows.Forms.TextBox();
            this.PageName = new System.Windows.Forms.Label();
            this.Logo = new System.Windows.Forms.PictureBox();
            this.CloseBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).BeginInit();
            this.SuspendLayout();
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoScroll = true;
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.White;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(11, 218);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(695, 440);
            this.flowLayoutPanel1.TabIndex = 0;
            // 
            // DescCheckBox
            // 
            this.DescCheckBox.AutoSize = true;
            this.DescCheckBox.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DescCheckBox.ForeColor = System.Drawing.Color.White;
            this.DescCheckBox.Location = new System.Drawing.Point(562, 137);
            this.DescCheckBox.Margin = new System.Windows.Forms.Padding(4);
            this.DescCheckBox.Name = "DescCheckBox";
            this.DescCheckBox.Size = new System.Drawing.Size(147, 28);
            this.DescCheckBox.TabIndex = 10;
            this.DescCheckBox.Text = "По убыванию";
            this.DescCheckBox.UseVisualStyleBackColor = true;
            // 
            // SortCmb
            // 
            this.SortCmb.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SortCmb.ForeColor = System.Drawing.Color.Black;
            this.SortCmb.FormattingEnabled = true;
            this.SortCmb.Items.AddRange(new object[] {
            "Без сортировки",
            "Наименование",
            "Стоимость"});
            this.SortCmb.Location = new System.Drawing.Point(328, 133);
            this.SortCmb.Margin = new System.Windows.Forms.Padding(4);
            this.SortCmb.Name = "SortCmb";
            this.SortCmb.Size = new System.Drawing.Size(215, 32);
            this.SortCmb.TabIndex = 9;
            // 
            // SearchTxt
            // 
            this.SearchTxt.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SearchTxt.ForeColor = System.Drawing.Color.Black;
            this.SearchTxt.Location = new System.Drawing.Point(11, 173);
            this.SearchTxt.Margin = new System.Windows.Forms.Padding(4);
            this.SearchTxt.Name = "SearchTxt";
            this.SearchTxt.Size = new System.Drawing.Size(695, 31);
            this.SearchTxt.TabIndex = 8;
            this.SearchTxt.Text = "Введите для поиска";
            // 
            // PageName
            // 
            this.PageName.AutoSize = true;
            this.PageName.Font = new System.Drawing.Font("Comic Sans MS", 48F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.PageName.ForeColor = System.Drawing.Color.White;
            this.PageName.Location = new System.Drawing.Point(203, 12);
            this.PageName.Name = "PageName";
            this.PageName.Size = new System.Drawing.Size(340, 111);
            this.PageName.TabIndex = 13;
            this.PageName.Text = "Товары";
            // 
            // Logo
            // 
            this.Logo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(0)))), ((int)(((byte)(204)))));
            this.Logo.Location = new System.Drawing.Point(12, 12);
            this.Logo.Name = "Logo";
            this.Logo.Size = new System.Drawing.Size(103, 103);
            this.Logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.Logo.TabIndex = 14;
            this.Logo.TabStop = false;
            // 
            // CloseBtn
            // 
            this.CloseBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.CloseBtn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(153)))), ((int)(((byte)(0)))), ((int)(((byte)(153)))));
            this.CloseBtn.Font = new System.Drawing.Font("Comic Sans MS", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CloseBtn.ForeColor = System.Drawing.Color.White;
            this.CloseBtn.Location = new System.Drawing.Point(653, 12);
            this.CloseBtn.Name = "CloseBtn";
            this.CloseBtn.Size = new System.Drawing.Size(56, 56);
            this.CloseBtn.TabIndex = 15;
            this.CloseBtn.Text = "Х";
            this.CloseBtn.UseVisualStyleBackColor = false;
            this.CloseBtn.Click += new System.EventHandler(this.CloseBtn_Click_1);
            // 
            // ProductPage
            // 
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(0)))), ((int)(((byte)(204)))));
            this.ClientSize = new System.Drawing.Size(721, 714);
            this.Controls.Add(this.CloseBtn);
            this.Controls.Add(this.Logo);
            this.Controls.Add(this.PageName);
            this.Controls.Add(this.DescCheckBox);
            this.Controls.Add(this.SortCmb);
            this.Controls.Add(this.SearchTxt);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "ProductPage";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Товары";
            this.Load += new System.EventHandler(this.ProductPage_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.CheckBox DescCheckBox;
        private System.Windows.Forms.ComboBox SortCmb;
        private System.Windows.Forms.TextBox SearchTxt;
        private System.Windows.Forms.Label PageName;
        private System.Windows.Forms.PictureBox Logo;
        private System.Windows.Forms.Button CloseBtn;
    }
}