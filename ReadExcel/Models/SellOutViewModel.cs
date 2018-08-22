using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadExcel.Models
{
    public class SellOutViewModel
    {

        public string ID { get; set; }
        public string Name { get; set; }
        public string Store { get; set; }
        public string EmployeeCode { get; set; }
        public string EmployeeName { get; set; }
        public string SalesForceCode { get; set; }
        public string Parentcode { get; set; }
        public string SalesForceName { get; set; }
        public int? SalesForceLevel { get; set; }
        public string Target { get; set; }
        public string Perform { get; set; }
        public string Rate { get; set; }
        public int? LineID { get; set; }

    }
}