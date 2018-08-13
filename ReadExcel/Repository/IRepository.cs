using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace ReadExcel.Repository
{
    interface IRepository<T> where T : class
    {
        IEnumerable<T> List { get; }
        void Add(T entity);
        void BatchInsert(List<T> entity);
        void Delete(T entity);
        void Update(T entity);
        void InsertOrUpdate(T entity);
        T FindById(object Id);

        IEnumerable<T> Search(Expression<Func<T, bool>> predicate);
    }
}