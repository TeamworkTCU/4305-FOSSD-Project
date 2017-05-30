using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calender
{
    public class PlanItem
    {
        private DateTime date;

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }

        private string job;

        public string Job
        {
            get { return job; }
            set { job = value; }
        }

        private Point fromTime;

        public Point FromTime
        {
            get { return fromTime; }
            set { fromTime = value; }
        }

        private Point toTime;

        public Point ToTime
        {
            get { return toTime; }
            set { toTime = value; }
        }

        private string status;

        public string Status
        {
            get { return status; }
            set { status = value; }
        }

        public static List<string> ListStatus = new List<string>() { "DONE", "DOING", "COMING", "MISSED" };
    }

    public enum EPlanItem
    {
        DONE,
        DOING,
        COMING,
        MISSED
    }
}
