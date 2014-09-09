using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01_Step_1.Empty_WEB_Application
{
    public partial class FirstWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                GuestResponse rspv = new GuestResponse();

                if (TryUpdateModel(rspv,
                    new FormValueProvider(ModelBindingExecutionContext)))
                {
                    ResponseRepository.GetRepository().AddResponse(rspv);

                    if (rspv.WillAttend.HasValue && rspv.WillAttend.Value)
                    {
                        Response.Redirect("Static/SeeYou.html");
                    }
                    else
                    {
                        Response.Redirect("Static/GoodBye.html");
                    }
                }
            }
        }
    }
}