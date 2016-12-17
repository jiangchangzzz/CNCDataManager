using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CNCDataManager.Areas.Simulation.Controllers.Internals
{
    public class ModelCompile
    {
        //[DllImport("compilerDoublewrapper.dll", EntryPoint = "modelCompiler", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        //public static extern void modelCompiler(string ModelFile, string LoadFile, string CodePath, string ModelName);

        private PathSetting path;

        public ModelCompile(PathSetting pathSetting)
        {
            path = pathSetting;
        }

        public void CompileAll()
        {
            //modelCompiler()
        }
    }
}
