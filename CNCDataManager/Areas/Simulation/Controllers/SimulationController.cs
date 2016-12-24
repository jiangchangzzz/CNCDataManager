using CNCDataManager.Areas.Simulation.Controllers.Internals;
using CNCDataManager.Areas.Simulation.Models;
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

        public string StartSimulation(SimulationPara para)
        {
            PathSetting path = new PathSetting("X");
            ModelReplace modelReplace = new ModelReplace(path);
            modelReplace.ReplaceInputByAxis("Constant");
            string result = "ready";
            return result;
        }
    }
}