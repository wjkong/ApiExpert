using System.Web.Mvc;

namespace Kong.ApiExpert.Core.Controllers
{
    public class HomeController : BaseController
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult SiteMap()
        {
            return View("SiteMap");
        }

        public ActionResult SetLanguage(string language)
        {
            //Thread.CurrentThread.CurrentCulture = new System.Globalization.CultureInfo(language);
            //Thread.CurrentThread.CurrentUICulture = Thread.CurrentThread.CurrentCulture;

            HttpContext.Session["culture"] = language;

            return RedirectToAction("Index", "Home");
        }

        public ActionResult Contact()
        {
            return View("Contact");
        }
    }
}