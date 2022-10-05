
namespace LopushokApp
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
            this.NameLbl = new System.Windows.Forms.Label();
            this.DescCheckBox = new System.Windows.Forms.CheckBox();
            this.FilterComboBox = new System.Windows.Forms.ComboBox();
            this.SortComboBox = new System.Windows.Forms.ComboBox();
            this.ExitBtn = new System.Windows.Forms.Button();
            this.SearchTextBox = new System.Windows.Forms.TextBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.RightLbl = new System.Windows.Forms.Label();
            this.Lbl4 = new System.Windows.Forms.Label();
            this.Lbl3 = new System.Windows.Forms.Label();
            this.Lbl2 = new System.Windows.Forms.Label();
            this.Lbl1 = new System.Windows.Forms.Label();
            this.LeftLbl = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.RangeLbl = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(206)))), ((int)(((byte)(255)))), ((int)(((byte)(249)))));
            this.panel1.Controls.Add(this.NameLbl);
            this.panel1.Controls.Add(this.DescCheckBox);
            this.panel1.Controls.Add(this.FilterComboBox);
            this.panel1.Controls.Add(this.SortComboBox);
            this.panel1.Controls.Add(this.ExitBtn);
            this.panel1.Controls.Add(this.SearchTextBox);
            this.panel1.Controls.Add(this.pictureBox1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1283, 157);
            this.panel1.TabIndex = 0;
            // 
            // NameLbl
            // 
            this.NameLbl.AutoSize = true;
            this.NameLbl.Font = new System.Drawing.Font("Gabriola", 24F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.NameLbl.ForeColor = System.Drawing.Color.Black;
            this.NameLbl.Location = new System.Drawing.Point(131, 15);
            this.NameLbl.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NameLbl.Name = "NameLbl";
            this.NameLbl.Size = new System.Drawing.Size(151, 74);
            this.NameLbl.TabIndex = 16;
            this.NameLbl.Text = "Лопушок";
            // 
            // DescCheckBox
            // 
            this.DescCheckBox.AutoSize = true;
            this.DescCheckBox.Font = new System.Drawing.Font("Gabriola", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.DescCheckBox.ForeColor = System.Drawing.Color.Black;
            this.DescCheckBox.Location = new System.Drawing.Point(897, 96);
            this.DescCheckBox.Margin = new System.Windows.Forms.Padding(4);
            this.DescCheckBox.Name = "DescCheckBox";
            this.DescCheckBox.Size = new System.Drawing.Size(147, 49);
            this.DescCheckBox.TabIndex = 21;
            this.DescCheckBox.Text = "По убыванию";
            this.DescCheckBox.UseVisualStyleBackColor = true;
            this.DescCheckBox.CheckedChanged += new System.EventHandler(this.DescCheckBox_CheckedChanged);
            // 
            // FilterComboBox
            // 
            this.FilterComboBox.BackColor = System.Drawing.Color.White;
            this.FilterComboBox.Font = new System.Drawing.Font("Gabriola", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.FilterComboBox.ForeColor = System.Drawing.Color.Black;
            this.FilterComboBox.FormattingEnabled = true;
            this.FilterComboBox.Location = new System.Drawing.Point(1075, 95);
            this.FilterComboBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.FilterComboBox.Name = "FilterComboBox";
            this.FilterComboBox.Size = new System.Drawing.Size(196, 50);
            this.FilterComboBox.TabIndex = 20;
            this.FilterComboBox.SelectedIndexChanged += new System.EventHandler(this.FilterComboBox_SelectedIndexChanged);
            // 
            // SortComboBox
            // 
            this.SortComboBox.BackColor = System.Drawing.Color.White;
            this.SortComboBox.Font = new System.Drawing.Font("Gabriola", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SortComboBox.ForeColor = System.Drawing.Color.Black;
            this.SortComboBox.FormattingEnabled = true;
            this.SortComboBox.Items.AddRange(new object[] {
            "Без сортировки",
            "Артикул",
            "Наименование",
            "Номер производственного цеха",
            "Минимальная стоимость для агента"});
            this.SortComboBox.Location = new System.Drawing.Point(683, 95);
            this.SortComboBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.SortComboBox.Name = "SortComboBox";
            this.SortComboBox.Size = new System.Drawing.Size(207, 50);
            this.SortComboBox.TabIndex = 19;
            this.SortComboBox.SelectedIndexChanged += new System.EventHandler(this.SortComboBox_SelectedIndexChanged);
            // 
            // ExitBtn
            // 
            this.ExitBtn.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.ExitBtn.AutoSize = true;
            this.ExitBtn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(204)))), ((int)(((byte)(118)))));
            this.ExitBtn.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ExitBtn.ForeColor = System.Drawing.Color.Black;
            this.ExitBtn.Location = new System.Drawing.Point(1225, 11);
            this.ExitBtn.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.ExitBtn.Name = "ExitBtn";
            this.ExitBtn.Size = new System.Drawing.Size(46, 61);
            this.ExitBtn.TabIndex = 18;
            this.ExitBtn.Text = "X";
            this.ExitBtn.UseVisualStyleBackColor = false;
            this.ExitBtn.Click += new System.EventHandler(this.ExitBtn_Click);
            // 
            // SearchTextBox
            // 
            this.SearchTextBox.BackColor = System.Drawing.Color.White;
            this.SearchTextBox.Font = new System.Drawing.Font("Gabriola", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.SearchTextBox.ForeColor = System.Drawing.Color.Black;
            this.SearchTextBox.Location = new System.Drawing.Point(120, 95);
            this.SearchTextBox.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.SearchTextBox.Name = "SearchTextBox";
            this.SearchTextBox.Size = new System.Drawing.Size(545, 47);
            this.SearchTextBox.TabIndex = 17;
            this.SearchTextBox.TextChanged += new System.EventHandler(this.SearchTextBox_TextChanged);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(15, 15);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(99, 98);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 15;
            this.pictureBox1.TabStop = false;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(206)))), ((int)(((byte)(255)))), ((int)(((byte)(249)))));
            this.panel2.Controls.Add(this.RangeLbl);
            this.panel2.Controls.Add(this.RightLbl);
            this.panel2.Controls.Add(this.Lbl4);
            this.panel2.Controls.Add(this.Lbl3);
            this.panel2.Controls.Add(this.Lbl2);
            this.panel2.Controls.Add(this.Lbl1);
            this.panel2.Controls.Add(this.LeftLbl);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 799);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1283, 84);
            this.panel2.TabIndex = 1;
            // 
            // RightLbl
            // 
            this.RightLbl.AutoSize = true;
            this.RightLbl.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.RightLbl.Location = new System.Drawing.Point(1238, 15);
            this.RightLbl.Name = "RightLbl";
            this.RightLbl.Size = new System.Drawing.Size(33, 51);
            this.RightLbl.TabIndex = 17;
            this.RightLbl.Text = ">";
            this.RightLbl.Click += new System.EventHandler(this.RightLbl_Click);
            // 
            // Lbl4
            // 
            this.Lbl4.AutoSize = true;
            this.Lbl4.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Lbl4.Location = new System.Drawing.Point(1207, 15);
            this.Lbl4.Name = "Lbl4";
            this.Lbl4.Size = new System.Drawing.Size(33, 51);
            this.Lbl4.TabIndex = 16;
            this.Lbl4.Text = "4";
            this.Lbl4.Click += new System.EventHandler(this.Lbl4_Click);
            // 
            // Lbl3
            // 
            this.Lbl3.AutoSize = true;
            this.Lbl3.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Lbl3.Location = new System.Drawing.Point(1177, 15);
            this.Lbl3.Name = "Lbl3";
            this.Lbl3.Size = new System.Drawing.Size(31, 51);
            this.Lbl3.TabIndex = 15;
            this.Lbl3.Text = "3";
            this.Lbl3.Click += new System.EventHandler(this.Lbl3_Click);
            // 
            // Lbl2
            // 
            this.Lbl2.AutoSize = true;
            this.Lbl2.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Lbl2.Location = new System.Drawing.Point(1147, 15);
            this.Lbl2.Name = "Lbl2";
            this.Lbl2.Size = new System.Drawing.Size(31, 51);
            this.Lbl2.TabIndex = 14;
            this.Lbl2.Text = "2";
            this.Lbl2.Click += new System.EventHandler(this.Lbl2_Click);
            // 
            // Lbl1
            // 
            this.Lbl1.AutoSize = true;
            this.Lbl1.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Lbl1.Location = new System.Drawing.Point(1119, 15);
            this.Lbl1.Name = "Lbl1";
            this.Lbl1.Size = new System.Drawing.Size(28, 51);
            this.Lbl1.TabIndex = 13;
            this.Lbl1.Text = "1";
            this.Lbl1.Click += new System.EventHandler(this.Lbl1_Click);
            // 
            // LeftLbl
            // 
            this.LeftLbl.AutoSize = true;
            this.LeftLbl.Font = new System.Drawing.Font("Gabriola", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.LeftLbl.Location = new System.Drawing.Point(1088, 15);
            this.LeftLbl.Name = "LeftLbl";
            this.LeftLbl.Size = new System.Drawing.Size(33, 51);
            this.LeftLbl.TabIndex = 12;
            this.LeftLbl.Text = "<";
            this.LeftLbl.Click += new System.EventHandler(this.LeftLbl_Click);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.flowLayoutPanel1);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(0, 157);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1283, 642);
            this.panel3.TabIndex = 2;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoScroll = true;
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.White;
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1283, 642);
            this.flowLayoutPanel1.TabIndex = 0;
            // 
            // RangeLbl
            // 
            this.RangeLbl.AutoSize = true;
            this.RangeLbl.Location = new System.Drawing.Point(588, 34);
            this.RangeLbl.Name = "RangeLbl";
            this.RangeLbl.Size = new System.Drawing.Size(46, 17);
            this.RangeLbl.TabIndex = 18;
            this.RangeLbl.Text = "label1";
            this.RangeLbl.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // MainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1283, 883);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.ForeColor = System.Drawing.Color.Black;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainPage";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Лопушок";
            this.Load += new System.EventHandler(this.MainPage_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.CheckBox DescCheckBox;
        private System.Windows.Forms.ComboBox FilterComboBox;
        private System.Windows.Forms.ComboBox SortComboBox;
        private System.Windows.Forms.Button ExitBtn;
        private System.Windows.Forms.TextBox SearchTextBox;
        private System.Windows.Forms.Label NameLbl;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Label RightLbl;
        private System.Windows.Forms.Label Lbl4;
        private System.Windows.Forms.Label Lbl3;
        private System.Windows.Forms.Label Lbl2;
        private System.Windows.Forms.Label Lbl1;
        private System.Windows.Forms.Label LeftLbl;
        private System.Windows.Forms.Label RangeLbl;
    }
}

