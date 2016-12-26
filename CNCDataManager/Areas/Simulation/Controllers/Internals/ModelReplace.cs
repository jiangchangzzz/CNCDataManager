using CNCDataManager.Areas.Simulation.Models;
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
        private readonly PathSetting path;   //仿真设置

        private StringBuilder content;   //模板内容,使用StringBuilder提高模板替换效率

        public ModelReplace(PathSetting pathSetting)
        {
            path = pathSetting;
        }

        public void ReplaceAll(SimulationPara para)
        {
            ReadTemplateFile();

            ReplaceInput(para.Setting);
            ReplaceMotor(para.Motor);
            ReplaceDriver(para.Driver);
            ReplaceBallscrew(para.Ballscrew,para.Worktable);
            ReplaceGuide(para.Guide,para.Worktable);
            ReplaceBearings(para.Bearings);
            ReplaceCoupling(para.Coupling);
            ReplaceWorktable(para.Worktable,para.Ballscrew);
            
            WriteModelFile();
        }

        //读入模板文件
        public void ReadTemplateFile()
        {
            //判断模板文件是否存在
            if (!File.Exists(path.TemplateFile))
            {
                throw new Exception("TemplateFile is not found");
            }
            //打开文件流，读入模型文件
            using (FileStream fs = new FileStream(path.TemplateFile, FileMode.Open))
            {
                using (StreamReader sr = new StreamReader(fs, Encoding.GetEncoding("UTF-8")))
                {
                    content=new StringBuilder(sr.ReadToEnd());
                }
            }
        }

        //写出模板文件
        private void WriteModelFile()
        {
            //判断模板文件目录是否存在
            if (!Directory.Exists(path.ModelPath))
            {
                Directory.CreateDirectory(path.ModelPath);
            }
            //打开文件流，写入模型文件
            using (FileStream cs = new FileStream(path.ModelFile, FileMode.Create))
            {
                using (StreamWriter sw = new StreamWriter(cs, Encoding.GetEncoding("UTF-8")))
                {
                    sw.WriteLine(content);
                }
            }
        }

        //替换输入信号类型
        public void ReplaceInput(Setting setting)
        {
            //判断信号类型，决定模板替换元素
            string temp1, temp2;
            switch (setting.Signal)
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

            //进行模型替换
            content = content.Replace("<Input>SignalType</Input>", temp1);
            content = content.Replace("<Connect>InputInterface</Connect>", temp2);
        }

        //替换模板电机部分参数
        public void ReplaceMotor(Motor motor)   
        {
            content = content.Replace("<param>PMSMRotorMomentInertia</param>", motor.RotorMomentInertia.ToString());
            content = content.Replace("<param>PMSMNumberPolePairs</param>", motor.PolePairs.ToString());
            content = content.Replace("<param>PMSMStatorResistance</param>", motor.StatorResistance.ToString());
            content = content.Replace("<param>PMSMStatorStrayInductance</param>", motor.StatorStrayInductance.ToString());
            content = content.Replace("<param>PMSMMainFieldInductanceDaxis</param>", motor.MainFieldInductanceDaxis.ToString());
            content = content.Replace("<param>PMSMMainFieldInductanceQaxis</param>", motor.MainFieldInductanceQaxis.ToString());
            content = content.Replace("<param>PMSMOpposingElectromotiveForce</param>", motor.OpposingElectromotiveForce.ToString());
        }

        //替换模板驱动部分参数
        public void ReplaceDriver(Driver driver)
        {
            content = content.Replace("<param>DriversNominalVoltage</param>", driver.NominalVoltage.ToString());
            content = content.Replace("<param>DriversPWMCircle</param>", driver.PWMCircle.ToString());
            content = content.Replace("<param>DriversPolePairs</param>", driver.PolePairs.ToString());
            content = content.Replace("<param>DriversCellVoltage</param>", driver.CellVoltage.ToString());
            content = content.Replace("<param>DriversKS</param>", driver.KS.ToString());
            content = content.Replace("<param>DriversKV</param>", driver.KV.ToString());
            content = content.Replace("<param>DriversTV</param>", driver.TV.ToString());
            content = content.Replace("<param>DriversKD</param>", driver.KD.ToString());
            content = content.Replace("<param>DriversTD</param>", driver.TD.ToString());
        }

        //替换模板滚珠丝杠部分参数
        public void ReplaceBallscrew(Ballscrew ballscrew,Worktable worktable)
        {
            content = content.Replace("<param>ScrewDiameter</param>", ballscrew.Diameter.ToString());
            content = content.Replace("<param>ScrewModulusofElasticty</param>", ballscrew.ModulusofElasticty.ToString());
            content = content.Replace("<param>ScrewShaftDistance</param>", ballscrew.ShaftDistance.ToString());
            content = content.Replace("<param>ScrewPitch</param>", ballscrew.Pitch.ToString());
            content = content.Replace("<param>ScrewLength</param>", ballscrew.Length.ToString());
            content = content.Replace("<param>ScrewDensity</param>", ballscrew.Density.ToString());
            content = content.Replace("<param>ScrewShearModulusofElasticty</param>", ballscrew.ShearModulusofElasticty.ToString());
            content = content.Replace("<param>ScrewCampingCoefficient</param>", ballscrew.CampingCoefficient.ToString());
            content = content.Replace("<param>ScrewWorktableQuality</param>", worktable.Mass.ToString());
        }

        //替换模板导轨部分参数
        public void ReplaceGuide(Guide guide, Worktable worktable)
        {
            content = content.Replace("<param>RollingGuideWorktableQuality</param>", worktable.Mass.ToString());
            content = content.Replace("<param>RollingGuideFrictionFactor</param>", guide.FrictionFactor.ToString());
            content = content.Replace("<param>RollingGuideViscosityFriction</param>", guide.ViscosityFriction.ToString());
        }

        //替换模板轴承部分参数
        public void ReplaceBearings(Bearings bearings)
        {
            content = content.Replace("<param>BearingAxialStiffness</param>", bearings.AxisalStiffness.ToString());
            content = content.Replace("<param>BearingStartingMoment</param>", bearings.StartingMoment.ToString());
        }
        
        //替换模板联轴器部分参数
        public void ReplaceCoupling(Coupling coupling)
        {
            content = content.Replace("<param>CouplingStiffness</param>", coupling.Stiffness.ToString());
            content = content.Replace("<param>CouplingMomentInertia</param>", coupling.MomentInertia.ToString());
        }

        //替换模板工作台部分参数
        public void ReplaceWorktable(Worktable worktable,Ballscrew ballscrew)
        {
            content = content.Replace("<param>WorktableQuality</param>", worktable.Mass.ToString());
            content = content.Replace("<param>WorktableScrewPitch</param>", ballscrew.Pitch.ToString());
            content = content.Replace("<param>WorktableNutDymanicload</param>", worktable.DynamicLoadRating.ToString());
            content = content.Replace("<param>WorktableContactStiffness</param>", worktable.ContactStiffness.ToString());
            content = content.Replace("<param>WorktableScrewPretighteningEfficience</param>", worktable.TighteningEfficiency.ToString());
        }
    }
}
