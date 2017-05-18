using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Kong.ApiExpert.Core.Controllers
{
    public class ApiAppController : Controller
    {
        // GET: ApiApp
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AskStackOverFlow()
        {
            return View("AskStackOverFlow");
        }
    }
}