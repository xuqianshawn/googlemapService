using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestLogin.Controllers
{
    public class MapController : Controller
    {
        // GET: Map
        public ActionResult Index()
        {
            string googleAPIKey = ConfigurationManager.AppSettings["googleMapAPIKey"];
            ViewBag.APIKey = googleAPIKey;
            return View(ViewBag);
        }
    }
}