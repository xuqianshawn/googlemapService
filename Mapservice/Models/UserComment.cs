using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestLogin.Models
{
    public class UserComment
    {
        public string name { get; set; }
        public decimal lat { get; set; }
        public decimal lng { get; set; }
        public string comment { get; set; }
    }
}