using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace CNCDataManager.Areas.Simulation.Controllers.Internals
{
    public class ErrorLog
    {
        public static void WriteLogByException(Exception ex,string LogAddress)
        {
            using (StreamWriter sw = new StreamWriter(LogAddress, true))
            {
                sw.WriteLine("当前时间：" + DateTime.Now.ToString());
                sw.WriteLine("异常信息：" + ex.Message);
                sw.WriteLine("异常对象：" + ex.Source);
                sw.WriteLine("调用堆栈：\n" + ex.StackTrace.Trim());
                sw.WriteLine("触发方法：" + ex.TargetSite);
                sw.WriteLine();
            }
        }
    }
}