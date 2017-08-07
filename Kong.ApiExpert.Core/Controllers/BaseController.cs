using System.Threading;
using System.Web.Mvc;

namespace Kong.ApiExpert.Core.Controllers
{
    public class BaseController : Controller
    {
        public BaseController()
        {
            if (System.Web.HttpContext.Current.Session["culture"] != null)
            {
                Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(System.Web.HttpContext.Current.Session["culture"].ToString());
                Thread.CurrentThread.CurrentUICulture = Thread.CurrentThread.CurrentCulture;
            }
        }
    }
}