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
using ReadExcel.Util;


namespace ReadExcel.Controllers
{
    public class HomeController : Controller
    {
        private static readonly ILog Log =
              LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        GenericRepository<MT_SellIn> sellInRepository = new GenericRepository<MT_SellIn>();
        GenericRepository<MT_SellOut> sellOutRepository = new GenericRepository<MT_SellOut>();
        GenericRepository<SalesForce> salesForceRepository = new GenericRepository<SalesForce>();
        GenericRepository<Employee> employeeeRepository = new GenericRepository<Employee>();
        GenericRepository<WholeSaler_Inventory> wholeSalerRepository = new GenericRepository<WholeSaler_Inventory>();
        DemoEntities1 db = new DemoEntities1();
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

        public ActionResult ImportReport()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ReadExcel(HttpPostedFileBase chooseFile)
        {
            if (chooseFile == null)
            {
                TempData["message"] = "Vui lòng chọn file";
                return RedirectToAction("ImportReport");
            }

            if (Path.GetExtension(chooseFile.FileName) != ".xlsx" && Path.GetExtension(chooseFile.FileName) != ".xls")
            {
                TempData["message"] = "Định dạng file excel không hợp lệ";
                return RedirectToAction("ImportReport");
            }

            ExcelPackage package = new ExcelPackage(chooseFile.InputStream);
            DataTable[] Dt = ExcelPackageExtensions.ToDataTable(package);
            //List<Account> ls = sellInRepository.List.ToList();

            //List<object> lst = Dt.AsEnumerable().ToList<object>();

            //List<Person> employeeList = Dt.DataTableToList<Person>();

            if (Dt[0].Columns.Count != 8)
            {
                TempData["message"] = "Vui lòng chọn templete sell in để có thể import!";
                return RedirectToAction("ImportReport", "Home", ViewBag.message);
            }

            List<MT_SellIn> tab1 = Dt[0].DataTableToList<MT_SellIn>();
            List<MT_SellIn> tab2 = Dt[1].DataTableToList<MT_SellIn>();
            String date = tab1.ElementAt(tab1.Count - 1).Day; //   07/22/2013
            int numberOfWork = 0;
            int month = 0;
            int year = 0;
            if (date.Length != 9 && date.Length != 10)
            {
                TempData["message"] = "Vui lòng chọn templete sell in để có thể import!";
                return RedirectToAction("ImportReport");
            }
            if (date.Length == 9) //7/22/2013
            {
                month = int.Parse(date.Substring(0, 1));
                year = int.Parse(date.Substring(5, 4));
            }
            else //07/22/2013
            {
                month = int.Parse(date.Substring(0, 2));
                year = int.Parse(date.Substring(6, 4));
            }
            numberOfWork = ExcelPackageExtensions.CountWorkingDay(year, month);
            for (int i = 1; i < tab1.Count; i++)
            {
                var day = tab1.ElementAt(i).Day.ToString();
                if (day.Length == 9)
                {
                    day = "0" + day;
                    tab1.ElementAt(i).Day = DateTime.ParseExact(day, "MM/dd/yyyy", CultureInfo.InvariantCulture)
                       .ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                }
                else if (day.Length == 10)
                {
                    tab1.ElementAt(i).Day = DateTime.ParseExact(day, "MM/dd/yyyy", CultureInfo.InvariantCulture)
                       .ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                }

                if (tab1.ElementAt(i).TargetMonth.Trim() == "0" || tab1.ElementAt(i).TargetMonth.Trim() == "-")
                {
                    tab1.ElementAt(i).TargetDate = "0";
                }
                else
                {
                    var targetDate = (double.Parse(tab1.ElementAt(i).TargetMonth) / numberOfWork);
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

                tab1.ElementAt(i).LastUpdated = DateTime.Now.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                tab1.ElementAt(i).Tab = "1";
                tab1.ElementAt(i).CompanyCode = DMSEnum.CompanyCode;
                tab1.ElementAt(i).SalesOrg = DMSEnum.MTSalesOrg;
            }
            for (int i = 1; i < tab2.Count; i++)
            {
                var day = tab2.ElementAt(i).Day.ToString();
                if (day.Length == 9)
                {
                    day = "0" + day;
                }
                tab2.ElementAt(i).Day = DateTime.ParseExact(day, "MM/dd/yyyy", CultureInfo.InvariantCulture)
                        .ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
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
                tab2.ElementAt(i).LastUpdated = DateTime.Now.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture);
                tab2.ElementAt(i).Tab = "2";
                tab2.ElementAt(i).CompanyCode = DMSEnum.CompanyCode;
                tab2.ElementAt(i).SalesOrg = DMSEnum.MTSalesOrg;
            }
            //sellInRepository.BatchInsert(tab1);
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

            var searchResults = sellInRepository.Search(p => p.Growth == "0");
            //sellInRepository.BatchInsert(tab1);
            //sellInRepository.BatchInsert(tab2);
            List<MT_SellIn> ls = sellInRepository.List.ToList();
            foreach (var item in tab1)
            {
                sellInRepository.InsertOrUpdate(item);
            }
            foreach (var item in tab2)
            {
                sellInRepository.InsertOrUpdate(item);
            }
            if (TotalDT != null)
            {
                TempData["success"] = DMSEnum.Success;
            }
            return View(TotalDT);

        }

