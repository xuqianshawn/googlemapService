using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestLogin.Models;
using DataAccessLayer;
using DataAccessLayer.Utility;

namespace TestLogin.Controllers
{
    public class MapController : Controller
    {
        // GET: Map
        public ActionResult Index(string id)
        {
            string googleAPIKey = ConfigurationManager.AppSettings["googleMapAPIKey"];
            ViewBag.APIKey = googleAPIKey;
            if (string.IsNullOrEmpty(id))
            {
                ViewBag.Locations = GetLocations();
            }
            else
            {
                ViewBag.Locations = SearchLocations(id);
            }
            return View(ViewBag);
        }
        public string GetLocations()
        {
            using (var da = new UserLocationDA())
            {
                return da.GetUserLocations().ToJSON();
            }
        }
        public string SearchLocations(string id)
        {
            using (var da = new UserLocationDA())
            {
                return da.GetUserLocations(id).ToJSON();
            }
        }
        [HttpPost]
        public ActionResult Save(UserComment data)
        {
            if (string.IsNullOrEmpty(User.Identity.Name))
            {
                return Json(new
                {
                    status = "fail",
                    result = "notloggedin"
                });
            }
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