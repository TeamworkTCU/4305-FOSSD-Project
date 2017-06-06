using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Calendar_PT
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            LoadMatrix();
        }
        void LoadMatrix()
        {
            Button oldBtn = new Button() { Width=-0, Height=0,Location = new Point(0,0)};
            for (int j = 0; j < Cons.DayOfColumn; j++)
            { for (int i = 0; i < Cons.DayOfWeek; i++) {
                    Button btn = new Button() { Width = Cons.dateButtonWidth +Cons.margin, Height = Cons.dateButtonHeight };
                    btn.Location = new Point(oldBtn.Location.X + oldBtn.Width, oldBtn.Location.Y);
                    pnlMatrix.Controls.Add(btn);
                    oldBtn = btn;

                }
                oldBtn = new Button() { Width = 0, Height = 0, Location = new Point(0, oldBtn.Location.Y + Cons.dateButtonHeight) };
            }


        }
        private void btnMonday_Click(object sender, EventArgs e)
        {

        }

        private void btnToday_Click(object sender, EventArgs e)
        {

        }

        private void chbNotify_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void btnNext_Click(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void btnThur_Click(object sender, EventArgs e)
        {

        }

        private void btnFri_Click(object sender, EventArgs e)
        {

        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnSun_Click(object sender, EventArgs e)
        {

        }

        private void btnTuesday_Click(object sender, EventArgs e)
        {

        }

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void panel5_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnWed_Click(object sender, EventArgs e)
        {

        }
    }
}

