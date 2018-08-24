using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ReadExcel.Models
{
    
    public class SalesForcVIewModel
    {
        public List<Parent> StateModel { get; set; }
        public SelectList FilteredCity { get; set; }
    }
    public class Parent
    {
        public string Id { get; set; }
        public string ParName { get; set; }
    }
    public class Children
    {
        public string Id { get; set; }
        public string ParentId { get; set; }
        public string ChilName { get; set; }
    }
}