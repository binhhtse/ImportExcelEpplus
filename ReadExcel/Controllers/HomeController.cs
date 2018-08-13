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
using System.Globalization;

namespace ReadExcel.Controllers
{
    public class HomeController : Controller
    {
        private static readonly ILog Log =
              LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        GenericRepository<SellinFirstTab> userRepository = new GenericRepository<SellinFirstTab>();
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
            DataTable[] Dt = ExcelPackageExtensions.ToDataTable(package);
            //List<Account> ls = userRepository.List.ToList();

            //List<object> lst = Dt.AsEnumerable().ToList<object>();

            //List<Person> employeeList = Dt.DataTableToList<Person>();

            List<SellinFirstTab> tab1 = Dt[0].DataTableToList<SellinFirstTab>();
            List<SellinFirstTab> tab2 = Dt[1].DataTableToList<SellinFirstTab>();
            String date = tab1.ElementAt(tab1.Count - 1).Day; //   07/22/2013
            int numberOfWork = 0;
            int month = 0;
            int year = 0;
            if (date.Length == 9)
            {
                 month = int.Parse(date.Substring(0,1));
                 year = int.Parse(date.Substring(5, 4));
            }
            else
            {
                 month = int.Parse(date.Substring(0, 2));
                 year = int.Parse(date.Substring(6, 4));
            }
            numberOfWork = ExcelPackageExtensions.CountWorkingDay(year, month);
            for (int i = 1; i < tab1.Count; i++)
            {

                if (tab1.ElementAt(i).TargetMonth.Trim() == "0" || tab1.ElementAt(i).TargetMonth.Trim() == "-" )
                {
                    tab1.ElementAt(i).TargetDate = "0";
                }
                else
                {
                    var targetDate = (double.Parse(tab1.ElementAt(i).TargetMonth) / numberOfWork) ;
                    tab1.ElementAt(i).TargetDate = String.Format("{0:0.00}", targetDate);
                }
                if (tab1.ElementAt(i).Archive.Trim() == "0" || tab1.ElementAt(i).Archive.Trim() == "-" ||
                   tab1.ElementAt(i).Actual.Trim() == "0" || tab1.ElementAt(i).Actual.Trim() == "-")
                {
                    tab1.ElementAt(i).Growth = "0";
                }
                else
                {
                    var growth = (double.Parse(tab1.ElementAt(i).Actual) / double.Parse(tab1.ElementAt(i).Archive)) * 100;
                    tab1.ElementAt(i).Growth = String.Format("{0:0.00}", growth);
                }
                if (tab1.ElementAt(i).LastMonth.Trim() == "0" || tab1.ElementAt(i).LastMonth.Trim() == "-" ||
                    tab1.ElementAt(i).Actual.Trim() == "0" || tab1.ElementAt(i).Actual.Trim() == "-")
                {
                    tab1.ElementAt(i).GrowthLastMonth = "0";
                }
                else
                {
                    var growthLastMonth = (double.Parse(tab1.ElementAt(i).Actual) / double.Parse(tab1.ElementAt(i).LastMonth)) * 100;
                    tab1.ElementAt(i).GrowthLastMonth = String.Format("{0:0.00}", growthLastMonth);
                }
                if (tab1.ElementAt(i).TargetMonth.Trim() == "0" || tab1.ElementAt(i).TargetMonth.Trim() == "-" ||
                    tab1.ElementAt(i).Actual.Trim() == "0" || tab1.ElementAt(i).Actual.Trim() == "-")
                {
                    tab1.ElementAt(i).PercentTarget = "0";
                }
                else
                {
                    var percentTarget = (double.Parse(tab1.ElementAt(i).Actual) / double.Parse(tab1.ElementAt(i).TargetMonth)) * 100;
                    tab1.ElementAt(i).PercentTarget = String.Format("{0:0.00}", percentTarget);
                }
                if (tab1.ElementAt(i).TargetWeek.Trim() == "0" || tab1.ElementAt(i).TargetWeek.Trim() == "-" ||
                    tab1.ElementAt(i).ActualWeek.Trim() == "0" || tab1.ElementAt(i).ActualWeek.Trim() == "-")
                {
                    tab1.ElementAt(i).PercentWeek = "0";
                }
                else
                {
                    var percentWeek = (double.Parse(tab1.ElementAt(i).ActualWeek) / double.Parse(tab1.ElementAt(i).TargetWeek)) * 100;
                    tab1.ElementAt(i).PercentWeek = String.Format("{0:0.00}", percentWeek);
                }

                tab1.ElementAt(i).LastUpdated = DateTime.Now.ToShortDateString();
                tab1.ElementAt(i).Tab = "1";
            }
            for (int i = 1; i < tab2.Count; i++)
            {

                if (tab2.ElementAt(i).TargetMonth.Trim() == "0" || tab2.ElementAt(i).TargetMonth.Trim() == "-")
                {
                    tab2.ElementAt(i).TargetDate = "0";
                }
                else
                {
                    var targetDate = (double.Parse(tab2.ElementAt(i).TargetMonth) / numberOfWork);
                    tab2.ElementAt(i).TargetDate = String.Format("{0:0.00}", targetDate);
                }
                if (tab2.ElementAt(i).Archive.Trim() == "0" || tab2.ElementAt(i).Archive.Trim() == "-" ||
                  tab2.ElementAt(i).Actual.Trim() == "0" || tab2.ElementAt(i).Actual.Trim() == "-")
                {
                    tab2.ElementAt(i).Growth = "0";
                }
                else
                {
                    var growth = (double.Parse(tab2.ElementAt(i).Actual) / double.Parse(tab2.ElementAt(i).Archive)) * 100;
                    tab2.ElementAt(i).Growth = String.Format("{0:0.00}", growth);
                }
                if (tab2.ElementAt(i).LastMonth.Trim() == "0" || tab2.ElementAt(i).LastMonth.Trim() == "-" ||
                    tab2.ElementAt(i).Actual.Trim() == "0" || tab2.ElementAt(i).Actual.Trim() == "-")
                {
                    tab2.ElementAt(i).GrowthLastMonth = "0";
                }
                else
                {
                    var growthLastMonth = (double.Parse(tab2.ElementAt(i).Actual) / double.Parse(tab2.ElementAt(i).LastMonth)) * 100;
                    tab2.ElementAt(i).GrowthLastMonth = String.Format("{0:0.00}", growthLastMonth);
                }
                if (tab2.ElementAt(i).TargetMonth.Trim() == "0" || tab2.ElementAt(i).TargetMonth.Trim() == "-" ||
                    tab2.ElementAt(i).Actual.Trim() == "0" || tab2.ElementAt(i).Actual.Trim() == "-")
                {
                    tab2.ElementAt(i).PercentTarget = "0";
                }
                else
                {
                    var percentTarget = (double.Parse(tab2.ElementAt(i).Actual) / double.Parse(tab2.ElementAt(i).TargetMonth)) * 100;
                    tab2.ElementAt(i).PercentTarget = String.Format("{0:0.00}", percentTarget);
                }
                if (tab2.ElementAt(i).TargetWeek.Trim() == "0" || tab2.ElementAt(i).TargetWeek.Trim() == "-" ||
                    tab2.ElementAt(i).ActualWeek.Trim() == "0" || tab2.ElementAt(i).ActualWeek.Trim() == "-")
                {
                    tab2.ElementAt(i).PercentWeek = "0";
                }
                else
                {
                    var percentWeek = (double.Parse(tab2.ElementAt(i).ActualWeek) / double.Parse(tab2.ElementAt(i).TargetWeek)) * 100;
                    tab2.ElementAt(i).PercentWeek = String.Format("{0:0.00}", percentWeek);
                }
                tab2.ElementAt(i).LastUpdated = DateTime.Now.ToShortDateString();
                tab2.ElementAt(i).Tab = "2";
            }
            //userRepository.BatchInsert(tab1);
            DataTable Dt1 = ExcelPackageExtensions.ToDataTable(tab1);
            DataTable Dt2 = ExcelPackageExtensions.ToDataTable(tab2);


