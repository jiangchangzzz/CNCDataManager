using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CNCDataManager.Areas.Simulation.Controllers.Internals
{
    public class ModelReplace
    {
        private readonly PathSetting path;

        public ModelReplace(PathSetting pathSetting)
        {
            path = pathSetting;
        }

        public void ReplaceInputByAxis(string signalType)
        {
            //判断模型文件是否存在进行模型替换
            if (!File.Exists(path.TemplateFile))
            {
                throw new Exception("TemplateFile is not found");
            }
            ReplaceInput(path.TemplateFile, path.ModelPath, signalType);
        }

        private void ReplaceInput(string templateFile,string modelPath,string signalType)
        {
            //判断信号类型，决定模板替换元素
            string temp1, temp2;
            switch (signalType)
            {
                case "Sine":
                    temp1 = "Modelica.Blocks.Sources.Sine sine";
                    temp2 = "connect(sine.y, servo.phi_ref)";
                    break;
                case "Step":
                    temp1 = "Modelica.Blocks.Sources.Step step";
                    temp2 = "connect(step.y, servo.phi_ref)";
                    break;
                case "Constant":
                    temp1 = "Modelica.Blocks.Sources.Constant const";
                    temp2 = "connect(const.y, servo.phi_ref)";
                    break;
                default:
                    throw new Exception("signalType error");
            }

            //打开文件流，读取模板文本
            string content;
            using (FileStream fs = new FileStream(templateFile, FileMode.Open))
            {
                using (StreamReader sr = new StreamReader(fs, Encoding.GetEncoding("UTF-8")))
                {
                    content = sr.ReadToEnd();
                }
            }
            //进行模型替换
            content = content.Replace("<Input>SignalType</Input>", temp1);
            content = content.Replace("<Connect>InputInterface</Connect>", temp2);

            if(!Directory.Exists(modelPath))
            {
                Directory.CreateDirectory(modelPath);
            }
            //打开文件流，写入模型文件
            modelPath = modelPath + "\\realpackage.mo";
            using (FileStream cs = new FileStream(modelPath, FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(cs, Encoding.GetEncoding("UTF-8")))
                {
                    sw.WriteLine(content);
                }
            }
        }
    }
}
