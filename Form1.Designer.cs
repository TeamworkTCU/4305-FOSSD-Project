namespace Calendar_PT
{
    partial class Form1
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel4 = new System.Windows.Forms.Panel();
            this.panel5 = new System.Windows.Forms.Panel();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.btnToday = new System.Windows.Forms.Button();
            this.btnMonday = new System.Windows.Forms.Button();
            this.btnTuesday = new System.Windows.Forms.Button();
            this.btnWed = new System.Windows.Forms.Button();
            this.btnThur = new System.Windows.Forms.Button();
            this.btnFri = new System.Windows.Forms.Button();
            this.btnSa = new System.Windows.Forms.Button();
            this.btnSun = new System.Windows.Forms.Button();
            this.btnBack = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
            this.chbNotify = new System.Windows.Forms.CheckBox();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(759, 404);
            this.panel1.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.panel5);
            this.panel2.Controls.Add(this.panel4);
            this.panel2.Location = new System.Drawing.Point(9, 37);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(747, 364);
            this.panel2.TabIndex = 0;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.numericUpDown1);
            this.panel3.Controls.Add(this.chbNotify);
            this.panel3.Controls.Add(this.btnToday);
            this.panel3.Controls.Add(this.dateTimePicker1);
            this.panel3.Location = new System.Drawing.Point(9, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(750, 28);
            this.panel3.TabIndex = 1;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.btnSun);
            this.panel4.Controls.Add(this.btnSa);
            this.panel4.Controls.Add(this.btnFri);
            this.panel4.Controls.Add(this.btnThur);
            this.panel4.Controls.Add(this.btnWed);
            this.panel4.Controls.Add(this.btnTuesday);
            this.panel4.Controls.Add(this.btnNext);
            this.panel4.Controls.Add(this.btnBack);
            this.panel4.Controls.Add(this.btnMonday);
            this.panel4.Location = new System.Drawing.Point(3, 3);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(747, 46);
            this.panel4.TabIndex = 0;
            this.panel4.Paint += new System.Windows.Forms.PaintEventHandler(this.panel4_Paint);
            // 
            // panel5
            // 
            this.panel5.Location = new System.Drawing.Point(90, 55);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(561, 306);
            this.panel5.TabIndex = 1;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(260, 5);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker1.TabIndex = 0;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // btnToday
            // 
            this.btnToday.Location = new System.Drawing.Point(482, 1);
            this.btnToday.Name = "btnToday";
            this.btnToday.Size = new System.Drawing.Size(75, 23);
            this.btnToday.TabIndex = 1;
            this.btnToday.Text = "Today";
            this.btnToday.UseVisualStyleBackColor = true;
            this.btnToday.Click += new System.EventHandler(this.btnToday_Click);
            // 
            // btnMonday
            // 
            this.btnMonday.Location = new System.Drawing.Point(118, 7);
            this.btnMonday.Name = "btnMonday";
            this.btnMonday.Size = new System.Drawing.Size(64, 36);
            this.btnMonday.TabIndex = 0;
            this.btnMonday.Text = "Thứ 2";
            this.btnMonday.UseVisualStyleBackColor = true;
            this.btnMonday.Click += new System.EventHandler(this.btnMonday_Click);
            // 
            // btnTuesday
            // 
            this.btnTuesday.Location = new System.Drawing.Point(188, 7);
            this.btnTuesday.Name = "btnTuesday";
            this.btnTuesday.Size = new System.Drawing.Size(67, 36);
            this.btnTuesday.TabIndex = 0;
            this.btnTuesday.Text = "Thứ 3";
            this.btnTuesday.UseVisualStyleBackColor = true;
            this.btnTuesday.Click += new System.EventHandler(this.btnTuesday_Click);
            // 
            // btnWed
            // 
            this.btnWed.Location = new System.Drawing.Point(261, 7);
            this.btnWed.Name = "btnWed";
            this.btnWed.Size = new System.Drawing.Size(66, 36);
            this.btnWed.TabIndex = 0;
            this.btnWed.Text = "Thứ 4";
            this.btnWed.UseVisualStyleBackColor = true;
            // 
            // btnThur
            // 
            this.btnThur.Location = new System.Drawing.Point(333, 7);
            this.btnThur.Name = "btnThur";
            this.btnThur.Size = new System.Drawing.Size(68, 36);
            this.btnThur.TabIndex = 0;
            this.btnThur.Text = "Thứ 5";
            this.btnThur.UseVisualStyleBackColor = true;
            this.btnThur.Click += new System.EventHandler(this.btnThur_Click);
            // 
            // btnFri
            // 
            this.btnFri.Location = new System.Drawing.Point(407, 7);
            this.btnFri.Name = "btnFri";
            this.btnFri.Size = new System.Drawing.Size(68, 36);
            this.btnFri.TabIndex = 0;
            this.btnFri.Text = "Thứ 6";
            this.btnFri.UseVisualStyleBackColor = true;
            this.btnFri.Click += new System.EventHandler(this.btnFri_Click);
            // 
            // btnSa
            // 
            this.btnSa.Location = new System.Drawing.Point(481, 7);
            this.btnSa.Name = "btnSa";
            this.btnSa.Size = new System.Drawing.Size(64, 36);
            this.btnSa.TabIndex = 0;
            this.btnSa.Text = "Thứ 7";
            this.btnSa.UseVisualStyleBackColor = true;
            // 
            // btnSun
            // 
            this.btnSun.Location = new System.Drawing.Point(551, 7);
            this.btnSun.Name = "btnSun";
            this.btnSun.Size = new System.Drawing.Size(66, 36);
            this.btnSun.TabIndex = 0;
            this.btnSun.Text = "Chủ Nhật";
            this.btnSun.UseVisualStyleBackColor = true;
            this.btnSun.Click += new System.EventHandler(this.btnSun_Click);
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(3, 3);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(75, 43);
            this.btnBack.TabIndex = 0;
            this.btnBack.Text = "Tháng Trước";
            this.btnBack.UseVisualStyleBackColor = true;
            // 
            // btnNext
            // 
            this.btnNext.Location = new System.Drawing.Point(666, 4);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(75, 43);
            this.btnNext.TabIndex = 0;
            this.btnNext.Text = "Tháng Sau";
            this.btnNext.UseVisualStyleBackColor = true;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // chbNotify
            // 
            this.chbNotify.AutoSize = true;
            this.chbNotify.Location = new System.Drawing.Point(6, 6);
            this.chbNotify.Name = "chbNotify";
            this.chbNotify.Size = new System.Drawing.Size(79, 17);
            this.chbNotify.TabIndex = 2;
            this.chbNotify.Text = "Thông Báo";
            this.chbNotify.UseVisualStyleBackColor = true;
            this.chbNotify.CheckedChanged += new System.EventHandler(this.chbNotify_CheckedChanged);
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(80, 5);
            this.numericUpDown1.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(52, 20);
            this.numericUpDown1.TabIndex = 3;
            this.numericUpDown1.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numericUpDown1.ValueChanged += new System.EventHandler(this.numericUpDown1_ValueChanged);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(783, 444);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Calendar";
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Button btnToday;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Button btnSun;
        private System.Windows.Forms.Button btnSa;
        private System.Windows.Forms.Button btnFri;
        private System.Windows.Forms.Button btnThur;
        private System.Windows.Forms.Button btnWed;
        private System.Windows.Forms.Button btnTuesday;
        private System.Windows.Forms.Button btnBack;
        private System.Windows.Forms.Button btnMonday;
        private System.Windows.Forms.Button btnNext;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.CheckBox chbNotify;
    }
}