            DataRow recRow1 = Dt1.Rows[0];
            recRow1[0] = string.Empty;
            recRow1.Delete();
            Dt1.AcceptChanges();

            DataRow recRow2 = Dt2.Rows[0];
            recRow2[0] = string.Empty;
            recRow2.Delete();
            Dt2.AcceptChanges();

            DataTable[] TotalDT = { Dt1, Dt2 };

            //ModelDt[1].DataTableToList<SellinFirstTab>();State.AddModelError("Error", "Ex: This login failed " + employeeList.ElementAt(0).Fullname);
            //ModelState.AddModelError("Error", "Ex: This login failed 1");

            var searchResults = userRepository.Search(p => p.Growth == "0" );
            //userRepository.BatchInsert(tab1);
            //userRepository.BatchInsert(tab2);
            List<SellinFirstTab> ls = userRepository.List.ToList();
            foreach (var item in tab1)
            {
                userRepository.InsertOrUpdate(item);
            }
            foreach (var item in tab2)
            {
                userRepository.InsertOrUpdate(item);
            }
            return View(TotalDT);
           
        }

        public ActionResult SearchSellIn()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SearchResultSellIn(DateTime bday)
        {
            string date = bday.Date.ToShortDateString();
            var searchResults = userRepository.Search(p => p.Day == date);
            List<SellinFirstTab> tab1 = searchResults.Where(x => x.Tab == "1").ToList();
            List<SellinFirstTab> tab2 = searchResults.Where(x => x.Tab == "2").ToList();

            DataTable Dt1 = ExcelPackageExtensions.ToDataTable(tab1);
            DataTable Dt2 = ExcelPackageExtensions.ToDataTable(tab2);

            DataTable[] TotalDT = { Dt1, Dt2 };
            return View(TotalDT);
        }
    }
}