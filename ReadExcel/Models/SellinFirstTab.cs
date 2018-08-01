using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadExcel.Models
{
    public class SellinFirstTab
    {
        public string Day { get; set; }
        public string Region { get; set; }
        public string KeyAccount { get; set; }
        public string Channel { get; set; }
        public string Archive { get; set; }
        public string LastMonth { get; set; }
        public string TargetMonth { get; set; }
        public string TargetDate { get; set; }
        public string Actual { get; set; }
        public string Growth { get; set; }
        public string GrowthLastMonth { get; set; }
        public string PercentTarget { get; set; }
        public string TargetWeek { get; set; }
        public string ActualWeek { get; set; }
        public string PercentWeek { get; set; }
        public string CurrentDate { get; set; }

    }
}