using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CNCDataManager.Areas.Simulation.Controllers.Internals
{
    public class PathSetting
    {
        public const string MorksPath = @"~/Areas/Simulation/Mworks/";

        public const string Library = MorksPath + "Library";

        public const string TemplateFileX = MorksPath + "Template/X_axis/package.txt";
        public const string TemplateFileY = MorksPath + "Template/Y_axis/package.txt";
        public const string TemplateFileZ = MorksPath + "Template/Z_axis/package.txt";
        public const string TemplateFileXY = MorksPath + "Template/XY_axis/package.txt";

        public const string ModelFileX = MorksPath + "Model/X_axis/realpackage.mo";
        public const string ModelFileY = MorksPath + "Model/Y_axis/realpackage.mo";
        public const string ModelFileZ = MorksPath + "Model/Z_axis/realpackage.mo";
        public const string ModelFileXY = MorksPath + "Model/XY_axis/realpackage.mo";

        public const string CompilerX = MorksPath + "Simulation/X_axis/compiler";
        public const string CompilerY = MorksPath + "Simulation/Y_axis/compiler";
        public const string CompilerZ = MorksPath + "Simulation/Y_axis/compiler";
        public const string CompilerXY = MorksPath + "Simulation/XY_axis/compiler";

        public const string ModelNameX = "X_axis.X_axis_model";
        public const string ModelNameY = "Y_axis.Y_axis_model";
        public const string ModelNameZ = "Z_axis.Z_axis_model";
        public const string ModelNameXY = "XY_axis.XY_axis_model";

    }
}
