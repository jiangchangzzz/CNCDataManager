using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CNCDataManager.Areas.Simulation.Models
{
    public class SimulationPara
    {
        public string Axis { get; set; }
        public Motor Motor { get; set; }
        public Driver Driver { get; set; }
        public Ballscrew Ballscrew { get; set; }
        public Guide Guide { get; set; }
        public Bearings Bearings { get; set; }
        public Coupling Coupling { get; set; }
        public Worktable Worktable { get; set; }
        public Setting Setting { get; set; }
    }

    public class Motor
    {
        public double? RotorMomentInertia { get; set; }
        public double? polePairs { get; set; }
        public double? statorResistance { get; set; }
        public double? statorStrayInductance { get; set; }
        public double? mainFieldInductanceDaxis { get; set; }
        public double? mainFieldInductanceQaxis { get; set; }
        public double? opposingElectromotiveForce { get; set; }
    }

    public class Driver
    {
        public double? nominalVoltage { get; set; }
        public double? PWMCircle { get; set; }
        public double? KS { get; set; }
        public double? KV { get; set; }
        public double? polePairs { get; set; }
        public double? cellVoltage { get; set; }
        public double? KD { get; set; }
        public double? TD { get; set; }
        public double? TV { get; set; }
    }

    public class Ballscrew
    {
        public double? diameter { get; set; }
        public double? modulusofElasticty { get; set; }
        public double? shaftDistance { get; set; }
        public double? pitch { get; set; }
        public double? length { get; set; }
        public double? density { get; set; }
        public double? shearModulusofElasticty { get; set; }
        public double? campingCoefficient { get; set; }
    }

    public class Guide
    {
        public double? frictionFactor { get; set; }
        public double? viscosityFriction { get; set; }
    }

    public class Bearings
    {
        public double? axisalStiffness { get; set; }
        public double? startingMoment { get; set; }
    }

    public class Coupling
    {
        public double? stiffness { get; set; }
        public double? momentInertia { get; set; }
    }

    public class Worktable
    {
        public double? mass { get; set; }
        public double? tighteningEfficiency { get; set; }
        public double? contactStiffness { get; set; }
        public double? dynamicLoadRating { get; set; }
    }

    public class Setting
    {
        public string Axis { get; set; }
        public string signal { get; set; }
        public double? startTime { get; set; }
        public double? endTime { get; set; }
        public double? stepSize { get; set; }
        public double? stepNum { get; set; }
        public string alg { get; set; }
        public double? precision { get; set; }
    }
}
