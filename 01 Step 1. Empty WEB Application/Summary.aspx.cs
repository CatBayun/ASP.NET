using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01_Step_1.Empty_WEB_Application
{
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string GetNoShowHtml()
        {
            StringBuilder sb = new StringBuilder();

            var noData = ResponseRepository.GetRepository().GetAllResponses().
                                Where(r => r.WillAttend.HasValue && !r.WillAttend.Value);

            foreach (var rspv in noData)
            {

                string html = String.Format(@"<tr><td>{0}</td><td>{1}</td><td>{2}</td></tr>",
                    rspv.Name,
                    rspv.Email,
                    rspv.Phone);

                sb.Append(html);
            }

            return sb.ToString();
        }
    }
}