using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace _01_Step_1.Empty_WEB_Application
{
    public class GuestResponse
    {
        [Required(ErrorMessage = "<b>Enter your name</b>")]
        public string Name { get; set; }

        [Required(ErrorMessage = "<b>Enter your e-mail</b>")]
        public string Email { get; set; }

        [Required(ErrorMessage = "<b>Enter your phone number</b>")]
        public string Phone { get; set; }

        [Required(ErrorMessage = "<b>Please tell us if you will attend</b>")]
        public bool? WillAttend { get; set; }
    }
}