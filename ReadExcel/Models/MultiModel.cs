using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ReadExcel.Models
{
    public class MultiModel
    {
        public SalesForcVIewModel SalesForce { get; set; }
        public DataTable Dt  { get; set; }
        public List<string> SelectedList { get; set; }
    }
}