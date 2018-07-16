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
using log4net;
using ReadExcel.Repository;
using AutoMapper;

namespace ReadExcel.Controllers
{
    public class HomeController : Controller
    {
        private static readonly ILog Log =
              LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        GenericRepository<Person> userRepository = new GenericRepository<Person>();
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
            //List<Account> ls = userRepository.List.ToList();
            List<object> lst = Dt.AsEnumerable().ToList<object>();
            //List<Account> ls1 = new List<Account>();
           
            //var config = new MapperConfiguration(cfg => {

            //    cfg.CreateMap<AccountModel, Account>();

            //});
            //userRepository.BatchInsert(ls1);
            List<Person> employeeList = Dt.DataTableToList<Person>();
            //userRepository.BatchInsert(employeeList);
            DataTable Dts = ExcelPackageExtensions.ToDataTable(employeeList);
            Log.Info("Start log INFO...");
            ModelState.AddModelError("Error", "Ex: This login failed "+ employeeList.ElementAt(0).Fullname);
            ModelState.AddModelError("Error", "Ex: This login failed 1");
            return View(Dt);
            //}
            //return View();
        }
    }
}