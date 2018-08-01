using OfficeOpenXml;
using OfficeOpenXml.Table;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Configuration;

namespace ReadExcel.Models
{
    public static class ExcelPackageExtensions
    {
        public static DataTable[] ToDataTable(this ExcelPackage package)
        {
            ExcelWorksheet workSheet = package.Workbook.Worksheets[int.Parse(ConfigurationManager.AppSettings["SheetNumber"])];
            DataTable Dt = new DataTable();
            DataTable Dt1 = new DataTable();
            int[] Selection = { 1, 2, 3, 4, 5, 6, 7, 8 };

            foreach (var firstRowCell in workSheet.Cells[1, 1, 1, workSheet.Dimension.End.Column])
            {
                Dt.Columns.Add(firstRowCell.Text);
                Dt1.Columns.Add("");
            }
            //for (var col = 1; col <= workSheet.Dimension.End.Column; col++)
            //{
            //    int pos = Array.IndexOf(Selection, col);
            //    if (pos > -1)
            //    {
            //        Dt.Columns.Add(workSheet.Cells[1, col].Text);
            //    }
            //}

            bool isSepa = false;
            for (var rowNumber = 3; rowNumber <= workSheet.Dimension.End.Row; rowNumber++)
            {

                var row = workSheet.Cells[rowNumber, 1, rowNumber, workSheet.Dimension.End.Column];
                var newRow = Dt.NewRow();
                var newRow1 = Dt1.NewRow();
                int count = 0;
                foreach (var cell in row)
                {
                    var columnNumber = cell.Start.Column;
                    int pos = Array.IndexOf(Selection, columnNumber);
                    //if (pos > -1)
                    //{
                    newRow[cell.Start.Column - 1] = cell.Text;
                    newRow1[cell.Start.Column - 1] = cell.Text;
                    //}
                    if (string.IsNullOrEmpty(cell.Text))
                    {
                        count++;
                    }
                }
                if (count > 15)
                {
                    isSepa = true;
                }
                if (isSepa == true)
                {
                    Dt1.Rows.Add(newRow1);
                }
                else
                {
                    Dt.Rows.Add(newRow);
                }

            }
            for (int i = 0; i < 2; i++)
            {
                DataRow recRow = Dt1.Rows[i];
                recRow[i] = string.Empty;
                recRow.Delete();
                Dt1.AcceptChanges();

            }
            return new DataTable[] { Dt, Dt1 };
            //return Dt;
        }


        public static IList<T> ConvertTo<T>(IList<DataRow> rows)
        {
            IList<T> list = null;

            if (rows != null)
            {
                list = new List<T>();

                foreach (DataRow row in rows)
                {
                    T item = CreateItem<T>(row);
                    list.Add(item);
                }
            }

            return list;
        }
        public static IList<T> ConvertTo<T>(DataTable table)
        {
            if (table == null)
            {
                return null;
            }

            List<DataRow> rows = new List<DataRow>();

            foreach (DataRow row in table.Rows)
            {
                rows.Add(row);
            }

            return ConvertTo<T>(rows);
        }
        public static T CreateItem<T>(DataRow row)
        {
            T obj = default(T);
            if (row != null)
            {
                obj = Activator.CreateInstance<T>();

                foreach (DataColumn column in row.Table.Columns)
                {
                    PropertyInfo prop = obj.GetType().GetProperty(column.ColumnName);
                    try
                    {
                        object value = row[column.ColumnName];
                        prop.SetValue(obj, value, null);
                    }
                    catch
                    {
                        // You can log something here
                        throw;
                    }
                }
            }

            return obj;
        }

        public static DataTable CreateTable<T>()
        {
            Type entityType = typeof(T);
            DataTable table = new DataTable(entityType.Name);
            PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(entityType);

            foreach (PropertyDescriptor prop in properties)
            {
                table.Columns.Add(prop.Name, prop.PropertyType);
            }

            return table;
        }
        ////////////////////////////////////
        public static List<T> DataTableToList<T>(this DataTable table) where T : class, new()
        {
            try
            {
                List<T> list = new List<T>();

                foreach (var row in table.AsEnumerable())
                {
                    T obj = new T();
                    int i = 0;
                    foreach (var prop in obj.GetType().GetProperties())
                    {
                        try
                        {
                            PropertyInfo propertyInfo = obj.GetType().GetProperty(prop.Name);
                            //propertyInfo.SetValue(obj, Convert.ChangeType(row[prop.Name], propertyInfo.PropertyType), null);
                            propertyInfo.SetValue(obj, Convert.ChangeType(row.ItemArray[i], propertyInfo.PropertyType), null);
                            i++;
                        }
                        catch
                        {
                            continue;
                        }
                    }

                    list.Add(obj);
                }

                return list;
            }
            catch
            {
                return null;
            }
        }
        public static DataTable ToDataTable<T>(this IList<T> data)
        {
            PropertyDescriptorCollection properties =
                TypeDescriptor.GetProperties(typeof(T));
            DataTable table = new DataTable();
            foreach (PropertyDescriptor prop in properties)
                table.Columns.Add(prop.Name, Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType);
            foreach (T item in data)
            {
                DataRow row = table.NewRow();
                foreach (PropertyDescriptor prop in properties)
                    row[prop.Name] = prop.GetValue(item) ?? DBNull.Value;
                table.Rows.Add(row);
            }
            return table;
        }

    }
}