﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReadExcel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class DemoEntities1 : DbContext
    {
        public DemoEntities1()
            : base("name=DemoEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Account> Accounts { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<SalesForce> SalesForces { get; set; }
        public virtual DbSet<SellOut> SellOuts { get; set; }
        public virtual DbSet<MT_SellIn> MT_SellIn { get; set; }
        public virtual DbSet<MT_SellOut> MT_SellOut { get; set; }
        public virtual DbSet<WholeSaler_Inventory> WholeSaler_Inventory { get; set; }
    
        public virtual ObjectResult<sp_Employee_GetAll_Result> sp_Employee_GetAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Employee_GetAll_Result>("sp_Employee_GetAll");
        }
    
        public virtual ObjectResult<sp_Employee_GetList_Result> sp_Employee_GetList()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_Employee_GetList_Result>("sp_Employee_GetList");
        }
    
        public virtual ObjectResult<sp_GetAllChildrenForParent_Result> sp_GetAllChildrenForParent(string code, Nullable<int> level)
        {
            var codeParameter = code != null ?
                new ObjectParameter("Code", code) :
                new ObjectParameter("Code", typeof(string));
    
            var levelParameter = level.HasValue ?
                new ObjectParameter("level", level) :
                new ObjectParameter("level", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_GetAllChildrenForParent_Result>("sp_GetAllChildrenForParent", codeParameter, levelParameter);
        }
    }
}
