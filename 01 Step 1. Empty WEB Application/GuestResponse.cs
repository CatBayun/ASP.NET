using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _01_Step_1.Empty_WEB_Application
{
    public class GuestResponse
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool? WillAttend { get; set; }
    }
}