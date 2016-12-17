using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CNCDataManager.Areas.Simulation.Controllers
{
    public class SimulationController : Controller
    {
        // GET: Simulation/Simulation
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult StartSimulation()
        {
            return View();
        }
    }
}