        public ActionResult SearchSellIn()
        {

            //SalesForcVIewModel obj = new SalesForcVIewModel();
            //obj.StateModel = new List<Parent>();
            //obj.StateModel = GetAllParrent();
            return View();
        }
        [HttpPost]
        public ActionResult SearchResultSellIn(DateTime bday)
        {
            //string date = bday.Date.ToShortDateString();
            string date = String.Format("{0:dd/MM/yyyy}", bday);
            var searchResults = sellInRepository.Search(p => p.Day == date);
            List<MT_SellIn> tab1 = searchResults.Where(x => x.Tab == "1").ToList();
            List<MT_SellIn> tab2 = searchResults.Where(x => x.Tab == "2").ToList();

            DataTable Dt1 = ExcelPackageExtensions.ToDataTable(tab1);
            DataTable Dt2 = ExcelPackageExtensions.ToDataTable(tab2);

            DataTable[] TotalDT = { Dt1, Dt2 };
            return View(TotalDT);
        }

        public ActionResult ImportSellOut()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ImportTarget(HttpPostedFileBase chooseFile)
        {
            //string message = ValidationSellOut(chooseFile);
            //if (!string.IsNullOrEmpty(message))
            //{
            //    return RedirectToAction("ImportSellOut", "Home", message);
            //}
            if (chooseFile == null)
            {
                TempData["message"] = "Vui lòng chọn file";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            if (Path.GetExtension(chooseFile.FileName) != ".xlsx" && Path.GetExtension(chooseFile.FileName) != ".xls")
            {
                TempData["message"] = "Định dạng file excel không hợp lệ";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            ExcelPackage package = new ExcelPackage(chooseFile.InputStream);
            DataTable Dt = ExcelPackageExtensions.ConvertToDataTable(package);


            List<MT_SellOut> lstTarget = Dt.DataTableToListBaseHeader<MT_SellOut>();
            if (Dt.Columns.Count > 8)
            {
                TempData["message"] = "Vui lòng chọn templete sell out để có thể import!";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }



            String salesOrg = lstTarget.ElementAt(0).SalesOrg;

            if (salesOrg != "1100" && salesOrg != "1500")
            {
                TempData["message"] = "Vui lòng chọn templete out in để có thể import!";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            //lstTarget.RemoveAt(0);
            int lineID = 0;
            foreach (var item in lstTarget)
            {
                item.LineID = lineID;
                item.CompanyCode = DMSEnum.CompanyCode;
                sellOutRepository.InsertOrUpdate(item);
                lineID++;
            }
            TempData["success"] = DMSEnum.Success;
            return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
        }
        [HttpPost]
        public ActionResult ImportPerform(HttpPostedFileBase chooseFile)
        {
            if (chooseFile == null)
            {
                TempData["message"] = "Vui lòng chọn file";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            if (Path.GetExtension(chooseFile.FileName) != ".xlsx" && Path.GetExtension(chooseFile.FileName) != ".xls")
            {
                TempData["message"] = "Định dạng file excel không hợp lệ";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            ExcelPackage package = new ExcelPackage(chooseFile.InputStream);
            DataTable Dt = ExcelPackageExtensions.ConvertToDataTable(package);

            if (Dt.Columns.Count > 8)
            {
                TempData["message"] = "Vui lòng chọn templete sell out để có thể import!";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            List<MT_SellOut> lstTarget = Dt.DataTableToListBaseHeader<MT_SellOut>();


            String salesOrg = lstTarget.ElementAt(0).SalesOrg;

            if (salesOrg != "1100" && salesOrg != "1500")
            {
                TempData["message"] = "Vui lòng chọn templete out in để có thể import!";
                return RedirectToAction("ImportSellOut", "Home", ViewBag.message);
            }
            var db = new DemoEntities1();
            var lstEmp = db.sp_Employee_GetAll();
            List<SellOutViewModel> empViewModel = lstEmp.Select(c => new SellOutViewModel
            {
                EmployeeCode = c.EmployeeCode,
                EmployeeName = c.EmployeeName,
                SalesForceCode = c.SalesForceCode,
                Parentcode = c.Parentcode,
                SalesForceName = c.SalesForceName,
                SalesForceLevel = c.SalesForceLevel

            }).ToList();

            DataTable Dt11 = ExcelPackageExtensions.ToDataTable(empViewModel);


            foreach (var item in lstTarget)
            {
                sellOutRepository.Update(item, x => x.Perform);
            }

            lstTarget = sellOutRepository.List.ToList();
            foreach (var item in lstTarget)
            {
                item.Rate = Math.Round((Double.Parse(item.Perform) / Double.Parse(item.Target) * 100)).ToString();
                sellOutRepository.Update(item, x => x.Rate);
            }
            var lstSalesForce = salesForceRepository.List.ToList();
            string day = DateTime.Now.ToString("dd/MM/yyyy");
            //if (day.Length == 9)
            //{
            //    day = "0" + day;

            //}


            var result = lstSalesForce.Join(lstTarget,
                            dep => dep.EmployeeCode,
                             e => e.ID,
                            (e, dep) => new { e, dep })
                        //.Where(item => item.dep.EmployeeCode == item.e.ID)
                        .Select(i => new MT_SellOut
                        {
                            //EmployeeCode = i.e.EmployeeCode,

                            //SalesForceCode = i.e.SalesForceCode,

                            //SalesForceName = i.e.SalesForceName,
                            //SalesForceLevel = i.e.SalesForceLevel,
                            //     Day = DateTime.ParseExact(day, "MM/dd/yyyy", CultureInfo.InvariantCulture)
                            //.ToString("dd/MM/yyyy", CultureInfo.InvariantCulture),
                            Day = day,
                            SalesOrg = i.dep.SalesOrg,
                            CustomerCode = i.dep.CustomerCode,
                            SalesRouteCode = i.dep.SalesRouteCode,
                            ID = i.dep.ID,
                            Name = i.dep.Name,
                            Store = i.dep.Store,
                            Target = i.dep.Target,
                            Perform = i.dep.Perform,
                            Rate = i.dep.Rate,
                            LineID = i.dep.LineID,
                            CompanyCode = DMSEnum.CompanyCode,
                            SalesForceLevel = i.e.SalesForceLevel,
                            ParentCode = i.e.ParentCode,
                            SalesForceCode = i.e.SalesForceCode
                        }
                        ).OrderBy(x => x.LineID)
                        //.ThenBy(x => x.SalesForceLevel)
                        .ToList();
            //var aa = result.OrderBy(x=>x.LineID).ToList();

            foreach (var item in result)
            {

                sellOutRepository.InsertOrUpdate(item);
            }
            DataTable Dt1 = ExcelPackageExtensions.ToDataTable(result);
            return View(Dt1);
        }

        public ActionResult SearchSellOut()
        {
            //var lstSellOut = sellOutRepository.List.OrderBy(x => x.LineID).ToList();
            //DataTable Dt = ExcelPackageExtensions.ToDataTable(lstSellOut);
            //return View("ImportPerform", Dt);
            SalesForcVIewModel obj = new SalesForcVIewModel();
            obj.StateModel = new List<Parent>();
            obj.StateModel = GetAllParrent();
            return View(obj);
        }
        [HttpPost]
        public ActionResult DownloadSellIn()
        {



            return View("ImportReport");
        }


        /// <summary>
        /// colection of parent
        /// </summary>
        /// <returns></returns>
        public List<Parent> GetAllParrent()
        {
            var lstEmp = employeeeRepository.List.ToList();
            List<State> objstate = new List<State>();
            var lstP = salesForceRepository.List.Where(x => x.SalesForceLevel == 2);
            var result = lstP.Join(lstEmp,
                           dep => dep.EmployeeCode,
                            e => e.EmployeeCode,
                           (e, dep) => new { e, dep })
                       //.Where(item => item.dep.EmployeeCode == item.e.ID)
                       .Select(i => new Parent
                       {

                           Id = i.e.SalesForceCode,
                           ParName = i.dep.EmployeeName
                       }
                       ).Distinct()

                       .ToList();


            return result;
        }
        public List<Children> GetAllChildren()
        {
            var lstEmp = employeeeRepository.List.ToList();
            var lstP = salesForceRepository.List.ToList();
            var result = lstP.Join(lstEmp,
                           dep => dep.EmployeeCode,
                            e => e.EmployeeCode,
                           (e, dep) => new { e, dep })
                       //.Where(item => item.dep.EmployeeCode == item.e.ID)
                       .Select(i => new Children
                       {

                           Id = i.e.SalesForceCode,
                           ParentId = i.e.ParentCode,
                           ChilName = i.dep.EmployeeName
                       }
                       ).Distinct()

                       .ToList();


            return result;
        }


        [HttpPost]
        public ActionResult GetEmpByParentID(string parentCode, int level)
        {
            List<Children> obj = new List<Children>();
            obj = GetAllChildren().Where(m => m.ParentId == parentCode).ToList();
            SelectList lst = new SelectList(obj, "Id", "ChilName", 0);
            return Json(lst);
        }
        [HttpPost]
        public ActionResult GetAllChildren(FormCollection form)
        {
            SalesForcVIewModel obj = new SalesForcVIewModel();
            List<string> selectedList = new List<string>();
            obj.StateModel = new List<Parent>();
            obj.StateModel = GetAllParrent();
            int level = 3;
            ///
            var value = Request.Form["SalesForce.StateModel"] ?? Request.Form["StateModel"];
            selectedList.Add(form["dd1"]);
            selectedList.Add(form["dd2"]);
            selectedList.Add(form["dd3"]);
            if (!string.IsNullOrEmpty(value))
            {
                level = 2;
            }
            var value1 = Request.Form["ddlcity"];
            if (!string.IsNullOrEmpty(Request.Form["dd2"]))
            {
                level = 3;

            }
            string strDDLValue = value.ToString();
            //strDDLValue = "MB-RSM-BTB";

            var lstEmp = db.sp_GetAllChildrenForParent(strDDLValue, level).Select(i => new MT_SellOut
            {

                Day = i.Day,
                SalesOrg = i.SalesOrg,
                CustomerCode = i.CustomerCode,
                SalesRouteCode = i.SalesRouteCode,
                ID = i.ID,
                Name = i.Name,
                Store = i.Store,
                Target = i.Target,
                Perform = i.Perform,
                Rate = i.Rate,
                LineID = i.LineID,
                SalesForceLevel = i.SalesForceLevel,
                ParentCode = i.ParentCode,
                SalesForceCode = i.SalesForceCode
            }
                        ).OrderBy(x => x.LineID)
                        .ToList(); ;
            DataTable Dt = ExcelPackageExtensions.ToDataTable(lstEmp);
            MultiModel model = new MultiModel
            {
                Dt = Dt,
                SalesForce = obj,
                SelectedList = selectedList
            };
            return View(model);
        }
        [HttpPost]
        public ActionResult GetSelect()
        {
            List<Children> obj = new List<Children>();
            obj = GetAllChildren().Where(m => m.ParentId == "MB-RSM-BTB").ToList();
            SelectList lst = new SelectList(obj, "Id", "ChilName", 0);
            return Json(lst);
        }

        public ActionResult ImportWholeSalerInventory()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ImportWholeSalerInventory(HttpPostedFileBase chooseFile)
        {
            if (chooseFile == null)
            {
                TempData["message"] = "Vui lòng chọn file";
                return RedirectToAction("ImportWholeSalerInventory", "Home", ViewBag.message);
            }
            if (Path.GetExtension(chooseFile.FileName) != ".xlsx" && Path.GetExtension(chooseFile.FileName) != ".xls")
            {
                TempData["message"] = "Định dạng file excel không hợp lệ";
                return RedirectToAction("ImportWholeSalerInventory", "Home", ViewBag.message);
            }
            ExcelPackage package = new ExcelPackage(chooseFile.InputStream);
            DataTable Dt = ExcelPackageExtensions.ConvertToDataTable(package);
            List<WholeSaler_Inventory> lstImport = Dt.DataTableToListBaseHeader<WholeSaler_Inventory>();

            foreach (var imp in lstImport)
            {
                var entity = wholeSalerRepository.List.Where(x => x.InvtID == imp.InvtID
                                                               && x.Period == imp.Period
                                                               && x.WholeSalerID == imp.WholeSalerID).FirstOrDefault();
                if (entity == null)
                {
                    imp.LastUpdatedDateTime = DateTime.Now;
                    imp.CreatedDateTime = DateTime.Now;
                    wholeSalerRepository.InsertOrUpdate(imp);
                }
            }
           
            return View();
        }
        public ActionResult SearchWholeSaler()
        {
            List<WholeSaler_Inventory> lst = wholeSalerRepository.List.ToList();
            DataTable Dt = ExcelPackageExtensions.ToDataTable(lst);
           
            return View(Dt);
        }

        //public string ValidationSellOut(HttpPostedFileBase chooseFile)
        // {
        //     ExcelPackage package = new ExcelPackage(chooseFile.InputStream);
        //     DataTable Dt = ExcelPackageExtensions.ConvertToDataTable(package);
        //     string message = "";
        //     if (Dt.Columns.Count > 8)
        //     {
        //         message = "Vui lòng chọn templete sell out để có thể import!";

        //     }
        //     if (Path.GetExtension(chooseFile.FileName) != ".xlsx" && Path.GetExtension(chooseFile.FileName) != ".xls")
        //     {
        //         message = "Định dạng file excel không hợp lệ";

        //     }
        //     List<MT_SellOut> lstTarget = Dt.DataTableToListBaseHeader<MT_SellOut>();
        //     String salesOrg = lstTarget.ElementAt(0).SalesOrg;

        //     if (salesOrg != "1100" && salesOrg != "1500")
        //     {
        //         message = "Vui lòng chọn templete out in để có thể import!";

        //     }
        //     return  message;
        // }
    }
}