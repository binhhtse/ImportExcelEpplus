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
        public virtual DbSet<MT_SellOut> MT_SellOut { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<SalesForce> SalesForces { get; set; }
        public virtual DbSet<SellIn> SellIns { get; set; }
        public virtual DbSet<SellOut> SellOuts { get; set; }
    }
}
