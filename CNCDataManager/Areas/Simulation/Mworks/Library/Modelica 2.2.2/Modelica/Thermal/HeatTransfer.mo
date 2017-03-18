within Modelica.Thermal;
package HeatTransfer 
  "Library of 1-dimensional heat transfer with lumped elements" 
  import Modelica.SIunits.Conversions.*;
  import SI = Modelica.SIunits;
  import NonSI = Modelica.SIunits.Conversions.NonSIunits;
  extends Modelica.Icons.Library2;
  
  annotation (version="1.1", versionDate="2005-06-13",
    preferedView="info", Icon(
      Polygon(points=[-54, -6; -61, -7; -75, -15; -79, -24; -80, -34; -78, -42;
              -73, -49; -64, -51; -57, -51; -47, -50; -41, -43; -38, -35; -40,
            -27; -40, -20; -42, -13; -47, -7; -54, -5; -54, -6], style(color=10,
              fillColor=8)),
      Polygon(points=[-75, -15; -79, -25; -80, -34; -78, -42; -72, -49; -64, -
            51; -57, -51; -47, -50; -57, -47; -65, -45; -71, -40; -74, -33; -76,
              -23; -75, -15; -75, -15], style(color=0, fillColor=9)),
      Polygon(points=[39, -6; 32, -7; 18, -15; 14, -24; 13, -34; 15, -42; 20, -
            49; 29, -51; 36, -51; 46, -50; 52, -43; 55, -35; 53, -27; 53, -20;
            51, -13; 46, -7; 39, -5; 39, -6], style(color=9, fillColor=8)),
      Polygon(points=[18, -15; 14, -25; 13, -34; 15, -42; 21, -49; 29, -51; 36,
              -51; 46, -50; 36, -47; 28, -45; 22, -40; 19, -33; 17, -23; 18, -
            15; 18, -15], style(color=0, fillColor=9)),
      Polygon(points=[-9, -23; -9, -10; 18, -17; -9, -23], style(
          color=42,
          fillColor=42,
          fillPattern=1)),
      Line(points=[-41, -17; -9, -17], style(color=42, thickness=2)),
      Line(points=[-17, -40; 15, -40], style(color=42, thickness=2)),
      Polygon(points=[-17, -46; -17, -34; -40, -40; -17, -46], style(
          color=42,
          fillColor=42,
          fillPattern=1))), Documentation(info="<HTML>
<p>
This package contains components to model <b>1-dimensional heat transfer</b>
with lumped elements. This allows especially to model heat transfer in
machines provided the parameters of the lumped elements, such as
the heat capacity of a part, can be determined by measurements
(due to the complex geometries and many materials used in machines,
calculating the lumped element parameters from some basic analytic
formulas is usually not possible).
</p>
<p>
Example models how to use this library are given in subpackage <b>Examples</b>.<br>
For a first simple example, see <b>Examples.TwoMasses</b> where two masses
with different initial temperatures are getting in contact to each
other and arriving after some time at a common temperature.<br>
<b>Examples.ControlledTemperature</b> shows how to hold a temperature 
within desired limits by switching on and off an electric resistor.<br>
A more realistic example is provided in <b>Examples.Motor</b> where the
heating of an electrical motor is modelled, see the following screen shot
of this example:
</p>
<img src=\"./Images/driveWithHeatTransfer.png\" ALT=\"driveWithHeatTransfer\">
<p>
The <b>filled</b> and <b>non-filled red squares</b> at the left and
right side of a component represent <b>thermal ports</b> (connector HeatPort).
Drawing a line between such squares means that they are thermally connected.
The variables of a HeatPort connector are the temperature <b>T</b> at the port
and the heat flow rate <b>Q_flow</b> flowing into the component (if Q_flow is positive,
the heat flows into the element, otherwise it flows out of the element):
</p>
<pre>   Modelica.SIunits.Temperature  T  \"absolute temperature at port in Kelvin\";
   Modelica.SIunits.HeatFlowRate Q_flow  \"flow rate at the port in Watt\";
</pre>
<p>
Note, that all temperatures of this package, including initial conditions,
are given in Kelvin. For convenience, in subpackages <b>HeatTransfer.Celsius</b>,
 <b>HeatTransfer.Fahrenheit</b> and <b>HeatTransfer.Rankine</b> components are provided such that source and
sensor information is available in degree Celsius, degree Fahrenheit, or degree Rankine,
respectively. Additionally, in package <b>SIunits.Conversions</b> conversion
functions between the units Kelvin and Celsius, Fahrenheit, Rankine are
provided. These functions may be used in the following way:
</p>
<pre>  <b>import</b> SI=Modelica.SIunits;
  <b>import</b> Modelica.SIunits.Conversions.*;
     ...
  <b>parameter</b> SI.Temperature T = from_degC(25);  // convert 25 degree Celsius to Kelvin
</pre>

<p>
There are several other components available, such as AxialConduction (discretized PDE in
axial direction), which have been temporarily removed from this library. The reason is that
these components reference material properties, such as thermal conductivity, and currently
the Modelica design group is discussing a general scheme to describe material properties.
</p>
<p>
For technical details in the design of this library, see the following reference:<br>
<b>Michael Tiller (2001)</b>: <a href=\"http://www.amazon.de\">
Introduction to Physical Modeling with Modelica</a>.
Kluwer Academic Publishers Boston.
</p>
<p>
<b>Acknowledgements:</b><br>
Several helpful remarks from the following persons are acknowledged:
John Batteh, Ford Motors, Dearborn, U.S.A;
<a href=\"http://www.haumer.at/\">Anton Haumer</a>, Technical Consulting & Electrical Engineering, Austria;
Ludwig Marvan, VA TECH ELIN EBG Elektronik GmbH, Wien, Austria;
Hans Olsson, Dynasim AB, Sweden;
Hubertus Tummescheit, Lund Institute of Technology, Lund, Sweden.
</p>
<p><b>Copyright &copy; 2001-2007, Modelica Association, Michael Tiller and DLR.</b></p>
<p><i>
This Modelica package is free software; it can be redistributed and/or modified
under the terms of the Modelica license, see the license conditions
and the accompanying disclaimer in the documentation of package
Modelica in file \"Modelica/package.mo\".
</i></p>
</HTML>
", revisions="<html>
<ul>
<li><i>July 15, 2002</i>
       by Michael Tiller, <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       and <a href=\"http://www.robotic.dlr.de/Nikolaus.Schuermann/\">Nikolaus Sch&uuml;rmann</a>:<br>
       Implemented.
</li>
<li><i>June 13, 2005</i>
       by <a href=\"http://www.haumer.at/\">Anton Haumer</a><br>
       Refined placing of connectors (cosmetic).<br>
       Refined all Examples; removed Examples.FrequencyInverter, introducing Examples.Motor<br>
       Introduced temperature dependent correction (1 + alpha*(T - T_ref)) in Fixed/PrescribedHeatFlow<br>
</li>
</ul>
</html>"));
  package Examples 
    "Example models to demonstrate the usage of package Modelica.Thermal.HeatTransfer" 
    extends Modelica.Icons.Library2;
    
    model TwoMasses "Simple conduction demo" 
      extends Modelica.Icons.Example;
      parameter SI.Temperature T_final_K(fixed=false) 
        "Projected final temperature";
      parameter NonSI.Temperature_degC T_final_degC(fixed=false) 
        "Projected final temperature";
      HeatTransfer.HeatCapacitor mass1(C=15, T(start=from_degC(100))) 
        annotation (extent=[-100, 20; -40, 80]);
      HeatTransfer.HeatCapacitor mass2(C=15, T(start=from_degC(0))) annotation (
         extent=[40, 20; 100, 80]);
      HeatTransfer.ThermalConductor conduction(G=10) annotation (extent=[-30, -
            20; 30, 40]);
      annotation (Documentation(info="<HTML>
<p>
This example demonstrates the thermal response of two masses connected by
a conducting element. The two masses have the same heat capacity but different
initial temperatures (T1=100 [degC], T2= 0 [degC]). The mass with the higher
temperature will cool off while the mass with the lower temperature heats up.
They will each asymptotically approach the calculated temperature <b>T_final_K</b>
(<b>T_final_degC</b>) that results from dividing the total initial energy in the system by the sum
of the heat capacities of each element.
</p>
<p>
Simulate for 5 s and plot the variables<br>
mass1.T, mass2.T, T_final_K or <br>
Tsensor1.T, Tsensor2.T, T_final_degC
</p>
</HTML>
"),     experiment(StopTime=5),
        experimentSetupOutput);
      HeatTransfer.Celsius.TemperatureSensor Tsensor1 annotation (extent=[-60,
            -80; -20, -40]);
      HeatTransfer.Celsius.TemperatureSensor Tsensor2 annotation (extent=[60, -
            80; 20, -40]);
    equation 
      connect(mass1.port, conduction.port_a) annotation (points=[-70,20; -70,10;
            -30,10],      style(color=42));
      connect(conduction.port_b, mass2.port) annotation (points=[30,10; 70,10;
            70,20],    style(color=42));
      connect(mass1.port, Tsensor1.port) annotation (points=[-70,20; -70,-60;
            -60,-60],    style(color=42));
      connect(mass2.port, Tsensor2.port) annotation (points=[70, 20; 70, -60;
            60, -60], style(color=42));
    initial equation 
      T_final_K = (mass1.port.T*mass1.C + mass2.port.T*mass2.C)/(mass1.C +
        mass2.C);
      T_final_degC = to_degC(T_final_K);
    end TwoMasses;
    
    model ControlledTemperature "Control temperature of a resistor" 
      extends Modelica.Icons.Example;
      parameter NonSI.Temperature_degC TAmb=20 "Ambient Temperature";
      parameter NonSI.Temperature_degC TDif=2 "Error in Temperature";
      output NonSI.Temperature_degC TRes = to_degC(HeatingResistor1.heatPort.T) 
        "Resulting Temperature";
      annotation (Documentation(info="<HTML>
<P>
A constant voltage of 10 V is applied to a
temperature dependent resistor of 10*(1+(T-20C)/(235+20C)) Ohms,
whose losses v**2/r are dissipated via a
thermal conductance of 0.1 W/K to ambient temperature 20 degree C.
The resistor is assumed to have a thermal capacity of 1 J/K,
having ambient temparature at the beginning of the experiment.
The temperature of this heating resistor is held by an OnOff-controller
at reference temperature within a given bandwith +/- 1 K
by switching on and off the voltage source.
The reference temperature starts at 25 degree C
and rises between t = 2 and 8 seconds linear to 50 degree C.
An approppriate simulating time would be 10 seconds.
</P>
</HTML>
"), Diagram,
        experiment(StopTime=10),
        experimentSetupOutput);
      Modelica.Electrical.Analog.Basic.Ground Ground1 
                                  annotation (extent=[-100, -100; -80, -80]);
      Modelica.Electrical.Analog.Sources.ConstantVoltage ConstantVoltage1(V=10) 
                                                            annotation (extent=
            [-100, -60; -80, -40], rotation=-90);
      HeatTransfer.HeatCapacitor HeatCapacitor1(C=1, T(start=from_degC(TAmb))) 
        annotation (extent=[0, -60; 20, -80]);
      Modelica.Electrical.Analog.Basic.HeatingResistor HeatingResistor1(
        R_ref=10,
        T_ref=from_degC(20),
        alpha=1/(235 + 20)) annotation (extent=[-20, -60; -40, -40], rotation=-
            90);
      HeatTransfer.Celsius.FixedTemperature FixedTemperature1(T=TAmb) 
        annotation (extent=[100, -60; 80, -40]);
      HeatTransfer.Celsius.TemperatureSensor TemperatureSensor1 annotation (
          extent=[0, -40; 20, -20], rotation=90);
      HeatTransfer.ThermalConductor ThermalConductor1(G=0.1) annotation (extent=[40,
            -60; 60,-40]);
      Modelica.Electrical.Analog.Ideal.IdealOpeningSwitch IdealSwitch1 
            annotation (extent=[-70, -50; -50, -30]);
      Modelica.Blocks.Sources.Ramp Ramp1(
        height=25,
        duration=6,
        offset=25,
        startTime=2) annotation (extent=[40,0; 20,20]);
      Modelica.Blocks.Logical.OnOffController OnOffController1(bandwidth=TDif) 
        annotation (extent=[0,-20; -20,0]);
      Modelica.Blocks.Logical.Not Not1 annotation (extent=[-30,-20; -50,0]);
    equation 
      connect(ConstantVoltage1.n, HeatingResistor1.n) annotation (points=[-90,
            -60; -30, -60], style(color=3));
      connect(ConstantVoltage1.n, Ground1.p) annotation (points=[-90, -60; -90,
              -80], style(color=3));
      connect(HeatingResistor1.heatPort, ThermalConductor1.port_a) annotation (
          points=[-20,-50; 40,-50],   style(color=42));
      connect(ThermalConductor1.port_b, FixedTemperature1.port) annotation (
          points=[60,-50; 80,-50],   style(color=42));
      connect(HeatingResistor1.heatPort, TemperatureSensor1.port) annotation (
          points=[-20, -50; 10, -50; 10, -40], style(color=42));
      connect(HeatingResistor1.heatPort, HeatCapacitor1.port) annotation (
          points=[-20, -50; 10, -50; 10, -60], style(color=42));
      connect(ConstantVoltage1.p, IdealSwitch1.p) annotation (points=[-90, -40;
              -70, -40], style(color=3));
      connect(IdealSwitch1.n, HeatingResistor1.p) annotation (points=[-50, -40;
              -30, -40], style(color=3));
      connect(Ramp1.y, OnOffController1.reference) annotation (points=[19,10;
            10,10; 10,-4; 2,-4], style(color=74, rgbcolor={0,0,127}));
      connect(TemperatureSensor1.T, OnOffController1.u) annotation (points=[10,
            -20; 10,-16; 2,-16], style(color=74, rgbcolor={0,0,127}));
      connect(OnOffController1.y, Not1.u) annotation (points=[-21,-10; -28,-10],
          style(color=5, rgbcolor={255,0,255}));
      connect(Not1.y, IdealSwitch1.control) annotation (points=[-51,-10; -60,
            -10; -60,-33], style(color=5, rgbcolor={255,0,255}));
    end ControlledTemperature;
    
    model Motor "Second order thermal model of a motor" 
      extends Modelica.Icons.Example;
      parameter NonSI.Temperature_degC TAmb = 20 "Ambient temperature";
      annotation (Documentation(info="<HTML>
<p>
This example contains a simple second order thermal model of a motor. 
The periodic power losses are described by table \"lossTable\":<br>
<table>
<tr><td valign=\"top\">time</td><td valign=\"top\">winding losses</td><td valign=\"top\">core losses</td></tr>
<tr><td valign=\"top\">   0</td><td valign=\"top\">           100</td><td valign=\"top\">        500</td></tr>
<tr><td valign=\"top\"> 360</td><td valign=\"top\">           100</td><td valign=\"top\">        500</td></tr>
<tr><td valign=\"top\"> 360</td><td valign=\"top\">          1000</td><td valign=\"top\">        500</td></tr>
<tr><td valign=\"top\"> 600</td><td valign=\"top\">          1000</td><td valign=\"top\">        500</td></tr>
</table><br>
Since constant speed is assumed, the core losses keep constant 
whereas the winding losses are low for 6 minutes (no-load) and high for 4 minutes (over load).
<br>
The winding losses are corrected by (1 + alpha*(T - T_ref)) because the winding's resistance is temperature dependent whereas the core losses are kept constant (alpha = 0).
</p>
<p>
The power dissipation to the environment is approximated by heat flow through 
a thermal conductance between winding and core, 
partially storage of the heat in the winding's heat capacity 
as well as the core's heat capacity and finally by forced convection to the environment.<br>
Since constant speed is assumed, the cinvective conductance keeps constant.<br>
Using Modelica.Thermal.FluidHeatFlow it would be possible to model the coolant air flow, too 
(instead of simple dissipation to a constant ambient's temperature).
</p>
<p>
Simulate for 7200 s; plot Twinding.T and Tcore.T.
</p>
</HTML>
"),     experiment(StopTime=7200),
        experimentSetupOutput,
        Diagram);
      Modelica.Blocks.Sources.CombiTimeTable lossTable(extrapolation=Modelica.
            Blocks.Types.Extrapolation.Periodic, table=[0,100,500; 360,100,500;
            360,1000,500; 600,1000,500]) 
                                annotation (extent=[-50,60; -30,80], rotation=
            -90);
      HeatTransfer.PrescribedHeatFlow windingLosses(T_ref=from_degC(95), alpha=
            3.03E-3)                         annotation (extent=[-90,0; -70,20],
          rotation=-90);
      HeatTransfer.HeatCapacitor winding(T(start=from_degC(TAmb)), C=2500) 
                                            annotation (extent=[-90,-20; -70,
            -40]);
      HeatTransfer.Celsius.TemperatureSensor Twinding 
                                                     annotation (extent=[-70,
            -60; -50,-40], rotation=-90);
      HeatTransfer.ThermalConductor winding2core(G=10) 
                                            annotation (extent=[-50,-20; -30,0]);
      HeatTransfer.PrescribedHeatFlow coreLosses 
                                             annotation (extent=[-10,0; 10,20],
          rotation=-90);
      HeatTransfer.HeatCapacitor core(T(start=from_degC(TAmb)), C=25000) 
                                            annotation (extent=[-10,-20; 10,-40]);
      HeatTransfer.Celsius.TemperatureSensor Tcore   annotation (extent=[-30,
            -60; -10,-40],
                         rotation=-90);
      Modelica.Blocks.Sources.Constant convectionConstant(k=25) 
        annotation (extent=[30,20; 50,40], rotation=-90);
      HeatTransfer.Convection convection annotation (extent=[30,-20; 50,0]);
      HeatTransfer.Celsius.FixedTemperature environment(T=TAmb) 
                                                              annotation (
          extent=[70,-20; 90,0],    rotation=180);
    equation 
      connect(windingLosses.port, winding.port)  annotation (points=[-80,0; -80,
            -20], style(color=42, rgbcolor={191,0,0}));
      connect(coreLosses.port, core.port)  annotation (points=[6.12303e-016,0;
            6.12303e-016,-10; 0,-10; 0,-20],
          style(color=42, rgbcolor={191,0,0}));
      connect(winding.port, winding2core.port_a) 
                                       annotation (points=[-80,-20; -80,-10;
            -50,-10], style(color=42, rgbcolor={191,0,0}));
      connect(winding2core.port_b, core.port) 
                                    annotation (points=[-30,-10; 0,-10; 0,-20],
          style(color=42, rgbcolor={191,0,0}));
      connect(winding.port, Twinding.port)  annotation (points=[-80,-20; -80,
            -10; -60,-10; -60,-40], style(color=42, rgbcolor={191,0,0}));
      connect(core.port, Tcore.port)  annotation (points=[0,-20; 0,-10; -20,-10;
            -20,-40],      style(color=42, rgbcolor={191,0,0}));
      connect(winding2core.port_b, convection.solid) 
                                          annotation (points=[-30,-10; 30,-10],
          style(color=42, rgbcolor={191,0,0}));
      connect(convection.fluid, environment.port) annotation (points=[50,-10;
            60,-10; 60,-10; 70,-10], style(color=42, rgbcolor={191,0,0}));
      connect(convectionConstant.y, convection.Gc) 
        annotation (points=[40,19; 40,0], style(color=74, rgbcolor={0,0,127}));
      connect(lossTable.y[1], windingLosses.Q_flow) annotation (points=[-40,59;
            -40,40; -80,40; -80,20], style(color=74, rgbcolor={0,0,127}));
      connect(lossTable.y[2], coreLosses.Q_flow) annotation (points=[-40,59;
            -40,40; -6.12303e-016,40; -6.12303e-016,20],
                                   style(color=74, rgbcolor={0,0,127}));
    end Motor;
    annotation (Icon(
         Ellipse(extent=[-60,10; 40,-90], style(color=10, rgbcolor={135,135,135})),
          Polygon(points=[-30,-12; -30,-68; 28,-40; -30,-12], style(
            color=10,
            rgbcolor={135,135,135},
            fillColor=10,
            rgbfillColor={135,135,135},
            fillPattern=1))), Documentation(info="<html>
  
</html>"));
  end Examples;
  
  package Interfaces "Connectors and partial models" 
    
    extends Modelica.Icons.Library2;
    
    partial connector HeatPort "Thermal port for 1-dim. heat transfer" 
      SI.Temperature T "Port temperature";
      flow SI.HeatFlowRate Q_flow 
        "Heat flow rate (positive if flowing from outside into the component)";
      annotation (Documentation(info="<html>
  
</html>"));
    end HeatPort;
    
    connector HeatPort_a 
      "Thermal port for 1-dim. heat transfer (filled rectangular icon)" 
      
      extends HeatPort;
      
      annotation(defaultComponentName = "port_a",
        Documentation(info="<HTML>
<p>This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:</p>
<pre>   
   T       Temperature in [Kelvin].
   Q_flow  Heat flow rate in [Watt].
</pre>
<p>According to the Modelica sign convention, a <b>positive</b> heat flow
rate <b>Q_flow</b> is considered to flow <b>into</b> a component. This
convention has to be used whenever this connector is used in a model
class.</p>
<p>Note, that the two connector classes <b>HeatPort_a</b> and
<b>HeatPort_b</b> are identical with the only exception of the different
<b>icon layout</b>.</p></HTML>
"),     Icon(Rectangle(extent=[-100, 100; 100, -100], style(color=42, fillColor=
                 42))),
        Diagram(Rectangle(extent=[-50,50; 50,-50],   style(color=42,
                fillColor=42)), Text(
            extent=[-120,120; 100,60],
            string="%name",
            style(color=42))));
    end HeatPort_a;
    
    connector HeatPort_b 
      "Thermal port for 1-dim. heat transfer (unfilled rectangular icon)" 
      
      extends HeatPort;
      
      annotation(defaultComponentName = "port_b",
        Documentation(info="<HTML>
<p>This connector is used for 1-dimensional heat flow between components.
The variables in the connector are:</p>
<pre>
   T       Temperature in [Kelvin].
   Q_flow  Heat flow rate in [Watt].
</pre>
<p>According to the Modelica sign convention, a <b>positive</b> heat flow
rate <b>Q_flow</b> is considered to flow <b>into</b> a component. This
convention has to be used whenever this connector is used in a model
class.</p>
<p>Note, that the two connector classes <b>HeatPort_a</b> and
<b>HeatPort_b</b> are identical with the only exception of the different
<b>icon layout</b>.</p></HTML>
"),     Diagram(Rectangle(extent=[-50,50; 50,-50],    style(color=42,
                fillColor=7)), Text(
            extent=[-100,120; 120,60],
            string="%name",
            style(color=42))),
        Icon(Rectangle(extent=[-100, 100; 100, -100], style(color=42, fillColor=
                 7))));
    end HeatPort_b;
    
    partial model Element1D 
      "Partial heat transfer element with two HeatPort connectors that does not store energy" 
      
      SI.HeatFlowRate Q_flow "Heat flow rate from port_a -> port_b";
      SI.TemperatureDifference dT "port_a.T - port_b.T";
    public 
      HeatPort_a port_a annotation (extent=[-110,-10; -90,10]);
      HeatPort_b port_b annotation (extent=[90,-10; 110,10]);
      annotation (Documentation(info="<HTML>
<p>
This partial model contains the basic connectors and variables to
allow heat transfer models to be created that <b>do not store energy</b>,
This model defines and includes equations for the temperature
drop across the element, <b>dT</b>, and the heat flow rate
through the element from port_a to port_b, <b>Q_flow</b>.
</p>
<p>
By extending this model, it is possible to write simple
constitutive equations for many types of heat transfer components.
</p>
</HTML>
"), Icon,
        Diagram);
    equation 
      dT = port_a.T - port_b.T;
      port_a.Q_flow = Q_flow;
      port_b.Q_flow = -Q_flow;
    end Element1D;
    annotation (Icon(
              Rectangle(extent=[-60,10; 40,-90],   style(color=42,
              fillColor=42))), Documentation(info="<html>
  
</html>"));
  end Interfaces;
  
  model HeatCapacitor "Lumped thermal element storing heat" 
    parameter SI.HeatCapacity C "Heat capacity of part (= cp*m)";
    parameter Boolean steadyStateStart=false 
      "true, if component shall start in steady state";
    SI.Temperature T(start=from_degC(20)) "Temperature of part";
    annotation (
      Icon(
        Text(extent=[-129, 121; 131, 70], string="%name"),
        Polygon(points=[0,67; -20,63; -40,57; -52,43; -58,35; -68,25; -72,13;
              -76,-1; -78,-15; -76,-31; -76,-43; -76,-53; -70,-65; -64,-73; -48,
              -77; -30,-83; -18,-83; -2,-85; 8,-89; 22,-89; 32,-87; 42,-81; 54,
              -75; 56,-73; 66,-61; 68,-53; 70,-51; 72,-35; 76,-21; 78,-13; 78,3;
              74,15; 66,25; 54,33; 44,41; 36,57; 26,65; 0,67],
                                        style(color=9, fillColor=8)),
        Polygon(points=[-58,35; -68,25; -72,13; -76,-1; -78,-15; -76,-31; -76,
              -43; -76,-53; -70,-65; -64,-73; -48,-77; -30,-83; -18,-83; -2,-85;
              8,-89; 22,-89; 32,-87; 42,-81; 54,-75; 42,-77; 40,-77; 30,-79; 20,
              -81; 18,-81; 10,-81; 2,-77; -12,-73; -22,-73; -30,-71; -40,-65;
              -50,-55; -56,-43; -58,-35; -58,-25; -60,-13; -60,-5; -60,7; -58,
              17; -56,19; -52,27; -48,35; -44,45; -40,57; -58,35],
                                                style(color=0, fillColor=9)),
        Text(
          extent=[-69,7; 71,-24],
          string="%C",
          style(color=0))),
      Diagram(
        Polygon(points=[0,67; -20,63; -40,57; -52,43; -58,35; -68,25; -72,13;
              -76,-1; -78,-15; -76,-31; -76,-43; -76,-53; -70,-65; -64,-73; -48,
              -77; -30,-83; -18,-83; -2,-85; 8,-89; 22,-89; 32,-87; 42,-81; 54,
              -75; 56,-73; 66,-61; 68,-53; 70,-51; 72,-35; 76,-21; 78,-13; 78,3;
              74,15; 66,25; 54,33; 44,41; 36,57; 26,65; 0,67],
                                        style(color=9, fillColor=8)),
        Polygon(points=[-58,35; -68,25; -72,13; -76,-1; -78,-15; -76,-31; -76,
              -43; -76,-53; -70,-65; -64,-73; -48,-77; -30,-83; -18,-83; -2,-85;
              8,-89; 22,-89; 32,-87; 42,-81; 54,-75; 42,-77; 40,-77; 30,-79; 20,
              -81; 18,-81; 10,-81; 2,-77; -12,-73; -22,-73; -30,-71; -40,-65;
              -50,-55; -56,-43; -58,-35; -58,-25; -60,-13; -60,-5; -60,7; -58,
              17; -56,19; -52,27; -48,35; -44,45; -40,57; -58,35],
                                                style(color=0, fillColor=9)),
        Ellipse(extent=[-6,-1; 6,-12],   style(color=41, fillColor=42)),
        Text(
          extent=[11,13; 50,-25],
          string="T",
          style(color=0)),
        Line(points=[0,-12; 0,-96], style(color=1, rgbcolor={255,0,0}))),
      Documentation(info="<HTML>
<p>
This is a generic model for the heat capacity of a material.
No specific geometry is assumed beyond a total volume with
uniform temperature for the entire volume.
Furthermore, it is assumed that the heat capacity
is constant (indepedent of temperature).
</p>
<p>
The temperature T [Kelvin] of this component is a <b>state</b>.
A default of T = 25 degree Celsius (= SIunits.Conversions.from_degC(25))
is used as start value for initialization.
This usually means that at start of integration the temperature of this
component is 25 degrees Celsius. You may, of course, define a different
temperature as start value for initialization. Alternatively, it is possible
to set parameter <b>steadyStateStart</b> to <b>true</b>. In this case
the additional equation '<b>der</b>(T) = 0' is used during
initialization, i.e., the temperature T is computed in such a way that
the component starts in <b>steady state</b>. This is useful in cases,
where one would like to start simulation in a suitable operating
point without being forced to integrate for a long time to arrive
at this point.
</p>
<p>
Note, that parameter <b>steadyStateStart</b> is not available in
the parameter menue of the simulation window, because its value
is utilized during translation to generate quite different
equations depending on its setting. Therefore, the value of this
parameter can only be changed before translating the model.
</p>
<p>
This component may be used for complicated geometries where
the heat capacity C is determined my measurements. If the component
consists mainly of one type of material, the <b>mass m</b> of the
component may be measured or calculated and multiplied with the
<b>specific heat capacity cp</b> of the component material to
compute C:
</p>
<pre>
   C = cp*m.
   Typical values for cp at 20 degC in J/(kg.K):
      aluminium   896
      concrete    840
      copper      383
      iron        452
      silver      235
      steel       420 ... 500 (V2A)
      wood       2500
</pre>
</HTML>
"));
    Interfaces.HeatPort_a port annotation (extent=[-10, -110; 10, -90],
        rotation=90);
  equation 
    T = port.T;
    C*der(T) = port.Q_flow;
    
  initial equation 
    if steadyStateStart then
      der(T) = 0;
    end if;
  end HeatCapacitor;
  
  model ThermalConductor 
    "Lumped thermal element transporting heat without storing it" 
    extends Interfaces.Element1D;
    parameter SI.ThermalConductance G 
      "Constant thermal conductance of material";
    
    annotation (
      Icon(
        Rectangle(extent=[-90,70; 90,-70],     style(
            color=0,
            pattern=0,
            fillColor=8,
            fillPattern=8)),
        Line(points=[-90,70; -90,-70],     style(color=0, thickness=2)),
        Line(points=[90,70; 90,-70],     style(color=0, thickness=2)),
        Text(extent=[-139, 134; 141, 74], string="%name"),
        Text(
          extent=[-115, -76; 113, -116],
          string="G=%G",
          style(color=0))),
      Diagram(
        Line(points=[-80, 0; 80, 0], style(
            color=41,
            thickness=2,
            arrow=1)),
        Text(
          extent=[-26, -10; 27, -39],
          string="Q_flow",
          style(color=41)),
        Text(
          extent=[-80, 50; 80, 20],
          string="dT = port_a.T - port_b.T",
          style(color=0))),
      Documentation(info="<HTML>
<p>
This is a model for transport of heat without storing it.
It may be used for complicated geometries where
the thermal conductance G (= inverse of thermal resistance)
is determined by measurements and is assumed to be constant
over the range of operations. If the component consists mainly of
one type of material and a regular geometry, it may be calculated,
e.g., with one of the following equations:
</p>
<ul>
<li><p>
    Conductance for a <b>box</b> geometry under the assumption
    that heat flows along the box length:</p>
    <pre>
    G = k*A/L
    k: Thermal conductivity (material constant)
    A: Area of box
    L: Length of box
    </pre>
    </li>
<li><p>
    Conductance for a <b>cylindrical</b> geometry under the assumption
    that heat flows from the inside to the outside radius
    of the cylinder:</p>
    <pre>
    G = 2*pi*k*L/log(r_out/r_in)
    pi   : Modelica.Constants.pi
    k    : Thermal conductivity (material constant)
    L    : Length of cylinder
    log  : Modelica.Math.log;
    r_out: Outer radius of cylinder
    r_in : Inner radius of cylinder
    </pre>
    </li>
</li>
</ul>
<pre>
    Typical values for k at 20 degC in W/(m.K):
      aluminium   220
      concrete      1
      copper      384
      iron         74
      silver      407
      steel        45 .. 15 (V2A)
      wood         0.1 ... 0.2
</pre>
</HTML>
"));
  equation 
    Q_flow = G*dT;
  end ThermalConductor;
  
  model Convection "Lumped thermal element for heat convection" 
    SI.HeatFlowRate Q_flow "Heat flow rate from solid -> fluid";
    SI.TemperatureDifference dT "= solid.T - fluid.T";
    annotation (
      Icon(
        Rectangle(extent=[-62,80; 98,-80],   style(color=7, fillColor=7)),
        Rectangle(extent=[-90,80; -60,-80],    style(
            color=0,
            fillColor=8,
            fillPattern=8)),
        Text(extent=[-117, -88; 124, -128], string="%name"),
        Line(points=[100, 0; 100, 0], style(color=69, fillColor=47)),
        Line(points=[-60,20; 76,20],    style(color=42, fillColor=45)),
        Line(points=[-60,-20; 76,-20],    style(color=42, fillColor=45)),
        Line(points=[-34,80; -34,-80],   style(color=69, fillColor=47)),
        Line(points=[6,80; 6,-80],   style(color=69, fillColor=47)),
        Line(points=[40,80; 40,-80],   style(color=69, fillColor=47)),
        Line(points=[76,80; 76,-80],   style(color=69, fillColor=47)),
        Line(points=[-34,-80; -44,-60],   style(color=69, fillColor=47)),
        Line(points=[-34,-80; -24,-60],   style(color=69, fillColor=47)),
        Line(points=[6,-80; -4,-60],    style(color=69, fillColor=47)),
        Line(points=[6,-80; 16,-60],   style(color=69, fillColor=47)),
        Line(points=[40,-80; 30,-60],   style(color=69, fillColor=47)),
        Line(points=[40,-80; 50,-60],   style(color=69, fillColor=47)),
        Line(points=[76,-80; 66,-60],   style(color=69, fillColor=47)),
        Line(points=[76,-80; 86,-60],   style(color=69, fillColor=47)),
        Line(points=[56,-30; 76,-20],    style(color=42, fillColor=45)),
        Line(points=[56,-10; 76,-20],    style(color=42, fillColor=45)),
        Line(points=[56,10; 76,20],    style(color=42, fillColor=45)),
        Line(points=[56,30; 76,20],    style(color=42, fillColor=45))),
      Documentation(info="<HTML>
<p>
This is a model of linear heat convection, e.g., the heat transfer
between a plate and the surrounding air. It may be used for complicated
solid geometries and fluid flow over the solid by determining the
convective thermal conductance Gc by measurements. The basic constitutive
equation for convection is
</p>
<pre>
   Q_flow = Gc*(solid.T - fluid.T);
   Q_flow: Heat flow rate from connector 'solid' (e.g. a plate)
      to connector 'fluid' (e.g. the surrounding air)
</pre>
<p>
Gc = G.signal[1] is an input signal to the component, since Gc is
nearly never constant in practice. For example, Gc may be a function
of the speed of a cooling fan. For simple situations,
Gc may be <i>calculated</i> according to
</p>
<pre>
   Gc = A*h
   A: Convection area (e.g. perimeter*length of a box)
   h: Heat transfer coefficient
</pre>
<p>
where the heat transfer coefficient h is calculated
from properties of the fluid flowing over the solid. Examples:
</p>
<p>
<b>Machines cooled by air</b> (empirical, very rough approximation according
to R. Fischer: Elektrische Maschinen, 10th edition, Hanser-Verlag 1999,
p. 378):
</p>
<pre>
    h = 7.8*v^0.78 [W/(m2.K)] (forced convection)
      = 12         [W/(m2.K)] (free convection)
    where
      v: Air velocity in [m/s]
</pre>
<p><b>Laminar</b> flow with constant velocity of a fluid along a
<b>flat plate</b> where the heat flow rate from the plate
to the fluid (= solid.Q_flow) is kept constant
(according to J.P.Holman: Heat Transfer, 8th edition,
McGraw-Hill, 1997, p.270):
</p>
<pre>
   h  = Nu*k/x;
   Nu = 0.453*Re^(1/2)*Pr^(1/3);
   where
      h  : Heat transfer coefficient
      Nu : = h*x/k       (Nusselt number)
      Re : = v*x*rho/mue (Reynolds number)
      Pr : = cp*mue/k    (Prandtl number)
      v  : Absolute velocity of fluid
      x  : distance from leading edge of flat plate
      rho: density of fluid (material constant
      mue: dynamic viscosity of fluid (material constant)
      cp : specific heat capacity of fluid (material constant)
      k  : thermal conductivity of fluid (material constant)
   and the equation for h holds, provided
      Re < 5e5 and 0.6 < Pr < 50
</pre>
</HTML>
"),   Diagram(
        Rectangle(extent=[-90,80; -60,-80],    style(
            color=0,
            fillColor=8,
            fillPattern=8)),
        Line(points=[100, 0; 100, 0], style(color=69, fillColor=47)),
        Line(points=[100, 0; 100, 0], style(color=69, fillColor=47)),
        Line(points=[100, 0; 100, 0], style(color=69, fillColor=47)),
        Text(
          extent=[-35, 42; -5, 20],
          string="Q_flow",
          style(color=41)),
        Line(points=[-60,20; 76,20],    style(color=42, fillColor=45)),
        Line(points=[-60,-20; 76,-20],    style(color=42, fillColor=45)),
        Line(points=[-34,80; -34,-80],   style(color=69, fillColor=47)),
        Line(points=[6,80; 6,-80],   style(color=69, fillColor=47)),
        Line(points=[40,80; 40,-80],   style(color=69, fillColor=47)),
        Line(points=[76,80; 76,-80],   style(color=69, fillColor=47)),
        Line(points=[-34,-80; -44,-60],   style(color=69, fillColor=47)),
        Line(points=[-34,-80; -24,-60],   style(color=69, fillColor=47)),
        Line(points=[6,-80; -4,-60],    style(color=69, fillColor=47)),
        Line(points=[6,-80; 16,-60],   style(color=69, fillColor=47)),
        Line(points=[40,-80; 30,-60],   style(color=69, fillColor=47)),
        Line(points=[40,-80; 50,-60],   style(color=69, fillColor=47)),
        Line(points=[76,-80; 66,-60],   style(color=69, fillColor=47)),
        Line(points=[76,-80; 86,-60],   style(color=69, fillColor=47)),
        Line(points=[56,-30; 76,-20],    style(color=42, fillColor=45)),
        Line(points=[56,-10; 76,-20],    style(color=42, fillColor=45)),
        Line(points=[56,10; 76,20],    style(color=42, fillColor=45)),
        Line(points=[56,30; 76,20],    style(color=42, fillColor=45))));
    Modelica.Blocks.Interfaces.RealInput Gc(redeclare type SignalType = 
          SI.ThermalConductance) 
      "Signal representing the convective thermal conductance in [W/K]" 
      annotation (extent=[-20, 80; 20, 120], rotation=270);
    Interfaces.HeatPort_a solid annotation (extent=[-110,-10; -90,10]);
    Interfaces.HeatPort_b fluid annotation (extent=[90,-10; 110,10]);
  equation 
    dT = solid.T - fluid.T;
    solid.Q_flow = Q_flow;
    fluid.Q_flow = -Q_flow;
    Q_flow = Gc*dT;
  end Convection;
  
  model BodyRadiation "Lumped thermal element for radiation heat transfer" 
    extends Interfaces.Element1D;
    parameter Real Gr(unit="m2") 
      "Net radiation conductance between two surfaces (see docu)";
    annotation (
      Icon(
        Rectangle(extent=[50,80; 90,-80],    style(
            color=0,
            fillColor=8,
            fillPattern=8)),
        Rectangle(extent=[-90,80; -50,-80],    style(
            color=0,
            fillColor=8,
            fillPattern=8)),
        Line(points=[-36,10; 36,10],   style(color=42, fillColor=45)),
        Line(points=[-36,10; -26,16],   style(color=42, fillColor=45)),
        Line(points=[-36,10; -26,4],   style(color=42, fillColor=45)),
        Line(points=[-36,-10; 36,-10],   style(color=42, fillColor=45)),
        Line(points=[26,-16; 36,-10],   style(color=42, fillColor=45)),
        Line(points=[26,-4; 36,-10],   style(color=42, fillColor=45)),
        Line(points=[-36,-30; 36,-30],   style(color=42, fillColor=45)),
        Line(points=[-36,-30; -26,-24],   style(color=42, fillColor=45)),
        Line(points=[-36,-30; -26,-36],   style(color=42, fillColor=45)),
        Line(points=[-36,30; 36,30],   style(color=42, fillColor=45)),
        Line(points=[26,24; 36,30],   style(color=42, fillColor=45)),
        Line(points=[26,36; 36,30],   style(color=42, fillColor=45)),
        Text(extent=[-132, 144; 108, 84], string="%name"),
        Text(
          extent=[-119, -86; 117, -125],
          string="G=%G",
          style(color=0)),
        Rectangle(extent=[-50,80; -44,-80],   style(color=42, fillColor=42)),
        Rectangle(extent=[45,80; 50,-80],   style(color=42, fillColor=42))),
      Documentation(info="<HTML>
<p>
This is a model describing the thermal radiation, i.e., electromagnetic
radiation emitted between two bodies as a result of their temperatures.
The following constitutive equation is used:
</p>
<pre>
    Q_flow = Gr*sigma*(port_a.T^4 - port_b.T^4);
</pre>
<p>
where Gr is the radiation conductance and sigma is the Stefan-Boltzmann
constant (= Modelica.Constants.sigma). Gr may be determined by
measurements and is assumed to be constant over the range of operations.
</p>
<p>
For simple cases, Gr may be analytically computed. The analytical
equations use epsilon, the emission value of a body which is in the
range 0..1. Epsilon=1, if the body absorbs all radiation (= black body).
Epsilon=0, if the body reflects all radiation and does not absorb any.
</p>
<pre>
   Typical values for epsilon:
   aluminium, polished    0.04
   copper, polished       0.04
   gold, polished         0.02
   paper                  0.09
   rubber                 0.95
   silver, polished       0.02
   wood                   0.85..0.9
</pre>
<p><b>Analytical Equations for Gr</b></p>
<p>
<b>Small convex object in large enclosure</b>
(e.g., a hot machine in a room):
</p>
<pre>
    Gr = e*A
    where
       e: Emission value of object (0..1)
       A: Surface area of object where radiation
          heat transfer takes place
</pre>
<p><b>Two parallel plates</b>:</p>
<pre>
    Gr = A/(1/e1 + 1/e2 - 1)
    where
       e1: Emission value of plate1 (0..1)
       e2: Emission value of plate2 (0..1)
       A : Area of plate1 (= area of plate2)
</pre>
<p><b>Two long cylinders in each other</b>, where radiation takes
place from the inner to the outer cylinder):
</p>
<pre>
    Gr = 2*pi*r1*L/(1/e1 + (1/e2 - 1)*(r1/r2))
    where
       pi: = Modelica.Constants.pi
       r1: Radius of inner cylinder
       r2: Radius of outer cylinder
       L : Length of the two cylinders
       e1: Emission value of inner cylinder (0..1)
       e2: Emission value of outer cylinder (0..1)
</pre>
</HTML>
"),   Diagram(
        Rectangle(extent=[-90,80; -56,-80],    style(
            color=0,
            fillColor=8,
            fillPattern=8)),
        Line(points=[-56,80; -56,-80],   style(color=0, thickness=4)),
        Line(points=[50,80; 50,-80],   style(color=0, thickness=4)),
        Rectangle(extent=[50,80; 90,-80],    style(
            color=0,
            fillColor=8,
            fillPattern=8)),
        Line(points=[-40, 10; 40, 10], style(color=42, fillColor=45)),
        Line(points=[-40, 10; -30, 16], style(color=42, fillColor=45)),
        Line(points=[-40, 10; -30, 4], style(color=42, fillColor=45)),
        Line(points=[-40, -10; 40, -10], style(color=42, fillColor=45)),
        Line(points=[30, -16; 40, -10], style(color=42, fillColor=45)),
        Line(points=[30, -4; 40, -10], style(color=42, fillColor=45)),
        Line(points=[-40, -30; 40, -30], style(color=42, fillColor=45)),
        Line(points=[-40, -30; -30, -24], style(color=42, fillColor=45)),
        Line(points=[-40, -30; -30, -36], style(color=42, fillColor=45)),
        Line(points=[-40, 30; 40, 30], style(color=42, fillColor=45)),
        Line(points=[30, 24; 40, 30], style(color=42, fillColor=45)),
        Line(points=[30, 36; 40, 30], style(color=42, fillColor=45))));
  equation 
    Q_flow = Gr*Modelica.Constants.sigma*(port_a.T^4 - port_b.T^4);
  end BodyRadiation;
  
  model FixedTemperature "Fixed temperature boundary condition in Kelvin" 
    
    parameter SI.Temperature T "Fixed temperature at port";
    annotation (
      Icon(
        Text(extent=[-121, 162; 119, 102], string="%name"),
        Text(
          extent=[-121, -105; 119, -151],
          string="T=%T",
          style(color=0)),
        Rectangle(extent=[-100,100; 100,-100],   style(
            color=0,
            pattern=0,
            fillColor=76,
            fillPattern=8)),
        Text(
          extent=[0,0; -100,-100],
          string="K",
          style(color=0)),
        Line(points=[-52,0; 56,0],   style(color=42, thickness=2)),
        Polygon(points=[50,-20; 50,20; 90,0; 50,-20],      style(
            color=42,
            fillColor=42,
            fillPattern=1))),
      Documentation(info="<HTML>
<p>
This model defines a fixed temperature T at its port in Kelvin,
i.e., it defines a fixed temperature as a boundary condition.
</p>
</HTML>
"),   Diagram(
        Rectangle(extent=[-100, 100; 100, -101], style(
            color=0,
            pattern=0,
            fillColor=76,
            fillPattern=8)),
        Line(points=[-52,0; 56,0],   style(color=42, thickness=2)),
        Text(
          extent=[0, 0; -100, -100],
          string="K",
          style(color=0)),
        Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
            color=42,
            fillColor=42,
            fillPattern=1))));
    Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
  equation 
    port.T = T;
  end FixedTemperature;
  
  model PrescribedTemperature 
    "Variable temperature boundary condition in Kelvin" 
    
    annotation (
      Icon(
        Rectangle(extent=[-100, 100; 100, -100], style(
            color=0,
            pattern=0,
            fillColor=76,
            fillPattern=8)),
        Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
        Text(
          extent=[0, 0; -100, -100],
          string="K",
          style(color=0)),
        Text(extent=[-125, 162; 115, 102], string="%name"),
        Polygon(points=[50,-20; 50,20; 90,0; 50,-20],      style(
            color=42,
            fillColor=42,
            fillPattern=1))),
      Documentation(info="<HTML>
<p>
This model represents a variable temperature boundary condition.
The temperature in [K] is given as input signal <b>T</b>
to the model. The effect is that an instance of this model acts as
an infinite reservoir able to absorb or generate as much energy
as required to keep the temperature at the specified value.
</p>
</HTML>
"),   Diagram(
        Rectangle(extent=[-100, 100; 100, -100], style(
            color=0,
            pattern=0,
            fillColor=76,
            fillPattern=8)),
        Text(
          extent=[0, 0; -100, -100],
          string="K",
          style(color=0)),
        Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
        Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
            color=42,
            fillColor=42,
            fillPattern=1))));
    Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
    Modelica.Blocks.Interfaces.RealInput T(redeclare type SignalType = 
          SI.Temperature) annotation (extent=[-140, -20; -100, 20]);
  equation 
    port.T = T;
  end PrescribedTemperature;
  
  model FixedHeatFlow "Fixed heat flow boundary condition" 
    parameter SI.HeatFlowRate Q_flow "Fixed heat flow rate at port";
    parameter SI.Temperature T_ref=from_degC(20) "Reference temperature";
    parameter Real alpha(unit="1/K") = 0 
      "Temperature coefficient of heat flow rate";
    annotation (
      Icon(
        Text(extent=[-134, 120; 132, 60], string="%name"),
        Text(
          extent=[-137, -52; 133, -100],
          string="Q_flow=%Q_flow",
          style(color=0)),
        Line(points=[-100, -20; 48, -20], style(color=42, thickness=2)),
        Line(points=[-100, 20; 46, 20], style(color=42, thickness=2)),
        Polygon(points=[40, 0; 40, 40; 70, 20; 40, 0], style(
            color=42,
            fillColor=42,
            fillPattern=1)),
        Polygon(points=[40, -40; 40, 0; 70, -20; 40, -40], style(
            color=42,
            fillColor=42,
            fillPattern=1)),
        Rectangle(extent=[70, 40; 90, -40], style(color=42, fillColor=42))),
      Diagram(
        Text(
          extent=[-100, 40; 0, -36],
          string="Q_flow=const.",
          style(color=0)),
        Line(points=[-48, -20; 60, -20], style(color=42, thickness=2)),
        Line(points=[-48, 20; 60, 20], style(color=42, thickness=2)),
        Polygon(points=[60, 0; 60, 40; 90, 20; 60, 0], style(
            color=42,
            fillColor=42,
            fillPattern=1)),
        Polygon(points=[60, -40; 60, 0; 90, -20; 60, -40], style(
            color=42,
            fillColor=42,
            fillPattern=1))),
      Documentation(info="<HTML>
<p>
This model allows a specified amount of heat flow rate to be \"injected\"
into a thermal system at a given port.  The constant amount of heat
flow rate Q_flow is given as a parameter. The heat flows into the
component to which the component FixedHeatFlow is connected,
if parameter Q_flow is positive.
</p>
<p>
If parameter alpha is > 0, the heat flow is mulitplied by (1 + alpha*(port.T - T_ref)) 
in order to simulate temperature dependent losses (which are given an reference temperature T_ref).
</p>
</HTML>
"));
    Interfaces.HeatPort_b port annotation (extent=[90, -10; 110, 10]);
  equation 
    port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
  end FixedHeatFlow;
  
  model PrescribedHeatFlow "Prescribed heat flow boundary condition" 
    parameter SI.Temperature T_ref=from_degC(20) "Reference temperature";
    parameter Real alpha(unit="1/K") = 0 
      "Temperature coefficient of heat flow rate";
    annotation (
      Icon(
        Line(points=[-60, -20; 40, -20], style(color=42, thickness=2)),
        Line(points=[-60, 20; 40, 20], style(color=42, thickness=2)),
        Line(points=[-80, 0; -60, -20], style(color=42, thickness=2)),
        Line(points=[-80, 0; -60, 20], style(color=42, thickness=2)),
        Polygon(points=[40, 0; 40, 40; 70, 20; 40, 0], style(
            color=42,
            fillColor=42,
            fillPattern=1)),
        Polygon(points=[40, -40; 40, 0; 70, -20; 40, -40], style(
            color=42,
            fillColor=42,
            fillPattern=1)),
        Rectangle(extent=[70, 40; 90, -40], style(color=42, fillColor=42)),
        Text(extent=[-134, 120; 132, 60], string="%name")),
      Documentation(info="<HTML>
<p>
This model allows a specified amount of heat flow rate to be \"injected\"
into a thermal system at a given port.  The amount of heat
is given by the input signal Q_flow into the model. The heat flows into the
component to which the component PrescribedHeatFlow is connected,
if the input signal is positive.
</p>
<p>
If parameter alpha is > 0, the heat flow is mulitplied by (1 + alpha*(port.T - T_ref)) 
in order to simulate temperature dependent losses (which are given an reference temperature T_ref).
</p>
</HTML>
"),   Diagram(
        Line(points=[-60, -20; 68, -20], style(color=42, thickness=2)),
        Line(points=[-60, 20; 68, 20], style(color=42, thickness=2)),
        Line(points=[-80, 0; -60, -20], style(color=42, thickness=2)),
        Line(points=[-80, 0; -60, 20], style(color=42, thickness=2)),
        Polygon(points=[60, 0; 60, 40; 90, 20; 60, 0], style(
            color=42,
            fillColor=42,
            fillPattern=1)),
        Polygon(points=[60, -40; 60, 0; 90, -20; 60, -40], style(
            color=42,
            fillColor=42,
            fillPattern=1))));
    Modelica.Blocks.Interfaces.RealInput Q_flow(
      redeclare type SignalType = SI.HeatFlowRate) 
          annotation (extent=[-80, -20; -120, 20], rotation=180);
    Interfaces.HeatPort_b port annotation (extent=[90, -10; 110, 10]);
  equation 
    port.Q_flow = -Q_flow*(1 + alpha*(port.T - T_ref));
  end PrescribedHeatFlow;
  
  model TemperatureSensor "Absolute temperature sensor in Kelvin" 
    
    annotation (
      Diagram(
        Ellipse(extent=[-20, -98; 20, -60], style(
            color=0,
            thickness=2,
            fillColor=42)),
        Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
        Line(points=[12, 0; 90, 0]),
        Line(points=[-94, 0; -14, 0], style(color=42)),
        Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10, 86;
                12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
        Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
        Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
        Line(points=[-40, -20; -12, -20], style(color=0)),
        Line(points=[-40, 20; -12, 20], style(color=0)),
        Line(points=[-40, 60; -12, 60], style(color=0)),
        Text(
          extent=[102, -28; 60, -78],
          string="K",
          style(color=0))),
      Icon(
        Ellipse(extent=[-20, -98; 20, -60], style(
            color=0,
            thickness=2,
            fillColor=42)),
        Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
        Line(points=[12, 0; 90, 0]),
        Line(points=[-90, 0; -12, 0], style(color=42)),
        Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10, 86;
                12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
        Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
        Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
        Line(points=[-40, -20; -12, -20], style(color=0)),
        Line(points=[-40, 20; -12, 20], style(color=0)),
        Line(points=[-40, 60; -12, 60], style(color=0)),
        Text(
          extent=[126, -20; 26, -120],
          string="K",
          style(color=0)),
        Text(extent=[-132, 144; 108, 84], string="%name")),
      Documentation(info="<HTML>
<p>
This is an ideal absolute temperature sensor which returns
the temperature of the connected port in Kelvin as an output
signal.  The sensor itself has no thermal interaction with
whatever it is connected to.  Furthermore, no
thermocouple-like lags are associated with this
sensor model.
</p>
</HTML>
"));
    Modelica.Blocks.Interfaces.RealOutput T(redeclare type SignalType = 
          SI.Temperature) annotation (extent=[90, -10; 110, 10]);
    Interfaces.HeatPort_a port annotation (extent=[-110, -10; -90, 10]);
  equation 
    T = port.T;
    port.Q_flow = 0;
  end TemperatureSensor;
  
  model RelTemperatureSensor "Relative Temperature sensor" 
    extends Modelica.Icons.TranslationalSensor;
    annotation (
      Icon(
        Line(points=[-90, 0; -70, 0; -70, 0], style(color=42)),
        Line(points=[-90, 0; -70, 0; -70, 0], style(color=42)),
        Line(points=[70, 0; 90, 0; 90, 0], style(color=42)),
        Line(points=[0, -30; 0, -80]),
        Text(extent=[-140, 94; 144, 34], string="%name"),
        Text(
          extent=[92, -62; 34, -122],
          string="K",
          style(color=0))),
      Diagram(
        Line(points=[-90, 0; -70, 0; -70, 0], style(color=42)),
        Line(points=[-98, 0; -70, 0; -70, 0], style(color=42)),
        Line(points=[70,0; 94,0; 94,0],    style(color=42)),
        Line(points=[0, -30; 0, -80]),
        Text(
          extent=[64, -74; 32, -102],
          string="K",
          style(color=0))),
      Documentation(info="<HTML>
<p>
The relative temperature \"port_a.T - port_b.T\" is determined between
the two ports of this component and is provided as output signal in Kelvin.
</p>
</HTML>
"));
    Interfaces.HeatPort_a port_a annotation (extent=[-110, -10; -90, 10]);
    Interfaces.HeatPort_b port_b annotation (extent=[90, -10; 110, 10]);
    Modelica.Blocks.Interfaces.RealOutput T_rel(redeclare type SignalType = 
          SI.TemperatureDifference) 
                          annotation (extent=[-10, -80; 10, -100], rotation=90);
  equation 
    T_rel = port_a.T - port_b.T;
    0 = port_a.Q_flow;
    0 = port_b.Q_flow;
  end RelTemperatureSensor;
  
  model HeatFlowSensor "Heat flow rate sensor" 
    extends Modelica.Icons.RotationalSensor;
    Modelica.Blocks.Interfaces.RealOutput Q_flow(redeclare type SignalType = 
          SI.HeatFlowRate) "Heat flow from port_a to port_b" annotation (extent=
         [-10, -110; 10, -90], rotation=270);
    annotation (
      Diagram(
        Line(points=[-70, 0; -95, 0], style(color=42)),
        Line(points=[0, -70; 0, -90]),
        Line(points=[94,0; 69,0],     style(color=42))),
      Icon(
        Text(
          extent=[33, -58; 88, -116],
          string="Q_flow",
          style(color=0)),
        Line(points=[-70, 0; -90, 0], style(color=42)),
        Line(points=[69, 0; 90, 0], style(color=42)),
        Line(points=[0, -70; 0, -90]),
        Text(extent=[-132, 144; 108, 84], string="%name")),
      Documentation(info="<HTML>
<p>
This model is capable of monitoring the heat flow rate flowing through
this component. The sensed value of heat flow rate is the amount that
passes through this sensor while keeping the temperature drop across the
sensor zero.  This is an ideal model so it does not absorb any energy
and it has no direct effect on the thermal response of a system it is included in.
The output signal is positive, if the heat flows from port_a
to port_b.
</p>
</HTML>
"));
    Interfaces.HeatPort_a port_a annotation (extent=[-110, -10; -90, 10]);
    Interfaces.HeatPort_b port_b annotation (extent=[90, -10; 110, 10]);
  equation 
    port_a.T = port_b.T;
    port_a.Q_flow + port_b.Q_flow = 0;
    Q_flow = port_a.Q_flow;
  end HeatFlowSensor;
  
  package Celsius "Components with Celsius input and/or output" 
    
    extends Modelica.Icons.Library2;
    
    model ToKelvin "Conversion block from ��elsius to Kelvin" 
      annotation (
        Diagram(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-40, -50; -99, -99],
            string="��",
            style(color=0, thickness=4)),
          Text(
            extent=[100, -47; 44, -100],
            string="K",
            style(color=0)),
          Line(points=[-100, 0; -40, 0]),
          Line(points=[41, 0; 100, 0])),
        Icon(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[112, -40; 32, -120],
            string="K",
            style(color=0)),
          Text(
            extent=[-31, -39; -111, -119],
            string="��",
            style(color=0, thickness=4)),
          Line(points=[-41, 0; -100, 0]),
          Line(points=[100, 0; 40, 0]),
          Text(extent=[-137, 99; 132, 49], string="%name")),
        Documentation(info="<HTML>
<p>
This component converts an input signal from Celsius to Kelvin
and provide is as output signal.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealInput Celsius(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degC) 
         annotation (extent=[
            -140, -20; -100, 20]);
      Modelica.Blocks.Interfaces.RealOutput Kelvin(
         redeclare type SignalType = Modelica.SIunits.Temperature) 
        annotation (extent=[
            100, -10; 120, 10]);
    equation 
      Kelvin = from_degC(Celsius);
    end ToKelvin;
    
    model FromKelvin "Conversion from Kelvin to ��elsius" 
      annotation (
        Icon(
          Text(extent=[-137, 99; 132, 49], string="%name"),
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-34, -42; -114, -122],
            string="K",
            style(color=0, thickness=4)),
          Text(
            extent=[110, -39; 30, -119],
            string="��",
            style(color=0)),
          Line(points=[-40, 0; -100, 0]),
          Line(points=[40, 0; 100, 0])),
        Diagram(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-42, -41; -101, -98],
            string="K",
            style(color=0, thickness=4)),
          Text(
            extent=[100, -40; 30, -100],
            string="��",
            style(color=0)),
          Line(points=[-100, 0; -40, 0]),
          Line(points=[40, 0; 100, 0])),
        Documentation(info="<HTML>
<p>
This component converts an input signal from Kelvin to Celsius
and provides is as output signal.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealInput Kelvin(
         redeclare type SignalType = Modelica.SIunits.Temperature) 
        annotation (extent=[-
            140, -20; -100, 20]);
      Modelica.Blocks.Interfaces.RealOutput Celsius(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degC) 
        annotation (extent=
            [100, -10; 120, 10]);
    equation 
      Celsius = to_degC(Kelvin);
    end FromKelvin;
    
    model FixedTemperature 
      "Fixed temperature boundary condition in degree Celsius" 
      parameter NonSI.Temperature_degC T "Fixed Temperature at the port";
      annotation (
        Icon(
          Text(extent=[-118, 165; 122, 105], string="%name"),
          Rectangle(extent=[-100, 100; 100, -100], style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Text(
            extent=[0, 0; -100, -100],
            string="��",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1)),
          Text(
            extent=[-145, -102; 135, -151],
            string="T=%T",
            style(color=0)),
          Line(points=[-42,0; 66,0],   style(color=42, thickness=2))),
        Documentation(info="<HTML>
<p>
This model defines a fixed temperature T at its port in [degC],
i.e., it defines a fixed temperature as a boundary condition.
</p>
</HTML>
"),     Diagram(
          Rectangle(extent=[-100,100; 100,-100],   style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-42, 0; 66, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="��",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))));
      Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
    equation 
      port.T = from_degC(T);
    end FixedTemperature;
    
    model PrescribedTemperature 
      "Variable temperature boundary condition in ��elsius" 
      
      annotation (
        Icon(
          Rectangle(extent=[-100,100; 100,-100],   style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="��",
            style(color=0)),
          Text(extent=[-122, 163; 118, 103], string="%name"),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))),
        Documentation(info="<HTML>
<p>
This model represents a variable temperature boundary condition
The temperature value in [degC] is given by the input signal
to the model. The effect is that an instance of this model acts as
an infinite reservoir able to absorb or generate as much energy
as required to keep the temperature at the specified value.
</p>
</HTML>
"),     Diagram(
          Rectangle(extent=[-100,100; 100,-100],   style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="��",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))));
      Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
      Modelica.Blocks.Interfaces.RealInput T(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degC) 
                                                                   annotation (extent=[-140,
            -20; -100, 20]);
    equation 
      port.T = from_degC(T);
    end PrescribedTemperature;
    
    annotation (Documentation(info="<HTML>
<p>
The components of this package are provided for the convenience of
people working mostly with Celsius units, since all models
in package HeatTransfer are based on Kelvin units.
</p>
<p>
Note, that in package SIunits.Conversions, functions are provided
to convert between the units Kelvin, degree Celsius, degree Fahrenheit,
and degree Rankine. These functions allow, e.g., a direct conversion
of units at all places where Kelvin is required as parameter.
Example:
</p>
<pre>
    <b>import</b> SIunits.Conversions.*;
    Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degC(20));
</pre>
</HTML>
"), Icon(
        Text(
          extent=[38,10; -62,-90],
          string="��",
          style(color=0))));
    model TemperatureSensor "Absolute temperature sensor in ��elsius" 
      
      annotation (
        Diagram(
          Ellipse(extent=[-20, -98; 20, -60], style(
              color=0,
              thickness=2,
              fillColor=42)),
          Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
          Line(points=[12, 0; 90, 0]),
          Line(points=[-94, 0; -12, 0], style(color=42)),
          Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10,
                86; 12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
          Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
          Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
          Line(points=[-40, -20; -12, -20], style(color=0)),
          Line(points=[-40, 20; -12, 20], style(color=0)),
          Line(points=[-40, 60; -12, 60], style(color=0)),
          Text(
            extent=[102, -22; 60, -74],
            string="��",
            style(color=0))),
        Icon(
          Ellipse(extent=[-20, -98; 20, -60], style(
              color=0,
              thickness=2,
              fillColor=42)),
          Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
          Line(points=[12, 0; 90, 0]),
          Line(points=[-90, 0; -12, 0], style(color=42)),
          Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10,
                86; 12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
          Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
          Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
          Line(points=[-40, -20; -12, -20], style(color=0)),
          Line(points=[-40, 20; -12, 20], style(color=0)),
          Line(points=[-40, 60; -12, 60], style(color=0)),
          Text(
            extent=[126, -20; 26, -120],
            string="��",
            style(color=0)),
          Text(extent=[-132, 144; 108, 84], string="%name")),
        Documentation(info="<HTML>
<p>
This is an ideal absolute temperature sensor which returns
the temperature of the connected port in Celsius as an output
signal.  The sensor itself has no thermal interaction with
whatever it is connected to.  Furthermore, no
thermocouple-like lags are associated with this
sensor model.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealOutput T(redeclare type SignalType = 
            NonSI.Temperature_degC) annotation (extent=[90, -10; 110, 10]);
      Interfaces.HeatPort_a port annotation (extent=[-110, -10; -90, 10]);
    equation 
      T = to_degC(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;
  end Celsius;
  
  package Fahrenheit "Components with Fahrenheit input and/or output" 
    
    extends Modelica.Icons.Library2;
    
    model ToKelvin "Conversion block from �Hahrenheit to Kelvin" 
      annotation (
        Diagram(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-40, -50; -99, -99],
            string="�H",
            style(color=0, thickness=4)),
          Text(
            extent=[100, -47; 44, -100],
            string="K",
            style(color=0)),
          Line(points=[-100, 0; -40, 0]),
          Line(points=[41, 0; 100, 0])),
        Icon(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[112, -40; 32, -120],
            string="K",
            style(color=0)),
          Text(
            extent=[-31, -39; -111, -119],
            string="�H",
            style(color=0, thickness=4)),
          Line(points=[-41, 0; -100, 0]),
          Line(points=[100, 0; 40, 0]),
          Text(extent=[-137, 99; 132, 49], string="%name")),
        Documentation(info="<HTML>
<p>
This component converts a input signal from degree Fahrenheit to Kelvin
and provides is as output signal.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealInput Fahrenheit(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degF) annotation (
          extent=[-140, -20; -100, 20]);
      Modelica.Blocks.Interfaces.RealOutput Kelvin(
         redeclare type SignalType = Modelica.SIunits.Temperature) 
          annotation (extent=[100, -10; 120, 10]);
    equation 
      Kelvin = from_degF(Fahrenheit);
    end ToKelvin;
    
    model FromKelvin "Conversion from Kelvin to �Hahrenheit" 
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      annotation (
        Icon(
          Text(extent=[-137, 99; 132, 49], string="%name"),
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-34, -42; -114, -122],
            string="K",
            style(color=0, thickness=4)),
          Text(
            extent=[110, -39; 30, -119],
            string="�H",
            style(color=0)),
          Line(points=[-40, 0; -100, 0]),
          Line(points=[40, 0; 100, 0])),
        Diagram(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-42, -41; -101, -98],
            string="K",
            style(color=0, thickness=4)),
          Text(
            extent=[100, -40; 30, -100],
            string="�H",
            style(color=0)),
          Line(points=[-100, 0; -40, 0]),
          Line(points=[40, 0; 100, 0])),
        Documentation(info="<HTML>
<p>
This component converts all input signals from Kelvin to Fahrenheit
and provides them as output signals.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealInput Kelvin(
         redeclare type SignalType = Modelica.SIunits.Temperature) 
        annotation (extent=[-
            140, -20; -100, 20]);
      Modelica.Blocks.Interfaces.RealOutput Fahrenheit(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degF) 
     annotation (
          extent=[100, -10; 120, 10]);
    equation 
      Fahrenheit = to_degF(Kelvin);
    end FromKelvin;
    
    model FixedTemperature 
      "Fixed temperature boundary condition in �Hahrenheit" 
      parameter NonSI.Temperature_degF T "Fixed Temperature at the port";
      annotation (
        Icon(
          Text(extent=[-118, 165; 122, 105], string="%name"),
          Rectangle(extent=[-100, 100; 100, -100], style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Text(
            extent=[0, 0; -100, -100],
            string="�H",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1)),
          Text(
            extent=[-145, -102; 135, -151],
            string="T=%T",
            style(color=0)),
          Line(points=[-42,0; 66,0],   style(color=42, thickness=2))),
        Documentation(info="<HTML>
<p>
This model defines a fixed temperature T at its port in [degF],
i.e., it defines a fixed temperature as a boundary condition.
</p>
</HTML>
"),     Diagram(
          Rectangle(extent=[-100,100; 100,-100],   style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-42, 0; 66, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="�H",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))));
      Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
    equation 
      port.T = from_degF(T);
    end FixedTemperature;
    
    model PrescribedTemperature 
      "Variable temperature boundary condition in �Hahrenheit" 
      
      annotation (
        Icon(
          Rectangle(extent=[-100,100; 100,-100],   style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="�H",
            style(color=0)),
          Text(extent=[-122, 163; 118, 103], string="%name"),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))),
        Documentation(info="<HTML>
<p>
This model represents a variable temperature boundary condition
The temperature value in [degF] is given by the input signal
to the model. The effect is that an instance of this model acts as
an infinite reservoir able to absorb or generate as much energy
as required to keep the temperature at the specified value.
</p>
</HTML>
"),     Diagram(
          Rectangle(extent=[-100, 100; 100, -100], style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="�H",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))));
      Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
      Modelica.Blocks.Interfaces.RealInput T(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degF) 
        annotation (extent=[-140,
            -20; -100, 20]);
    equation 
      port.T = from_degF(T);
    end PrescribedTemperature;
    
    annotation (Documentation(info="<HTML>
<p>
The components of this package are provided for the convenience of
people working mostly with Fahrenheit units, since all models
in package HeatTransfer are based on Kelvin units.
</p>
<p>
Note, that in package SIunits.Conversions, functions are provided
to convert between the units Kelvin, degree Celsius, degree Fahrenheit
and degree Rankine. These functions allow, e.g., a direct conversion
of units at all places where Kelvin is required as parameter.
Example:
</p>
<pre>
    <b>import</b> SIunits.Conversions.*;
    Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degF(70));
</pre>
</HTML>
"), Icon(
        Text(
          extent=[40,10; -60,-90],
          string="�H",
          style(color=0))));
    model TemperatureSensor "Absolute temperature sensor in �Hahrenheit" 
      
      annotation (
        Diagram(
          Ellipse(extent=[-20, -98; 20, -60], style(
              color=0,
              thickness=2,
              fillColor=42)),
          Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
          Line(points=[12, 0; 90, 0]),
          Line(points=[-94, 0; -12, 0], style(color=42)),
          Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10,
                86; 12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
          Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
          Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
          Line(points=[-40, -20; -12, -20], style(color=0)),
          Line(points=[-40, 20; -12, 20], style(color=0)),
          Line(points=[-40, 60; -12, 60], style(color=0)),
          Text(
            extent=[102, -22; 60, -74],
            string="�H",
            style(color=0))),
        Icon(
          Ellipse(extent=[-20, -98; 20, -60], style(
              color=0,
              thickness=2,
              fillColor=42)),
          Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
          Line(points=[12, 0; 90, 0]),
          Line(points=[-90, 0; -12, 0], style(color=42)),
          Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10,
                86; 12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
          Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
          Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
          Line(points=[-40, -20; -12, -20], style(color=0)),
          Line(points=[-40, 20; -12, 20], style(color=0)),
          Line(points=[-40, 60; -12, 60], style(color=0)),
          Text(
            extent=[126, -20; 26, -120],
            string="�H",
            style(color=0)),
          Text(extent=[-132, 144; 108, 84], string="%name")),
        Documentation(info="<HTML>
<p>
This is an ideal absolute temperature sensor which returns
the temperature of the connected port in Fahrenheit as an output
signal.  The sensor itself has no thermal interaction with
whatever it is connected to.  Furthermore, no
thermocouple-like lags are associated with this
sensor model.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealOutput T(redeclare type SignalType = 
            NonSI.Temperature_degF) annotation (extent=[90, -10; 110, 10]);
      Interfaces.HeatPort_a port annotation (extent=[-110, -10; -90, 10]);
    equation 
      T = to_degF(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;
  end Fahrenheit;
  
  package Rankine "Components with Rankine input and/or output" 
    
    extends Modelica.Icons.Library2;
    
    model ToKelvin "Conversion block from ��ankine to Kelvin" 
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      annotation (
        Diagram(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-40, -50; -99, -99],
            string="��k",
            style(color=0, thickness=4)),
          Text(
            extent=[100, -47; 44, -100],
            string="K",
            style(color=0)),
          Line(points=[-100, 0; -40, 0]),
          Line(points=[41, 0; 100, 0])),
        Icon(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[112, -40; 32, -120],
            string="K",
            style(color=0)),
          Text(
            extent=[-31, -39; -111, -119],
            string="��k",
            style(color=0, thickness=4)),
          Line(points=[-41, 0; -100, 0]),
          Line(points=[100, 0; 40, 0]),
          Text(extent=[-137, 99; 132, 49], string="%name")),
        Documentation(info="<HTML>
<p>
This component converts all input signals from degree Rankine to Kelvin
and provides them as output signals.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealInput Rankine(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk) 
       annotation (extent=[-
            140, -20; -100, 20]);
      Modelica.Blocks.Interfaces.RealOutput Kelvin(
         redeclare type SignalType = Modelica.SIunits.Temperature) 
        annotation (extent=[
            100, -10; 120, 10]);
    equation 
      Kelvin = from_degRk(Rankine);
    end ToKelvin;
    
    model FromKelvin "Conversion from Kelvin to ��ankine" 
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      annotation (
        Icon(
          Text(extent=[-137, 99; 132, 49], string="%name"),
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-34, -42; -114, -122],
            string="K",
            style(color=0, thickness=4)),
          Text(
            extent=[110, -39; 30, -119],
            string="��k",
            style(color=0)),
          Line(points=[-40, 0; -100, 0]),
          Line(points=[40, 0; 100, 0])),
        Diagram(
          Ellipse(extent=[-40, 40; 40, -40], style(
              color=0,
              thickness=2,
              fillColor=7)),
          Text(
            extent=[-42, -41; -101, -98],
            string="K",
            style(color=0, thickness=4)),
          Text(
            extent=[100, -40; 30, -100],
            string="��k",
            style(color=0)),
          Line(points=[-100, 0; -40, 0]),
          Line(points=[40, 0; 100, 0])),
        Documentation(info="<HTML>
<p>
This component converts all input signals from Kelvin to Rankine
and provides them as output signals.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealInput Kelvin(
         redeclare type SignalType = Modelica.SIunits.Temperature) 
        annotation (extent=[-
            140, -20; -100, 20]);
      Modelica.Blocks.Interfaces.RealOutput Rankine(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk) 
         annotation (extent=[
            100, -10; 120, 10]);
    equation 
      Rankine = to_degRk(Kelvin);
    end FromKelvin;
    
    model FixedTemperature "Fixed temperature boundary condition in ��ankine" 
      
      parameter NonSI.Temperature_degRk T "Fixed Temperature at the port";
      annotation (
        Icon(
          Text(extent=[-118, 165; 122, 105], string="%name"),
          Rectangle(extent=[-100, 100; 100, -100], style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Text(
            extent=[0, 0; -100, -100],
            string="��k",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1)),
          Text(
            extent=[-145, -102; 135, -151],
            string="T=%T",
            style(color=0)),
          Line(points=[-42,0; 66,0],   style(color=42, thickness=2))),
        Documentation(info="<HTML>
<p>
This model defines a fixed temperature T at its port in degree Rankine,
[degRk], i.e., it defines a fixed temperature as a boundary condition.
</p>
</HTML>
"),     Diagram(
          Rectangle(extent=[-100,100; 100,-100],   style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-42, 0; 66, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="��k",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))));
      Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
    equation 
      port.T = from_degRk(T);
    end FixedTemperature;
    
    model PrescribedTemperature 
      "Variable temperature boundary condition in ��ankine" 
      
      annotation (
        Icon(
          Rectangle(extent=[-100, 100; 100, -100], style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="��k",
            style(color=0)),
          Text(extent=[-122, 163; 118, 103], string="%name"),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))),
        Documentation(info="<HTML>
<p>
This model represents a variable temperature boundary condition
The temperature value in degree Rankine, [degRk] is given by the input signal
to the model. The effect is that an instance of this model acts as
an infinite reservoir able to absorb or generate as much energy
as required to keep the temperature at the specified value.
</p>
</HTML>
"),     Diagram(
          Rectangle(extent=[-100, 100; 100, -100], style(
              color=0,
              pattern=0,
              fillColor=76,
              fillPattern=8)),
          Line(points=[-102, 0; 64, 0], style(color=42, thickness=2)),
          Text(
            extent=[0, 0; -100, -100],
            string="��k",
            style(color=0)),
          Polygon(points=[52,-20; 52,20; 90,0; 52,-20],      style(
              color=42,
              fillColor=42,
              fillPattern=1))));
      Interfaces.HeatPort_b port annotation (extent=[90,-10; 110,10]);
      Modelica.Blocks.Interfaces.RealInput T(
         redeclare type SignalType = 
            Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk) 
         annotation (extent=[-140,
            -20; -100, 20]);
    equation 
      port.T = from_degRk(T);
    end PrescribedTemperature;
    annotation (Documentation(info="<HTML>
<p>
The components of this package are provided for the convenience of
people working mostly with Rankine units, since all models
in package HeatTransfer are based on Kelvin units.
</p>
<p>
Note, that in package SIunits.Conversions, functions are provided
to convert between the units Kelvin, degree Celsius, degree Fahrenheit
and degree Rankine. These functions allow, e.g., a direct conversion
of units at all places where Kelvin is required as parameter.
Example:
</p>
<pre>
    <b>import</b> SIunits.Conversions.*;
    Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degRk(500));
</pre>
</HTML>
"), Icon(
        Text(
          extent=[40,10; -60,-90],
          string="��k",
          style(color=0))));
    model TemperatureSensor "Absolute temperature sensor in ��ankine" 
      
      annotation (
        Diagram(
          Ellipse(extent=[-20, -98; 20, -60], style(
              color=0,
              thickness=2,
              fillColor=42)),
          Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
          Line(points=[12, 0; 90, 0]),
          Line(points=[-94, 0; -12, 0], style(color=42)),
          Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10,
                86; 12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
          Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
          Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
          Line(points=[-40, -20; -12, -20], style(color=0)),
          Line(points=[-40, 20; -12, 20], style(color=0)),
          Line(points=[-40, 60; -12, 60], style(color=0)),
          Text(
            extent=[102, -22; 60, -74],
            string="��k",
            style(color=0))),
        Icon(
          Ellipse(extent=[-20, -98; 20, -60], style(
              color=0,
              thickness=2,
              fillColor=42)),
          Rectangle(extent=[-12, 40; 12, -68], style(color=42, fillColor=42)),
          Line(points=[12, 0; 90, 0]),
          Line(points=[-90, 0; -12, 0], style(color=42)),
          Polygon(points=[-12, 40; -12, 80; -10, 86; -6, 88; 0, 90; 6, 88; 10,
                86; 12, 80; 12, 40; -12, 40], style(color=0, thickness=2)),
          Line(points=[-12, 40; -12, -64], style(color=0, thickness=2)),
          Line(points=[12, 40; 12, -64], style(color=0, thickness=2)),
          Line(points=[-40, -20; -12, -20], style(color=0)),
          Line(points=[-40, 20; -12, 20], style(color=0)),
          Line(points=[-40, 60; -12, 60], style(color=0)),
          Text(
            extent=[126, -20; 26, -120],
            string="��k",
            style(color=0)),
          Text(extent=[-132, 144; 108, 84], string="%name")),
        Documentation(info="<HTML>
<p>
This is an ideal absolute temperature sensor which returns
the temperature of the connected port in Rankine as an output
signal.  The sensor itself has no thermal interaction with
whatever it is connected to.  Furthermore, no
thermocouple-like lags are associated with this
sensor model.
</p>
</HTML>
"));
      Modelica.Blocks.Interfaces.RealOutput T(redeclare type SignalType = 
            NonSI.Temperature_degRk) annotation (extent=[90, -10; 110, 10]);
      Interfaces.HeatPort_a port annotation (extent=[-110, -10; -90, 10]);
    equation 
      T = to_degRk(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;
  end Rankine;
end HeatTransfer;