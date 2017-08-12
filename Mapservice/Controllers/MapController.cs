using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestLogin.Models;
using DataAccessLayer;
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
        [HttpPost]
        public ActionResult Save(UserComment data)
        {
            data.name= User.Identity.Name;
            using (var da = new UserLocationDA())
            {
                da.InsertUserComment(data);
            }

            return  Json(new
            {
                status = "success",
                result = "Done"
            });
        }
    }
}