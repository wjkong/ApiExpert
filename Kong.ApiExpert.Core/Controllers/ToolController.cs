using System.Web.Mvc;

namespace Kong.ApiExpert.Core.Controllers
{
    public class ToolController : BaseController
    {
        // GET: Tool
        public ActionResult Index()
        {
            return View();
        }

        // GET: Tool
        public ActionResult MortgageCalculator()
        {
            return View("MortgageCalculator");
        }
    }
}