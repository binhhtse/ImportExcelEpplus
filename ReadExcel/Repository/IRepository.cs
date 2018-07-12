using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadExcel.Repository
{
    interface IRepository<T> where T : class
    {
        IEnumerable<T> List { get; }
        void Add(T entity);
        void Delete(T entity);
        void Update(T entity);
        T FindById(object Id);
    }
}