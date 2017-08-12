using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mapService.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            string googleAPIKey = ConfigurationManager.AppSettings["googleMapAPIKey"];
            ViewBag.APIKey = googleAPIKey;
            return View(ViewBag);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}