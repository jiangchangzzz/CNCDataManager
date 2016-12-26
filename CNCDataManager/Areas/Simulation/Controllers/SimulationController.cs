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
            //设置模型路径
            PathSetting path = new PathSetting(para.Axis);

            //进行模型替换
            ModelReplace modelReplace = new ModelReplace(path);
            modelReplace.ReplaceAll(para);

            string result = "ready";
            return result;
        }
    }
}