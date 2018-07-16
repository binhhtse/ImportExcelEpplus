using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReadExcel.Models
{
    public class AccountModel
    {
        public AccountModel(string a, string b)
        {
            this.Username = a;
            this.Password = b;
        }
        public AccountModel()
        {

        }
        public string Username { get; set; }
        public string Password { get; set; }
        public static implicit operator Account(AccountModel vm)
        {
            return new Account
            {
                Username = vm.Username,
                Password = vm.Password
            };
        }
    }
}