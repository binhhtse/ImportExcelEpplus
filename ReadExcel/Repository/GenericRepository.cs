using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace ReadExcel.Repository
{
    public class GenericRepository<T> : IRepository<T> where T : class
    {
        protected DemoEntities1 db = null;
        protected DbSet<T> table = null;
        public GenericRepository()
        {
            this.db = new DemoEntities1();
            table = db.Set<T>();
        }

        public GenericRepository(DemoEntities1 db)
        {
            this.db = db;
            table = db.Set<T>();
        }
        public IEnumerable<T> List
        {
            get
            {
                return table.ToList();
            }
        }

        public void Add(T entity)
        {
            table.Add(entity);
            try
            {
                db.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }
        }
        public void BatchInsert(List<T> entity)
        {
            table.AddRange(entity);
            try
            {
                db.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }
        }
        public void Delete(T entity)
        {
            table.Remove(entity);
            db.SaveChanges();
        }

        public T FindById(object Id)
        {
            return table.Find(Id);
        }

        public void Update(T entity)
        {
            //table.Attach(entity);
            db.Entry(entity).State = EntityState.Modified;
            db.SaveChanges();
        }
        public void Update(MT_SellOut entity, params Expression<Func<T, object>>[] updatedProperties)
        {
            using (var ctx = new DemoEntities1())
            {
                ctx.MT_SellOut.Attach(entity);
                var entry = ctx.Entry(entity);
                entry.Property(e => e.Perform).IsModified = true;
                entry.Property(e => e.Rate).IsModified = true;
                
                ctx.SaveChanges();
            }
            //if (updatedProperties.Any())
            //{

            //    foreach (var property in updatedProperties)
            //    {

            //        entry.Property(property).IsModified = true;
            //        db.SaveChanges();
            //    }

            //}
            //else
            //{

            //    foreach (var property in entry.OriginalValues.PropertyNames)
            //    {
            //        var original = entry.OriginalValues.GetValue<object>(property);
            //        var current = entry.CurrentValues.GetValue<object>(property);
            //        if (original != null && !original.Equals(current))
            //            entry.Property(property).IsModified = true;
            //    }
            //}
            //var dbEntityEntry = db.Entry(entity);

        }
        public void InsertOrUpdate(T entity)
        {
            try
            {
                table.AddOrUpdate<T>(entity);
                db.SaveChanges();
                //db.Set<T>().AddOrUpdate<T>(entity);
            }
            catch (Exception ex)
            {
                //TODO: Log exception
                throw;
            }
        }
        public void DeleteRange(List<T> entities)
        {
            table.RemoveRange(entities);
            db.SaveChanges();
        }

        public void Reload(T entity)
        {
            db.Entry(entity).Reload();
        }

        public T FindByIdAfterAdd(T entity, int id)
        {
            // Detach the object from the context
            ((IObjectContextAdapter)db).ObjectContext.Detach(entity);

            // Now find the product by primary key (detached entities are not cached)
            return table.Find(id);
        }
        public IEnumerable<T> Search(Expression<Func<T, bool>> predicate)
        {
            return table.Where(predicate).ToList();
        }
    }
}