using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace CNCDataManager.Areas.Simulation.Controllers.Internals
{
    public class PathSetting
    {
        public PathSetting(string axis)
        {
            MorksPath = HttpContext.Current.Server.MapPath("~") + "Areas\\Simulation\\Mworks\\";

            Library = MorksPath + "Library";

            switch (axis)
            {
                case "X":
                    TemplateFile = MorksPath + "Template\\X_axis\\package.txt";
                    ModelPath = MorksPath + "Model\\X_axis";
                    CompilerFile = MorksPath + "Simulation\\X_axis\\compiler";
                    ModelName = "X_axis.X_axis_model";
                    break;
                case "Y":
                    TemplateFile = MorksPath + "Template\\Y_axis\\package.txt";
                    ModelPath = MorksPath + "Model\\Y_axis";
                    CompilerFile = MorksPath + "Simulation\\Y_axis\\compiler";
                    ModelName = "Y_axis.Y_axis_model";
                    break;
                case "Z":
                    TemplateFile = MorksPath + "Template\\Z_axis\\package.txt";
                    ModelPath = MorksPath + "Model\\Z_axis";
                    CompilerFile = MorksPath + "Simulation\\Y_axis\\compiler";
                    ModelName = "Z_axis.Z_axis_model";
                    break;
                case "XY":
                    TemplateFile = MorksPath + "Template\\XY_axis\\package.txt";
                    ModelPath = MorksPath + "Model\\XY_axis";
                    CompilerFile = MorksPath + "Simulation\\XY_axis\\compiler";
                    ModelName = "XY_axis.XY_axis_model";
                    break;
                default:
                    throw new Exception("Axis not match");
            }
        
            ModelFile = ModelPath + "\\realpackage.mo";

        }

        public readonly string MorksPath;   //Morks组件根目录

        public readonly string Library;   //Modelica库文件目录

        public readonly string TemplateFile;   //模板文件路径

        public readonly string ModelPath;    //模型文件所在目录

        public readonly string ModelFile;   //模型文件路径

        public readonly string CompilerFile;

        public readonly string ModelName;
    }
}
