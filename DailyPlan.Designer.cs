namespace Calender
{
    partial class DailyPlan
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
            this.pnlJob = new System.Windows.Forms.Panel();
            this.dtpkDate = new System.Windows.Forms.DateTimePicker();
            this.mnsMain = new System.Windows.Forms.MenuStrip();
            this.mnsiAddJob = new System.Windows.Forms.ToolStripMenuItem();
            this.mnsiToDay = new System.Windows.Forms.ToolStripMenuItem();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnNextDay = new System.Windows.Forms.Button();
            this.btnPrevioursDay = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.mnsMain.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Controls.Add(this.pnlJob);
            this.panel1.Location = new System.Drawing.Point(12, 27);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(754, 484);
            this.panel1.TabIndex = 0;
            // 
            // pnlJob
            // 
            this.pnlJob.Location = new System.Drawing.Point(3, 32);
            this.pnlJob.Name = "pnlJob";
            this.pnlJob.Size = new System.Drawing.Size(748, 447);
            this.pnlJob.TabIndex = 0;
            // 
            // dtpkDate
            // 
            this.dtpkDate.Location = new System.Drawing.Point(265, 4);
            this.dtpkDate.Name = "dtpkDate";
            this.dtpkDate.Size = new System.Drawing.Size(200, 20);
            this.dtpkDate.TabIndex = 1;
            // 
            // mnsMain
            // 
            this.mnsMain.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnsiAddJob,
            this.mnsiToDay});
            this.mnsMain.Location = new System.Drawing.Point(0, 0);
            this.mnsMain.Name = "mnsMain";
            this.mnsMain.Size = new System.Drawing.Size(775, 24);
            this.mnsMain.TabIndex = 1;
            this.mnsMain.Text = "menuStrip1";
            // 
            // mnsiAddJob
            // 
            this.mnsiAddJob.Name = "mnsiAddJob";
            this.mnsiAddJob.Size = new System.Drawing.Size(74, 20);
            this.mnsiAddJob.Text = "Thêm việc";
            // 
            // mnsiToDay
            // 
            this.mnsiToDay.Name = "mnsiToDay";
            this.mnsiToDay.Size = new System.Drawing.Size(68, 20);
            this.mnsiToDay.Text = "Hôm nay";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnPrevioursDay);
            this.panel3.Controls.Add(this.btnNextDay);
            this.panel3.Controls.Add(this.dtpkDate);
            this.panel3.Location = new System.Drawing.Point(3, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(748, 27);
            this.panel3.TabIndex = 1;
            // 
            // btnNextDay
            // 
            this.btnNextDay.Location = new System.Drawing.Point(670, 3);
            this.btnNextDay.Name = "btnNextDay";
            this.btnNextDay.Size = new System.Drawing.Size(75, 23);
            this.btnNextDay.TabIndex = 2;
            this.btnNextDay.Text = "Ngày mai";
            this.btnNextDay.UseVisualStyleBackColor = true;
            // 
            // btnPrevioursDay
            // 
            this.btnPrevioursDay.Location = new System.Drawing.Point(3, 1);
            this.btnPrevioursDay.Name = "btnPrevioursDay";
            this.btnPrevioursDay.Size = new System.Drawing.Size(75, 23);
            this.btnPrevioursDay.TabIndex = 3;
            this.btnPrevioursDay.Text = "Hôm qua";
            this.btnPrevioursDay.UseVisualStyleBackColor = true;
            // 
            // DailyPlan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(775, 511);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.mnsMain);
            this.MainMenuStrip = this.mnsMain;
            this.Name = "DailyPlan";
            this.Text = "Lịch trong ngày";
            this.panel1.ResumeLayout(false);
            this.mnsMain.ResumeLayout(false);
            this.mnsMain.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnPrevioursDay;
        private System.Windows.Forms.Button btnNextDay;
        private System.Windows.Forms.DateTimePicker dtpkDate;
        private System.Windows.Forms.Panel pnlJob;
        private System.Windows.Forms.MenuStrip mnsMain;
        private System.Windows.Forms.ToolStripMenuItem mnsiAddJob;
        private System.Windows.Forms.ToolStripMenuItem mnsiToDay;
    }
}