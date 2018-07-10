using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using OfficeOpenXml;
using ReadExcel.Models;
using System.Data;
using OfficeOpenXml.FormulaParsing.Excel.Functions.Text;

namespace ReadExcel.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ReadExcelUsingEpplus()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ReadExcel(HttpPostedFileBase upload)
        {
            //if (Path.GetExtension(upload.FileName) == ".xlsx" || Path.GetExtension(upload.FileName) == ".xls")
            //{
            ExcelPackage package = new ExcelPackage(upload.InputStream);
            DataTable Dt = ExcelPackageExtensions.ToDataTable(package);

            List<object> lst = Dt.AsEnumerable().ToList<object>();

            List<PeopleViewModel> employeeList = Dt.DataTableToList<PeopleViewModel>();
            DataTable Dts = ExcelPackageExtensions.ToDataTable(employeeList);


            return View(Dt);
            //}
            //return View();
        }
    }
}