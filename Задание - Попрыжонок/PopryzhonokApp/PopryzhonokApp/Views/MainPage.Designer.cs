
namespace PopryzhonokApp
{
    partial class MainPage
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

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainPage));
            this.panel1 = new System.Windows.Forms.Panel();
            this.DescCheckBox = new System.Windows.Forms.CheckBox();
            this.FilterComboBox = new System.Windows.Forms.ComboBox();
            this.SortComboBox = new System.Windows.Forms.ComboBox();
            this.ExitBtn = new System.Windows.Forms.Button();
            this.SearchTextBox = new System.Windows.Forms.TextBox();
            this.NameLbl = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.RangeLbl = new System.Windows.Forms.Label();
            this.RightLbl = new System.Windows.Forms.Label();
            this.Lbl4 = new System.Windows.Forms.Label();
            this.Lbl3 = new System.Windows.Forms.Label();
            this.Lbl2 = new System.Windows.Forms.Label();
            this.Lbl1 = new System.Windows.Forms.Label();
            this.LeftLbl = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(150)))), ((int)(((byte)(158)))));
            this.panel1.Controls.Add(this.DescCheckBox);
            this.panel1.Controls.Add(this.FilterComboBox);
            this.panel1.Controls.Add(this.SortComboBox);
            this.panel1.Controls.Add(this.ExitBtn);
            this.panel1.Controls.Add(this.SearchTextBox);
            this.panel1.Controls.Add(this.NameLbl);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1280, 129);
            this.panel1.TabIndex = 0;
            // 
            // DescCheckBox
            // 
            this.DescCheckBox.AutoSize = true;
            this.DescCheckBox.Font = new System.Drawing.Font("Comic Sans MS", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DescCheckBox.Location = new System.Drawing.Point(893, 82);
            this.DescCheckBox.Margin = new System.Windows.Forms.Padding(4);
            this.DescCheckBox.Name = "DescCheckBox";
            this.DescCheckBox.Size = new System.Drawing.Size(147, 28);
            this.DescCheckBox.TabIndex = 14;
            this.DescCheckBox.Text = "По убыванию";
            this.DescCheckBox.UseVisualStyleBackColor = true;
            this.DescCheckBox.CheckedChanged += new System.EventHandler(this.DescCheckBox_CheckedChanged);
            // 
            // FilterComboBox
            // 
            this.FilterComboBox.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.FilterComboBox.FormattingEnabled = true;
            this.FilterComboBox.Location = new System.Drawing.Point(1061, 77);
            this.FilterComboBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.FilterComboBox.Name = "FilterComboBox";
            this.FilterComboBox.Size = new System.Drawing.Size(207, 36);
            this.FilterComboBox.TabIndex = 13;
            this.FilterComboBox.SelectedIndexChanged += new System.EventHandler(this.FilterComboBox_SelectedIndexChanged);
            // 
            // SortComboBox
            // 
            this.SortComboBox.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SortComboBox.FormattingEnabled = true;
            this.SortComboBox.Items.AddRange(new object[] {
            "Без сортировки",
            "Наименование",
            "Приоритет"});
            this.SortComboBox.Location = new System.Drawing.Point(679, 77);
            this.SortComboBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.SortComboBox.Name = "SortComboBox";
            this.SortComboBox.Size = new System.Drawing.Size(207, 36);
            this.SortComboBox.TabIndex = 12;
            this.SortComboBox.SelectedIndexChanged += new System.EventHandler(this.SortComboBox_SelectedIndexChanged);
            // 
            // ExitBtn
            // 
            this.ExitBtn.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.ExitBtn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(67)))), ((int)(((byte)(220)))), ((int)(((byte)(254)))));
            this.ExitBtn.Font = new System.Drawing.Font("Comic Sans MS", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ExitBtn.ForeColor = System.Drawing.Color.Black;
            this.ExitBtn.Location = new System.Drawing.Point(1223, 11);
            this.ExitBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.ExitBtn.Name = "ExitBtn";
            this.ExitBtn.Size = new System.Drawing.Size(45, 46);
            this.ExitBtn.TabIndex = 11;
            this.ExitBtn.Text = "X";
            this.ExitBtn.UseVisualStyleBackColor = false;
            this.ExitBtn.Click += new System.EventHandler(this.ExitBtn_Click);
            // 
            // SearchTextBox
            // 
            this.SearchTextBox.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SearchTextBox.Location = new System.Drawing.Point(126, 77);
            this.SearchTextBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.SearchTextBox.Name = "SearchTextBox";
            this.SearchTextBox.Size = new System.Drawing.Size(531, 35);
            this.SearchTextBox.TabIndex = 10;
            this.SearchTextBox.TextChanged += new System.EventHandler(this.SearchTextBox_TextChanged);
            // 
            // NameLbl
            // 
            this.NameLbl.AutoSize = true;
            this.NameLbl.Font = new System.Drawing.Font("Comic Sans MS", 25.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.NameLbl.Location = new System.Drawing.Point(144, 14);
            this.NameLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NameLbl.Name = "NameLbl";
            this.NameLbl.Size = new System.Drawing.Size(297, 60);
            this.NameLbl.TabIndex = 9;
            this.NameLbl.Text = "Попрыжёнок";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(150)))), ((int)(((byte)(158)))));
            this.panel2.Controls.Add(this.RangeLbl);
            this.panel2.Controls.Add(this.RightLbl);
            this.panel2.Controls.Add(this.Lbl4);
            this.panel2.Controls.Add(this.Lbl3);
            this.panel2.Controls.Add(this.Lbl2);
            this.panel2.Controls.Add(this.Lbl1);
            this.panel2.Controls.Add(this.LeftLbl);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 783);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1280, 95);
            this.panel2.TabIndex = 1;
            // 
            // RangeLbl
            // 
            this.RangeLbl.AutoSize = true;
            this.RangeLbl.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.RangeLbl.ForeColor = System.Drawing.Color.Black;
            this.RangeLbl.Location = new System.Drawing.Point(525, 37);
            this.RangeLbl.Name = "RangeLbl";
            this.RangeLbl.Size = new System.Drawing.Size(182, 28);
            this.RangeLbl.TabIndex = 12;
            this.RangeLbl.Text = "Страница 10 из 10";
            this.RangeLbl.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // RightLbl
            // 
            this.RightLbl.AutoSize = true;
            this.RightLbl.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.RightLbl.Location = new System.Drawing.Point(1242, 40);
            this.RightLbl.Name = "RightLbl";
            this.RightLbl.Size = new System.Drawing.Size(20, 28);
            this.RightLbl.TabIndex = 11;
            this.RightLbl.Text = ">";
            this.RightLbl.Click += new System.EventHandler(this.RightLbl_Click);
            // 
            // Lbl4
            // 
            this.Lbl4.AutoSize = true;
            this.Lbl4.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.Lbl4.Location = new System.Drawing.Point(1219, 40);
            this.Lbl4.Name = "Lbl4";
            this.Lbl4.Size = new System.Drawing.Size(24, 28);
            this.Lbl4.TabIndex = 10;
            this.Lbl4.Text = "4";
            // 
            // Lbl3
            // 
            this.Lbl3.AutoSize = true;
            this.Lbl3.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.Lbl3.Location = new System.Drawing.Point(1198, 40);
            this.Lbl3.Name = "Lbl3";
            this.Lbl3.Size = new System.Drawing.Size(24, 28);
            this.Lbl3.TabIndex = 9;
            this.Lbl3.Text = "3";
            // 
            // Lbl2
            // 
            this.Lbl2.AutoSize = true;
            this.Lbl2.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.Lbl2.Location = new System.Drawing.Point(1177, 40);
            this.Lbl2.Name = "Lbl2";
            this.Lbl2.Size = new System.Drawing.Size(24, 28);
            this.Lbl2.TabIndex = 8;
            this.Lbl2.Text = "2";
            // 
            // Lbl1
            // 
            this.Lbl1.AutoSize = true;
            this.Lbl1.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.Lbl1.Location = new System.Drawing.Point(1154, 40);
            this.Lbl1.Name = "Lbl1";
            this.Lbl1.Size = new System.Drawing.Size(21, 28);
            this.Lbl1.TabIndex = 7;
            this.Lbl1.Text = "1";
            // 
            // LeftLbl
            // 
            this.LeftLbl.AutoSize = true;
            this.LeftLbl.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.LeftLbl.Location = new System.Drawing.Point(1131, 40);
            this.LeftLbl.Name = "LeftLbl";
            this.LeftLbl.Size = new System.Drawing.Size(20, 28);
            this.LeftLbl.TabIndex = 6;
            this.LeftLbl.Text = "<";
            this.LeftLbl.Click += new System.EventHandler(this.LeftLbl_Click);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.flowLayoutPanel1);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(0, 129);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1280, 654);
            this.panel3.TabIndex = 2;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoScroll = true;
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.White;
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1280, 654);
            this.flowLayoutPanel1.TabIndex = 0;
            this.flowLayoutPanel1.DoubleClick += new System.EventHandler(this.AgentCard_DoubleClick);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::PopryzhonokApp.Properties.Resources.Попрыженок;
            this.pictureBox1.Location = new System.Drawing.Point(12, 11);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(99, 98);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            // 
            // MainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1280, 878);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainPage";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Попрыжёнок";
            this.Load += new System.EventHandler(this.MainPage_Load);
            this.DoubleClick += new System.EventHandler(this.AgentCard_DoubleClick);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label NameLbl;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.TextBox SearchTextBox;
        private System.Windows.Forms.CheckBox DescCheckBox;
        private System.Windows.Forms.ComboBox FilterComboBox;
        private System.Windows.Forms.ComboBox SortComboBox;
        private System.Windows.Forms.Button ExitBtn;
        private System.Windows.Forms.Label RightLbl;
        private System.Windows.Forms.Label Lbl4;
        private System.Windows.Forms.Label Lbl3;
        private System.Windows.Forms.Label Lbl2;
        private System.Windows.Forms.Label Lbl1;
        private System.Windows.Forms.Label LeftLbl;
        private System.Windows.Forms.Label RangeLbl;
    }
}

