using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Serialization;

namespace Calender
{
    public partial class Form1 : Form
    {
        #region Peoperties   

        private int appTime;

        public int AppTime
        {
            get { return appTime; }
            set { appTime = value; }
        }

        private string filePath = "data.xml";

        private List<List<Button>> matrix;

        public List<List<Button>> Matrix
        {
            get { return matrix; }
            set { matrix = value; }
        }

        private PlanData job;

        public PlanData Job
        {
            get { return job; }
            set { job = value; }
        }

        private List<string> dateOfWeek = new List<string>() { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" };
        #endregion
        public Form1()
        {
            InitializeComponent();
            tmNotify.Start();
            appTime = 0;
            LoadMatrix();

            try
            {
                Job = DeserializeFromXML(filePath) as PlanData;
            }
            catch
            {
                SetDefaultJob();
            }
        }

        void SetDefaultJob()
        {
            Job = new PlanData();
            Job.Job = new List<PlanItem>();
            Job.Job.Add(new PlanItem()
            {
                Date = DateTime.Now,
                FromTime = new Point(4, 0),
                ToTime = new Point(5, 0),
                Job = "Thử nghiệm thôi",
                Status = PlanItem.ListStatus[(int)EPlanItem.COMING]
            });
        }

        void LoadMatrix()
        {
            Matrix = new List<List<Button>>();

            Button oldBtn = new Button() { Width = 0, Height = 0, Location = new Point(-Cons.margin, 0) };
            for (int i = 0; i < Cons.DayOfColumn; i++)
            {
                Matrix.Add(new List<Button>());
                for (int j = 0; j < Cons.DayOfWeek; j++)
                {
                    Button btn = new Button() { Width = Cons.dateButtonWidth, Height = Cons.dateButtonHeight };
                    btn.Location = new Point(oldBtn.Location.X + oldBtn.Width + Cons.margin, oldBtn.Location.Y);
                    btn.Click += btn_Click;

                    pnlMatrix.Controls.Add(btn);
                    Matrix[i].Add(btn);

                    oldBtn = btn;
                }
                oldBtn = new Button() { Width = 0, Height = 0, Location = new Point(-Cons.margin, oldBtn.Location.Y + Cons.dateButtonHeight) };
            }

            SetDefaultDate();
        }

        void btn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((sender as Button).Text))
                return;
            DailyPlan daily = new DailyPlan(new DateTime(dtpkDate.Value.Year, dtpkDate.Value.Month, Convert.ToInt32((sender as Button).Text)), Job);
            daily.ShowDialog();
        }

        int DayOfMonth(DateTime date)
        {
            switch (date.Month)
            {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                    return 31;
                case 2:
                    if ((date.Year % 4 == 0 && date.Year % 100 != 0) || date.Year % 400 == 0)
                        return 29;
                    else
                        return 28;
                default:
                    return 30; ;
            }
        }

        void AddNumberIntoMatrixByDate(DateTime date)
        {
            ClearMatrix();
            DateTime useDate = new DateTime(date.Year, date.Month, 1);

            int line = 0;

            for (int i = 1; i <= DayOfMonth(date); i++)
            {
                int column = dateOfWeek.IndexOf(useDate.DayOfWeek.ToString());
                Button btn = Matrix[line][column];
                btn.Text = i.ToString();

                if (isEqualDate(useDate, DateTime.Now))
                {
                    btn.BackColor = Color.Yellow;
                }

                if (isEqualDate(useDate, date))
                {
                    btn.BackColor = Color.Aqua;
                }

                if (column >= 6)
                    line++;

                useDate = useDate.AddDays(1);
            }
        }

        bool isEqualDate(DateTime dateA, DateTime dateB)
        {
            return dateA.Year == dateB.Year && dateA.Month == dateB.Month && dateA.Day == dateB.Day;
        }

        void ClearMatrix()
        {
            for (int i = 0; i < Matrix.Count; i++)
            {
                for (int j = 0; j < Matrix[i].Count; j++)
                {
                    Button btn = Matrix[i][j];
                    btn.Text = "";
                    btn.BackColor = Color.WhiteSmoke;
                }
            }
        }

        void SetDefaultDate()
        {
            dtpkDate.Value = DateTime.Now;
        }

        private void dtpkDate_ValueChanged(object sender, EventArgs e)
        {
            AddNumberIntoMatrixByDate((sender as DateTimePicker).Value);
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            dtpkDate.Value = dtpkDate.Value.AddMonths(1);
        }

        private void btnPreviours_Click(object sender, EventArgs e)
        {
            dtpkDate.Value = dtpkDate.Value.AddMonths(-1);
        }

        private void btnToDay_Click(object sender, EventArgs e)
        {
            SetDefaultDate();
        }

        private void SerializeToXML(object data, string filePath)
        {
            FileStream fs = new FileStream(filePath, FileMode.OpenOrCreate, FileAccess.Write);
            XmlSerializer sr = new XmlSerializer(typeof(PlanData));

            sr.Serialize(fs, data);

            fs.Close();
        }

        private object DeserializeFromXML(string filePath)
        {
            FileStream fs = new FileStream(filePath, FileMode.Open, FileAccess.Read);
            try
            {
                XmlSerializer sr = new XmlSerializer(typeof(PlanData));

                object result = sr.Deserialize(fs);
                fs.Close();
                return result;
            }
            catch (Exception e)
            {
                fs.Close();
                throw new NotImplementedException();
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            SerializeToXML(Job, filePath);
        }

        private void tmNotify_Tick(object sender, EventArgs e)
        {
            if (!ckbNotify.Checked)
                return;

            AppTime++;

            if (AppTime < Cons.notifyTime)
                return;

            if (Job == null || Job.Job == null)
                return;

            DateTime currentDate = DateTime.Now;
            List<PlanItem> todayjobs = Job.Job.Where(p => p.Date.Year == currentDate.Year && p.Date.Month == currentDate.Month && p.Date.Day == currentDate.Day).ToList();
            Notify.ShowBalloonTip(Cons.notifyTimeOut, "Lịch công việc", string.Format("Bạn có {0} việc trong ngày hôm nay", todayjobs.Count), ToolTipIcon.Info);

            AppTime = 0;
        }

        private void nmNotify_ValueChanged(object sender, EventArgs e)
        {
            Cons.notifyTime = (int)nmNotify.Value;
        }

        private void ckbNotify_CheckedChanged(object sender, EventArgs e)
        {
            nmNotify.Enabled = ckbNotify.Checked;
        }
    }
}
