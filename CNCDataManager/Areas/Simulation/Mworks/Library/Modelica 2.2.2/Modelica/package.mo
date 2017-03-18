within ;
package Modelica "Modelica Standard Library"
extends Icons.Library;


annotation(preferedView="info",
  Window(
    x=0.02,
    y=0.01,
    width=0.2,
    height=0.57,
    library=1,
    autolayout=1),
  version="2.2.2",
  versionBuild="626",
  versionDate="2007-08-31",
  conversion(
    from(version="1.6",
         ModelicaAdditions(version="1.5"),
         MultiBody(version="1.0.1"),
         MultiBody(version="1.0"),
         Matrices(version="0.8"),
         script="Scripts/ConvertModelica_from_1.6_to_2.1.mos"),
    from(version="2.1 Beta1", script="Scripts/ConvertModelica_from_2.1Beta1_to_2.1.mos"),
    noneFromVersion="2.1",
    noneFromVersion="2.2",
    noneFromVersion="2.2.1"),
  Settings(NewStateSelection=true),
  Documentation(info="<HTML>
<p>
Package <b>Modelica</b> is a <b>standardized</b> and <b>free</b> package
that is developed together with the Modelica language from the
Modelica Association, see
<a href=\"http://www.Modelica.org\">http://www.Modelica.org</a>.
It is also called <b>Modelica Standard Library</b>.
It provides model components in many domains that are based on 
standardized interface definitions. Some typical examples are shown
in the next figure:
</p>
 
<p>
<img src=\"./Images/UsersGuide/ModelicaLibraries.png\">
</p>
 
<p>
For an introduction, have especially a look at:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.UsersGuide.Overview\">Overview</a>
     provides an overview of the Modelica Standard Library
     inside the <a href=\"Modelica://Modelica.UsersGuide\">User's Guide</a>.</li>
<li><a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes\">Release Notes</a>
    summarizes the changes of new versions of this package.</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.Contact\">Contact</a>
     lists the contributors of the Modelica Standard Library.</li>
<li> <a href=\"../help/Documentation/ModelicaStandardLibrary.pdf\">ModelicaStandardLibrary.pdf</a>
     is the complete documentation of the library in pdf format.
<li> The <b>Examples</b> packages in the various libraries, demonstrate
     how to use the components of the corresponding sublibrary.</li>
</ul>

<p>
This version of the Modelica Standard Library consists of
</p>
<ul>
<li> <b>739</b> models and blocks, and</li>
<li> <b>539</b> functions
</ul>
<p>
that are directly usable (= number of public, non-partial classes).
</p>

<p>
Copyright &copy; 1998-2007, Modelica Association.
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> 
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p>
</HTML>
"));


package UsersGuide "User's Guide of Modelica library" 
  
  annotation (DocumentationClass=true, Documentation(info="<html>
<p>
Package <b>Modelica</b> is a <b>standardized</b> and <b>pre-defined</b> package
that is developed together with the Modelica language from the
Modelica Association, see
<a href=\"http://www.Modelica.org\">http://www.Modelica.org</a>.
It is also called <b>Modelica Standard Library</b>.
It provides constants, types, connectors, partial models and model
components in various disciplines.
</p>
<p>
This is a short <b>User's Guide</b> for 
the overall library. Some of the main sublibraries have their own
User's Guides that can be accessed by the following links:
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.Digital.UsersGuide\">Digital</a>
    </td>
      <td valign=\"top\">Library for digital electrical components based on the VHDL standard 
         (2-,3-,4-,9-valued logic)</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Mechanics.MultiBody.UsersGuide\">MultiBody</a>
             </td>
      <td valign=\"top\">Library to model 3-dimensional mechanical systems</td>
  </tr>

  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Mechanics.Rotational.UsersGuide\">Rotational</a>
             </td>
      <td valign=\"top\">Library to model 1-dimensional mechanical systems</td>
  </tr>

  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Media.UsersGuide\">Media</a>
             </td>
      <td valign=\"top\">Property models of media</td>
  </tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.SIunits.UsersGuide\">SIunits</a> </td>
      <td valign=\"top\">Type definitions based on SI units according to ISO 31-1992</td>
  </tr>

  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.StateGraph.UsersGuide\">StateGraph</a>
             </td>
      <td valign=\"top\">Library to model discrete event and reactive systems by hierarchical state machines</td>
  </tr>


  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.UsersGuide\">Utilities</a>
             </td>
      <td valign=\"top\">Utility functions especially for scripting (Files, Streams, Strings, System)</td>
  </tr>
</table>

</html>"));
  
  class Overview "Overview of Modelica Library" 
    
    annotation (Documentation(info="<html>
<p>
The Modelica Standard Library consists of the following
main sub-libraries:
</p>

<table border=1 cellspacing=0 cellpadding=2>
<tr><th>Library Components</th> <th>Description</th></tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Electrical.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Electrical.Analog\">Analog</a><br>
    Analog electric and electronic components, such as <br> 
    resistor, capacitor, transformers, diodes, transistors,<br>
    transmission lines, switches, sources, sensors.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Digital.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Electrical.Digital\">Digital</a><br>
    Digital electrical components based on the VHDL standard, <br>
    like basic logic blocks with 9-value logic, delays, gates, <br>
    sources, converters between 2-, 3-, 4-, and 9-valued logic.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Machines.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Electrical.Machines\">Machines</a><br>
    Electrical asynchronous-, synchronous-, and DC-machines<br>
    (motors and generators) as well as 3-phase transformers.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Translational.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Mechanics.Translational\">Translational</a><br>
    1-dim. mechanical, translational systems, e.g.,  <br>
    sliding mass, mass with stops, spring, damper.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Rotational.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Mechanics.Rotational\">Rotational</a><br>
    1-dim. mechanical, rotational systems, e.g., inertias, gears, <br>
    planetary gears, convenient definition of speed/torque dependent friction<br>
    (clutches, brakes, bearings, ..)
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-MultiBody1.png\"><br>
    <img src=\"./Images/UsersGuide/Lib-MultiBody2.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Mechanics.MultiBody\">MultiBody</a><br>
    3-dim. mechanical systems consisting of joints, bodies, force and <br>
    sensor elements. Joints can be driven by drive trains defined by<br>
    1-dim. mechanical system library (Rotational).<br>
    Every component has a default animation.<br>
    Components can be arbitrarily connected together.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Media.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Media\">Media</a><br>
    Large media library providing models and functions<br>
    to compute media properties, such as h = h(p,T), d = d(p,T),<br>
    for the following media:
    <ul>
    <li> 1240 gases and mixtures between these gases.</li>
    <li> incompressible, table based liquids (h = h(T), etc.).</li>
    <li> compressible liquids</li>
    <li> dry and moist air</li>
    <li> high precision model for water (IF97).</li>
    </ul>
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Thermal.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Thermal.FluidHeatFlow\">FluidHeatFlow</a>, 
    <a href=\"Modelica://Modelica.Thermal.HeatTransfer\">HeatTransfer</a><br>
    Simple thermo-fluid pipe flow, especially to model cooling of machines <br>
    with air or water (pipes, pumps, valves, ambient, sensors, sources) and<br>
    lumped heat transfer with heat capacitors, thermal conductors, convection,<br>
    body radiation, sources and sensors.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-Blocks1.png\"><br>
    <img src=\"./Images/UsersGuide/Lib-Blocks2.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Blocks\">Blocks</a><br>
    Input/output blocks to model block diagrams and logical networks, e.g.,<br>
    integerator, PI, PID, transfer function, linear state space system,<br>
    sampler, unit delay, discrete transfer function, and/or blocks,<br>
    timer, hysteresis, nonlinear and routing blocks, sources, tables.
    </td>
</tr>

<tr><td valign=\"top\"> 
    <img src=\"./Images/UsersGuide/Lib-StateGraph.png\">
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.StateGraph\">StateGraph</a><br>
    Hierarchical state machines with the same modeling power as Statecharts. <br>
    Modelica is used as synchronous action language, i.e. deterministic <br>
    behavior is guaranteed (not the case for Statecharts)
    </td>
</tr>


<tr><td valign=\"top\"> 
    <pre>
    A = [1,2,3; 
         3,4,5;
         2,1,4];
    b = {10,22,12};
    x = Matrices.solve(A,b); 
    Matrices.eigenValues(A); 
    </pre>
    </td>
    <td valign=\"top\">
    <a href=\"Modelica://Modelica.Math\">Math</a>, 
    <a href=\"Modelica://Modelica.Utilities\">Utilities</a><br>
    Functions operating on vectors and matrices, such as for solving <br>
    linear systems, eigen and singular values etc.,  and <br>
    functions operating on strings, streams, files, e.g., <br>
    to copy and remove a file or sort a vector of strings.
    </td>
</tr>

</table>

</html>
"));
  end Overview;
  
  class Connectors "Connectors" 
    
    annotation (Documentation(info="<html>

<p>
The Modelica standard library defines the most important 
<b>elementary connectors</b> in various domains. If any possible, 
a user should utilize these connectors in order that components
from the Modelica Standard Library and from other libraries
can be combined without problems. The following elementary
connectors are defined (potential variables are connector variables
without the flow attribute, flow variables are connector variables
that have the flow attribute):
</p>
 
<table border=1 cellspacing=0 cellpadding=1>
  <tr><td valign=\"top\"><b>domain</b></td>
      <td valign=\"top\"><b>pot. variables</b></td>
      <td valign=\"top\"><b>flow variables</b></td>
      <td valign=\"top\"><b>connector definition</b></td>
      <td valign=\"top\"><b>icons</b></td></tr>
 
  <tr><td valign=\"top\"><b>electrical<br>analog</b></td>
      <td valign=\"top\">electrical potential</td>
      <td valign=\"top\">electrical current</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.Analog.Interfaces\">Modelica.Electrical.Analog.Interfaces</a>
           <br>Pin, PositivePin, NegativePin</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/ElectricalPins.png\"></td></tr>

  <tr><td valign=\"top\"><b>electrical<br>multi-phase</b></td>
      <td colspan=\"2\">vector of electrical pins</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.MultiPhase.Interfaces\">Modelica.Electrical.MultiPhase.Interfaces</a>
           <br>Plug, PositivePlug, NegativePlug</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/ElectricalPlugs.png\"></td></tr>
  
  <tr><td valign=\"top\"><b>electrical <br>sphace phasor</b></td>
      <td valign=\"top\">2 electrical potentials</td>
      <td valign=\"top\">2 electrical currents</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.Machines.Interfaces\">Modelica.Electrical.Machines.Interfaces</a>
           <br>SpacePhasor</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/SpacePhasor.png\"></td></tr>
  
  <tr><td valign=\"top\"><b>electrical <br>digital</b></td>
      <td valign=\"top\">Integer (1..9)</td>
      <td valign=\"top\">---</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.Digital.Interfaces\">Modelica.Electrical.Digital.Interfaces</a>
           <br>DigitalSignal, DigitalInput, DigitalOutput</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/Digital.png\"></td></tr>
  
  <tr><td valign=\"top\"><b>translational</b></td>
      <td valign=\"top\">distance</td>
      <td valign=\"top\">cut-force</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Mechanics.Translational.Interfaces\">Modelica.Mechanics.Translational.Interfaces</a>
           <br>Flange_a, Flange_b</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/TranslationalFlanges.png\"></td></tr>
 
  <tr><td valign=\"top\"><b>rotational</b></td>
      <td valign=\"top\">angle</td>
      <td valign=\"top\">cut-torque</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Mechanics.Rotational.Interfaces\">Modelica.Mechanics.Rotational.Interfaces</a>
           <br>Flange_a, Flange_b</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/RotationalFlanges.png\"></td></tr>

  <tr><td valign=\"top\"><b>3-dim.<br>mechanics</b></td>
      <td valign=\"top\">position vector<br>
          orientation object</td>
      <td valign=\"top\">cut-force vector<br>
          cut-torque vector</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Mechanics.MultiBody.Interfaces\">Modelica.Mechanics.MultiBody.Interfaces</a>
           <br>Frame, Frame_a, Frame_b, Frame_resolve</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/MultiBodyFrames.png\"></td></tr>

  <tr><td valign=\"top\"><b>simple<br>fluid flow</b></td>
      <td valign=\"top\">pressure<br>
          specific enthalpy</td>
      <td valign=\"top\">mass flow rate<br>
          enthalpy flow rate</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Thermal.FluidHeatFlow.Interfaces\">Modelica.Thermal.FluidHeatFlow.Interfaces</a>
           <br>FlowPort, FlowPort_a, FlowPort_b</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/FluidHeatFlowPorts.png\"></td></tr>

  <tr><td valign=\"top\"><b>heat<br>transfer</b></td>
      <td valign=\"top\">temperature</td>
      <td valign=\"top\">heat flow rate</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Thermal.HeatTransfer.Interfaces\">Modelica.Thermal.HeatTransfer.Interfaces</a>
           <br>HeatPort, HeatPort_a, HeatPort_b</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/ThermalHeatPorts.png\"></td></tr>
 
  <tr><td valign=\"top\"><b>block<br>diagram</b></td>
      <td valign=\"top\">Real variable<br>
          Integer variable<br>
          Boolean variable</td>
      <td valign=\"top\">---</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.Blocks.Interfaces\">Modelica.Blocks.Interfaces</a>
           <br>RealSignal, RealInput, RealOutput<br>
               IntegerSignal, IntegerInput, IntegerOutput<br>
               BooleanSignal, BooleanInput, BooleanOutput</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/Signals.png\"></tr>

  <tr><td valign=\"top\"><b>state<br>machine</b></td>
      <td valign=\"top\">Boolean variables<br>
          (occupied, set, <br>
           available, reset)</td>
      <td valign=\"top\">---</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica.StateGraph.Interfaces\">Modelica.StateGraph.Interfaces</a>
           <br>Step_in, Step_out, Transition_in, Transition_out</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/StateGraphPorts.png\"></td></tr>

  <tr><td colspan=\"5\">&nbsp;<br><b>Connectors from libraries that will be included in one of 
                                   the next releases of package Modelica</b></td></tr>

  <tr><td valign=\"top\"><b>thermo<br>fluid flow</b></td>
      <td valign=\"top\">pressure<br>
          specific enthalpy<br>
          mass fractions</td>
      <td valign=\"top\">mass flow rate<br>
          enthalpy flow rate<br>
          subst. mass flow rates</td>
      <td valign=\"top\"><a href=\"Modelica://Modelica_Fluid.Interfaces\">Modelica_Fluid.Interfaces</a>
           <br>FluidPort, FluidPort_a, FluidPort_b</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/FluidPorts.png\"></td></tr>

  <tr><td valign=\"top\"><b>magnetic</b></td>
      <td valign=\"top\">magnetic potential</td>
      <td valign=\"top\">magnetic flux</td>
      <td valign=\"top\"><a href=\"Modelica://Magnetic.Interfaces\">Magnetic.Interfaces</a>
           <br>MagneticPort, PositiveMagneticPort, <br>NegativeMagneticPort</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/MagneticPorts.png\"></td></tr>


  <tr><td colspan=\"5\">&nbsp;<br><b>Connectors from other libraries</b></td></tr>

  <tr><td valign=\"top\"><b>hydraulic</b></td>
      <td valign=\"top\">pressure</td>
      <td valign=\"top\">volume flow rate</td>
      <td valign=\"top\"><a href=\"Modelica://HyLibLight.Interfaces\">HyLibLight.Interfaces</a>
           <br>Port_A, Port_b</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/HydraulicPorts.png\"></td></tr>

  <tr><td valign=\"top\"><b>pneumatic</b></td>
      <td valign=\"top\">pressure</td>
      <td valign=\"top\">mass flow rate</td>
      <td valign=\"top\"><a href=\"Modelica://PneuLibLight.Interfaces\">PneuLibLight.Interfaces</a>
           <br>Port_1, Port_2</td>
      <td valign=\"top\"><img src=\"./Images/UsersGuide/PneumaticPorts.png\"></td></tr>
</table>

<p>
In all domains, usually 2 connectors are defined. The variable declarations
are <b>identical</b>, only the icons are different in order that it is easy
to distinguish connectors of the same domain that are attached at the same
component.
</p>

<p>
Modelica supports also hierarchical connectors, in a similar way as hierarchical models. 
As a result, it is, e.g., possible, to collect elementary connectors together. 
For example, an electrical plug consisting of two electrical pins can be defined as:
</p>

<pre>   <b>connector</b> Plug
      <b>import</b> Modelica.Electrical.Analog.Interfaces;
      Interfaces.PositivePin phase;
      Interfaces.NegativePin ground;
   <b>end</b> Plug;
</pre>

<p>
With one connect(..) equation, either two plugs can be connected 
(and therefore implicitly also the phase and ground pins) or a 
Pin connector can be directly connected to the phase or ground of 
a Plug connector, such as \"connect(resistor.p, plug.phase)\".
</p>


</html>
"));
  end Connectors;
  
  class Conventions "Conventions" 
    
    annotation (Documentation(info="<html>

<p>
Note, in the html documentation of any Modelica library, 
the headings \"h1, h2, h3\" should not be used,
because they are utilized from the automatically generated documentation/headings.
Additional headings in the html documentation should start with \"h4\".
</p>

<p>
In the Modelica package the following conventions are used:
</p>
<ol>
<li> Class and instance names are written in upper and lower case
     letters, e.g., \"ElectricCurrent\". An underscore is only used
     at the end of a name to characterize a lower or upper index,
     e.g., \"pin_a\".<br>&nbsp;</li>

<li> <b>Class names</b> start always with an upper case letter.<br>&nbsp;</li>

<li> <b>Instance names</b>, i.e., names of component instances and
     of variables (with the exception of constants), 
     start usually with a lower case letter with only
     a few exceptions if this is common sense 
     (such as \"T\" for a temperature variable).<br>&nbsp;</li>

<li> <b>Constant names</b>, i.e., names of variables declared with the
     \"constant\" prefix, follow the usual naming conventions 
     (= upper and lower case letters) and start usually with an 
     upper case letter, e.g. UniformGravity, SteadyState.<br>&nbsp;<li>

<li> The two connectors of a domain that have identical declarations
     and different icons are usually distinguished by \"_a\", \"_b\"
     or \"_p\", \"_n\", e.g., Flange_a/Flange_b, HeatPort_a, HeatPort_b.<br>&nbsp;</li>

<li> The <b>instance name</b> of a component is always displayed in its icon
     (= text string \"%name\") in <b>blue color</b>. A connector class has the instance
     name definition in the diagram layer and not in the icon layer.
     <b>Parameter</b> values, e.g., resistance, mass, gear ratio, are displayed
     in the icon in <b>black color</b> in a smaller font size as the instance name.
    <br>&nbsp;<li>

<li> A main package has usually the following subpackages:
     <ul>
     <li><b>UsersGuide</b> containing an overall description of the library
         and how to use it.</li>  
     <li><b>Examples</b> containing models demonstrating the
         usage of the library.</li>  
     <li><b>Interfaces</b> containing connectors and partial
         models.</li>  
     <li><b>Types</b> containing type, enumeration and choice
         definitions.</li>
     </ul>
     </li>
</ol>

<p>
&nbsp;<br>
<b>Enumerations</b> are defined in the Modelica language since release 2.0.
However, they are not yet supported in the most important Modelica
simulation environment Dymola. For this reason, this language element
is not used in the Modelica standard library. Instead, enumerations
are emulated with packages and constants. For example, the enumeration
</p>

<pre>   <b>type</b> Init = <b>enumeration</b> (NoInit, InitializeStates, SteadyState);

   <b>parameter</b> Init initType = Init.NoInit \"Type of initialization\";
</pre>

<p>
is emulated in the following way:
</p>

<pre>   <b>package</b>  Init \"Enumeration emulation\" 
      <b>extends</b>  Modelica.Icons.Enumeration;
  
      <b>constant</b>  Integer NoInit=1;
      <b>constant</b>  Integer InitializeStates=2;
      <b>constant</b>  Integer SteadyState=3;
  
      <b>type</b>  Temp  
         <b>extends</b>  Modelica.Icons.TypeInteger;
         <b>annotation</b>  (choices(
             choice=Init.NoInit           \"NoInit (no initialization)\",
             choice=Init.InitializeStates \"InitializeStates (initialize states)\",
             choice=Init.SteadyState      \"SteadyState (initialize in steady state)\"));
      <b>end</b>  Temp;
   <b>end</b>  Init;

   <b>parameter</b> Init.Temp initType = Init.NoInit;
</pre>
</html>
"));
  end Conventions;
  
  package ReleaseNotes "Release notes" 
    
    annotation (Documentation(info="<html>

<p>
This section summarizes the changes that have been performed
on the Modelica standard library.
</p>

<ul>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_2_2\">Version 2.2.2</a> (Aug. 31, 2007)</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_2_1\">Version 2.2.1</a> (March 24, 2006)</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_2\">Version 2.2</a> (April 6, 2005)</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_2_1\">Version 2.1</a> (Nov. 11, 2004)</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_1_6\">Version 1.6</a> (June 21, 2004)</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_1_5\">Version 1.5</a> (Dec. 16, 2002)</li>
<li> <a href=\"Modelica://Modelica.UsersGuide.ReleaseNotes.Version_1_4\">Version 1.4</a> (June 28, 2001
     and previous versions)</li>
</ul>

<p>
Maintenance of the Modelica Standard Library is performed with
three branches on the subversion server of the Modelica Association:
</p>

<h4>Released branch</h4>
<p>
Example: \"Modelica/tags/V2_2_1/Modelica\"
</p>

<p>
This branch contains the released Modelica versions (e.g. version 2.2.1),
where all available test cases and compatibility checks with other Modelica
libraries have been performed on the respective release. This version is
usually shipped with a Modelica modelling and simulation environment and
utilized by a Modelica user.
</p>

<h4>Development branch</h4>
<p>
Example: \"Modelica/trunk/Modelica\"
</p>

<p>
This branch contains the actual development version, i.e., all bug fixes
and new features based on the last Modelica release.
New features should have been tested before including them.
However, the exhaustive tests for a new version are (usually) not performed.
This version is usually only be used by the developers of the
Modelica Standard Library and is not utilized by Modelica users.
</p>


<h4>Maintenance branch</h4>
<p>
Example: \"Modelica/branches/maintenance/2.2.1/Modelica\"
</p>

<p>
This branch contains the released Modelica version (e.g. version 2.2.1)
where all bug fixes since this release date are included (up to a  new release,
when becoming available; i.e., after a new release, the previous maintenance
versions are no longer changed).
These bug fixes might be not yet tested with all test cases or with
other Modelica libraries. The goal is that a vendor may take this version at
any time for a new release of its software, in order to incorporate the latest
bug fixes, without changing the version number of the Modelica Standard Library.
</p>

<p>
Incorporation of bug fixes (subversion \"commit\") shall be performed in the following way:
</p>

<ul>
<li> One person is fixing the bug and another person is checking whether the 
     fix is fine.</li>
<li> It is up to the library developer, whether he opens a new branch for
     testing and then merges it with the \"head\" maintenance branch or not.</li>
<li> Every change to the maintenance branch has to be done at the development 
     branch (see above) as well.</li>
<li> Every change to the maintenance branch requires introducing a
     description of the bug fix under
     Modelica.UsersGuide.ReleaseNotes.&lt;release-number&gt;_bugFixes.</li>
<li> Every change to the maintenance branch requires changing the date 
     of the Modelica library in the version annotation.<br>
     When including the library in a distribution,
     the vendor has to add the subversion build number of the corresponding
     release in the version annotation. Example:<br>
     <pre>annotation(version=\"2.2.1\", versionBuild=\"436\", versionDate=\"2007-05-13\")</pre>
     The goal is to include the version build and version date information 
     automatically from the subversion server, but this is not yet the case.</li>
<li> If time does not permit, a vendor makes the bug fix in its local version
     and then has to include it in the maintenance version. It would be best to make these
     changes at a new branch in order to get a unique release number.</li>
</ul>

<p>
A valid \"commit\" to the maintenance branch may contain one or
more of the following changes.
</p>

<ul>
<li> Correcting an equation.</li>
<li> Correcting attributes quantity/unit/defaultUnit in a declaration.</li>
<li> Improving/fixing the documentation.</li>
<li> Introducing a new name in the public section of a class
     (model, package, ...) or in any section of a partial class is <b>not</b> allowed.
     Since otherwise, a user might use this new name and when storing its model
     and loading it with an older build-version, an error would occur.</li>
<li> Introducing a new name in the protected section of a non-partial
     class should only be done if absolutely necessary to fix a bug. 
     The problem is that this might be non-backward compatible,
     because a user might already extend from this class and already using the same name.</li> 
</ul>
</html>
"));
    
  class Version_2_2_2 "Version 2.2.2 (Aug. 31, 2007)" 
      
      annotation (Documentation(info="<html>
<p>
Version 2.2.2 is backward compatible to version 2.2.1 and 2.2 with 
the following exceptions:
</p>
<ul>
<li> Removal of package Modelica.Media.Interfaces.PartialTwoPhaseMediumWithCache
     (this was not yet utilized).</li>
<li> Removal of the media packages in
     Modelica.Media.IdealGases.SingleGases that are not type compatible
     to Modelica.Media.Interfaces.PartialMedium, because a FluidConstants
     record definition is missing, 
     for details, see 
      <a href=\"Modelica://Modelica.Media.IdealGases\">Modelica.Media.IdealGases</a>
     (this is seen as a bug fix).
</ul>

<p>
An overview of the differences between version 2.2.2 and the previous
version 2.2.1 is given below. The exact differences (but without
differences in the documentation) are available
<a href=\"../help/Documentation/Differences-Modelica-221-222.html\">here</a>.
This comparison file was generated automatically with Dymolas
ModelManagement.compare function.
</p>
 
<p>
In this version, <b>no</b> new libraries have been added. The <b>documentation</b>
of the whole library was improved. Especially, the documentation is now also
available as
<a href=\"../help/Documentation/ModelicaStandardLibrary.pdf\">one pdf file</a>.
</p>
 
 
<p><br>
The following <b style=\"color:blue\">new components</b> have been added 
to <b style=\"color:blue\">existing</b> libraries:
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
  <tr><td colspan=\"2\"><b>Blocks.Logical.</b></td></tr>
  <tr><td valign=\"top\"> TerminateSimulation</td>
      <td valign=\"top\"> Terminate a simulation by a given condition.</td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Blocks.Routing.</b></td></tr>
  <tr><td valign=\"top\"> RealPassThrough<br>
           IntegerPassThrough<br>
           BooleanPassThrough</td>
      <td valign=\"top\"> Pass a signal from input to output
           (useful in combination with a bus due to restrictions 
           of expandable connectors).</td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Blocks.Sources.</b></td></tr>
  <tr><td valign=\"top\"> KinematicPTP2 </td>
      <td valign=\"top\"> Directly gives q,qd,qdd as output (and not just qdd as KinematicPTP).
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.Examples.</b></td></tr>
  <tr><td valign=\"top\"> TransformerTestbench </td>
      <td valign=\"top\"> Transformer Testbench
      </td>
  <tr><td valign=\"top\"> Rectifier6pulse </td>
      <td valign=\"top\"> 6-pulse rectifier with 1 transformer
      </td>
  </tr>
  <tr><td valign=\"top\"> Rectifier12pulse </td>
      <td valign=\"top\"> 12-pulse rectifier with 2 transformers
      </td>
  </tr>
  <tr><td valign=\"top\"> AIMC_Steinmetz </td>
      <td valign=\"top\"> Asynchronous induction machine squirrel cage with Steinmetz connection 
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.BasicMachines.Components.</b></td></tr>
  <tr><td valign=\"top\"> BasicAIM </td>
      <td valign=\"top\"> Partial model for asynchronous induction machine
      </td>
  <tr><td valign=\"top\"> BasicSM </td>
      <td valign=\"top\"> Partial model for synchronous induction machine
      </td>
  <tr><td valign=\"top\"> PartialAirGap </td>
      <td valign=\"top\"> Partial airgap model
      </td>
  <tr><td valign=\"top\"> BasicDCMachine </td>
      <td valign=\"top\"> Partial model for DC machine
      </td>
  <tr><td valign=\"top\"> PartialAirGapDC </td>
      <td valign=\"top\"> Partial airgap model of a DC machine
      </td>
  <tr><td valign=\"top\"> BasicTransformer </td>
      <td valign=\"top\"> Partial model of threephase transformer
      </td>
  <tr><td valign=\"top\"> PartialCore </td>
      <td valign=\"top\"> Partial model of transformer core with 3 windings
      </td>
  <tr><td valign=\"top\"> IdealCore </td>
      <td valign=\"top\"> Ideal transformer with 3 windings
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.BasicMachines.</b></td></tr>
  <tr><td valign=\"top\"> Transformers </td>
      <td valign=\"top\"> Sub-Library for technical 3phase transformers
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> Adapter </td>
      <td valign=\"top\"> Adapter to model housing of electrical machine
      </td>
  </tr>

 <tr><td colspan=\"2\"><b>Math.</b></td></tr>
  <tr><td valign=\"top\"> Vectors </td>
      <td valign=\"top\"> New library of functions operating on vectors
      </td>
  </tr>
  <tr><td valign=\"top\"> atan3 </td>
      <td valign=\"top\"> Four quadrant inverse tangens (select solution that is closest to given angle y0)
      </td>
  </tr>
  <tr><td valign=\"top\"> asinh </td>
      <td valign=\"top\"> Inverse of sinh (area hyperbolic sine)
      </td>
  </tr>
  <tr><td valign=\"top\"> acosh </td>
      <td valign=\"top\"> Inverse of cosh (area hyperbolic cosine)
      </td>
  </tr>

 <tr><td colspan=\"2\"><b>Math.Vectors</b></td></tr>
  <tr><td valign=\"top\"> isEqual </td>
      <td valign=\"top\"> Determine if two Real vectors are numerically identical
      </td>
  </tr>
  <tr><td valign=\"top\"> norm </td>
      <td valign=\"top\"> Return the p-norm of a vector
      </td></tr>
  <tr><td valign=\"top\"> length </td>
      <td valign=\"top\"> Return length of a vector (better as norm(), if further symbolic processing is performed)
      </td></tr>
  <tr><td valign=\"top\"> normalize </td>
      <td valign=\"top\"> Return normalized vector such that length = 1 and prevent zero-division for zero vector
      </td></tr>
  <tr><td valign=\"top\"> reverse </td>
      <td valign=\"top\"> Reverse vector elements (e.g. v[1] becomes last element)
      </td></tr>
  <tr><td valign=\"top\"> sort </td>
      <td valign=\"top\"> Sort elements of vector in ascending or descending order
      </td></tr>

 <tr><td colspan=\"2\"><b>Math.Matrices</b></td></tr>
  <tr><td valign=\"top\"> solve2 </td>
      <td valign=\"top\"> Solve real system of linear equations A*X=B with a B matrix
           (Gaussian elemination with partial pivoting)
      </td>
  </tr>
  <tr><td valign=\"top\"> LU_solve2 </td>
      <td valign=\"top\"> Solve real system of linear equations P*L*U*X=B with a B matrix 
           and an LU decomposition (from LU(..))
      </td></tr>

 
  <tr><td colspan=\"2\"><b>Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\"> InitializeFlange </td>
      <td valign=\"top\"> Initialize a flange according to given signals
           (useful if initialization signals are provided by a signal bus).
      </td>
  </tr>

 
  <tr><td colspan=\"2\"><b>Media.Interfaces.PartialMedium.</b></td></tr>
  <tr><td valign=\"top\"> density_pTX </td>
      <td valign=\"top\"> Return density from p, T, and X or Xi
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Interfaces.PartialTwoPhaseMedium.</b></td></tr>
  <tr><td valign=\"top\"> BaseProperties </td>
      <td valign=\"top\"> Base properties (p, d, T, h, u, R, MM, x) of a two phase medium
      </td>
  </tr>
  <tr><td valign=\"top\"> molarMass </td>
      <td valign=\"top\"> Return the molar mass of the medium
      </td>
  </tr>
  <tr><td valign=\"top\"> saturationPressure_sat </td>
      <td valign=\"top\"> Return saturation pressure
      </td>
  </tr>
  <tr><td valign=\"top\"> saturationTemperature_sat </td>
      <td valign=\"top\"> Return saturation temperature
      </td>
  </tr>  
  <tr><td valign=\"top\"> saturationTemperature_derp_sat </td>
      <td valign=\"top\"> Return derivative of saturation temperature w.r.t. pressure
      </td>
  </tr>  <tr><td valign=\"top\"> setState_px </td>
      <td valign=\"top\"> Return thermodynamic state from pressure and vapour quality
      </td>
  </tr>  <tr><td valign=\"top\"> setState_Tx </td>
      <td valign=\"top\"> Return thermodynamic state from temperature and vapour quality
      </td>
  </tr>  <tr><td valign=\"top\"> vapourQuality </td>
      <td valign=\"top\"> Return vapour quality
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> PartialLinearFluid </td>
      <td valign=\"top\"> Generic pure liquid model with constant cp, 
           compressibility and thermal expansion coefficients
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Air.MoistAir.</b></td></tr>
  <tr><td valign=\"top\"> massFraction_pTphi </td>
      <td valign=\"top\"> Return the steam mass fraction from relative humidity and T
      </td>
  </tr>
  <tr><td valign=\"top\"> saturationTemperature </td>
      <td valign=\"top\"> Return saturation temperature from (partial) pressure 
           via numerical inversion of function saturationPressure
      </td>
  </tr>
  <tr><td valign=\"top\"> enthalpyOfWater </td>
      <td valign=\"top\"> Return specific enthalpy of water (solid/liquid) near 
           atmospheric pressure from temperature
      </td>
  </tr>
  <tr><td valign=\"top\"> enthalpyOfWater_der </td>
      <td valign=\"top\"> Return derivative of enthalpyOfWater()\" function
      </td>
  </tr>
  <tr><td valign=\"top\"> PsychrometricData </td>
      <td valign=\"top\"> Model to generate plot data for psychrometric chart
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.CompressibleLiquids.</b><br>
      New sub-library for simple compressible liquid models</td></tr>
  <tr><td valign=\"top\"> LinearColdWater </td>
      <td valign=\"top\"> Cold water model with linear compressibility
      </td>
  <tr><td valign=\"top\"> LinerWater_pT_Ambient </td>
      <td valign=\"top\"> Liquid, linear compressibility water model at 1.01325 bar 
           and 25 degree Celsius
      </td>
 
  <tr><td colspan=\"2\"><b>SIunits.</b></td></tr>
  <tr><td valign=\"top\"> TemperatureDifference </td>
      <td valign=\"top\"> Type for temperature difference
      </td>
</table> 
 
 
<p><br>
The following <b style=\"color:blue\">existing components</b>
have been <b style=\"color:blue\">improved</b>:
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
  <tr><td colspan=\"2\"><b>Blocks.Examples.</b></td></tr>
  <tr><td valign=\"top\"> BusUsage</td>
      <td valign=\"top\"> Example changed from the \"old\" to the \"new\" bus concept with
           expandable connectors.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Blocks.Discrete.</b></td></tr>
  <tr><td valign=\"top\"> ZeroOrderHold</td>
      <td valign=\"top\"> Sample output ySample moved from \"protected\" to \"public\"
           section with new attributes (start=0, fixed=true).
      </td> 
  </tr>
  <tr><td valign=\"top\"> TransferFunction</td>
      <td valign=\"top\"> Discrete state x with new attributes (each start=0, each fixed=0).
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.</b></td></tr>
  <tr><td valign=\"top\"> Analog<br>MultiPhase</td>
      <td valign=\"top\"> Improved some icons.
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> MISO</td>
      <td valign=\"top\"> Removed \"algorithm\" from this partial block.
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital.Delay.</b></td></tr>
  <tr><td valign=\"top\"> DelayParams</td>
      <td valign=\"top\"> Removed \"algorithm\" from this partial block.
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital.Delay.</b></td></tr>
  <tr><td valign=\"top\"> DelayParams</td>
      <td valign=\"top\"> Removed \"algorithm\" from this partial block.
      </td> 
  </tr>
  <tr><td valign=\"top\"> TransportDelay</td>
      <td valign=\"top\">  If delay time is zero, an infinitely small delay is 
            introduced via pre(x) (previously \"x\" was used). 
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital.Sources.</b></td></tr>
  <tr><td valign=\"top\"> Clock<br>Step</td>
      <td valign=\"top\"> Changed if-conditions from \"xxx < time\" to \"time >= xxx\"
           (according to the Modelica specification, in the second case 
           a time event should be triggered, i.e., this change leads 
           potentially to a faster simulation).
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital.Converters.</b></td></tr>
  <tr><td valign=\"top\"> BooleanToLogic<br>
           LogicToBoolean<br>
           RealToLogic<br>
           LogicToReal</td>
      <td valign=\"top\"> Changed from \"algorithm\" to \"equation\" section
           to allow better symbolic preprocessing
      </td> 
  </tr>
  
  <tr><td colspan=\"2\"><b>Electrical.</b></td></tr>
  <tr><td valign=\"top\"> Machines</td>
      <td valign=\"top\"> Slightly improved documentation, typos in 
           documentation corrected
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.Examples.</b></td></tr>
  <tr><td valign=\"top\"> AIMS_start</td>
      <td valign=\"top\"> Changed QuadraticLoadTorque1(TorqueDirection=true) to
           QuadraticLoadTorque1(TorqueDirection=false) since more realistic
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> PartialBasicMachine</td>
      <td valign=\"top\"> Introduced support flange to model the 
           reaction torque to the housing
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Machines.Sensors.</b></td></tr>
  <tr><td valign=\"top\"> Rotorangle</td>
      <td valign=\"top\"> Introduced support flange to model the 
           reaction torque to the housing
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Examples.Elementary.</b></td></tr>
  <tr><td valign=\"top\"> PointMassesWithGravity</td>
      <td valign=\"top\"> Added two point masses connected by a line force to demonstrate
           additionally how this works. Connections of point masses
           with 3D-elements are demonstrated in the new example
           PointMassesWithGravity (there is the difficulty that the orientation
           is not defined in a PointMass object and therefore some
           special handling is needed in case of a connection with
           3D-elements, where the orientation of the point mass is not
           determined by these elements.</td>
  </tr>
  
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Examples.Systems.</b></td></tr>
  <tr><td valign=\"top\"> RobotR3</td>
      <td valign=\"top\"> Changed from the \"old\" to the \"new\" bus concept with expandable connectors.
           Replaced the non-standard Modelica function \"constrain()\" by
           standard Modelica components. As a result, the non-standard function
           constrain() is no longer used in the Modelica Standard Library.</td>
  </tr>
  
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Frames.Orientation.</b></td></tr>
  <tr><td valign=\"top\"> equalityConstraint</td>
      <td valign=\"top\"> Use a better residual for the equalityConstraint function.
           As a result, the non-linear equation system of a kinematic
           loop is formulated in a better way (the range where the
           desired result is a unique solution of the non-linear
           system of equations becomes much larger).</td>
  </tr>
    

  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.</b></td></tr>
  <tr><td valign=\"top\"> Visualizers.</td>
      <td valign=\"top\"> Removed (misleading) annotation \"structurallyIncomplete\" 
           in the models of this sub-library
      </td>
  </tr>
  
  <tr><td colspan=\"2\"><b>Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\"> Examples</td>
      <td valign=\"top\"> For all models in this sub-library:
           <ul>
           <li> Included a housing object in all examples to compute
                all support torques.</li>
           <li> Replaced initialization by modifiers via the
                initialization menu parameters of Inertia components.</li>
           <li> Removed \"encapsulated\" and unnecessary \"import\". </li>
           <li> Included \"StopTime\" in the annotations.</li>
           </ul>
      </td>
  </tr>
   
  <tr><td colspan=\"2\"><b>Mechanics.Rotational.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> FrictionBase</td>
      <td valign=\"top\"> Introduced \"fixed=true\" for Boolean variables startForward, 
           startBackward, mode.
      </td>
  </tr>
  
  <tr><td colspan=\"2\"><b>Mechanics.Translational.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> FrictionBase</td>
      <td valign=\"top\"> Introduced \"fixed=true\" for Boolean variables startForward, 
           startBackward, mode.
      </td>
  </tr>
  
  <tr><td colspan=\"2\"><b>Media.UsersGuide.MediumUsage.</b></td></tr>
  <tr><td valign=\"top\"> TwoPhase</td>
      <td valign=\"top\"> Improved documentation and demonstrating the newly introduced functions
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Examples.</b></td></tr>
  <tr><td valign=\"top\"> WaterIF97</td>
      <td valign=\"top\"> Provided (missing) units for variables V, dV, H_flow_ext, m, U.
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b> Media.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> PartialMedium</td>
      <td valign=\"top\"> Final modifiers are removed from nX and nXi, to allow
           customized medium models such as mixtures of refrigerants with oil, etc.
      </td>
  </tr>
  <tr><td valign=\"top\"> PartialCondensingGases</td>
      <td valign=\"top\"> Included attributes \"min=1, max=2\" for input argument FixedPhase
           for functions setDewState and setBubbleState (in order to guarantee
           that input arguments are correct).
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b> Media.Interfaces.PartialMedium.</b></td></tr>
  <tr><td valign=\"top\"> BaseProperties</td>
      <td valign=\"top\"> New Boolean parameter \"standardOrderComponents\".
           If true, last element vector X is computed from 1-sum(Xi) (= default)
           otherwise, no equation is provided for it in PartialMedium.
      </td>
  </tr>
  <tr><td valign=\"top\"> IsentropicExponent</td>
      <td valign=\"top\"> \"max\" value changed from 1.7 to 500000
      </td>
  </tr>
  <tr><td valign=\"top\"> setState_pTX<br>
           setState_phX<br>        
           setState_psX<br>        
           setState_dTX<br>        
           specificEnthalpy_pTX<br>
           temperature_phX<br>     
           density_phX<br>         
           temperature_psX<br>     
           density_psX<br>         
           specificEnthalpy_psX</td>
      <td valign=\"top\"> Introduced defaut value \"reference_X\" for input argument \"X\".
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b> Media.Interfaces.PartialSimpleMedium.</b></td></tr>
  <tr><td valign=\"top\"> setState_pTX<br>
           setState_phX<br>
           setState_psX<br>
           setState_dTX</td>
      <td valign=\"top\"> Introduced defaut value \"reference_X\" for input argument \"X\".
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b> Media.Interfaces.PartialSimpleIdealGasMedium.</b></td></tr>
  <tr><td valign=\"top\"> setState_pTX<br>
           setState_phX<br>
           setState_psX<br>
           setState_dTX</td>
      <td valign=\"top\"> Introduced defaut value \"reference_X\" for input argument \"X\".
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b> Media.Air.MoistAir.</b></td></tr>
  <tr><td valign=\"top\"> setState_pTX<br>
           setState_phX<br>
           setState_dTX</td>
      <td valign=\"top\"> Introduced defaut value \"reference_X\" for input argument \"X\".
      </td>
  </tr>
  
  <tr><td colspan=\"2\"><b> Media.IdealGases.Common.SingleGasNasa.</b></td></tr>
  <tr><td valign=\"top\"> setState_pTX<br>
           setState_phX<br>
           setState_psX<br>
           setState_dTX</td>
      <td valign=\"top\"> Introduced defaut value \"reference_X\" for input argument \"X\".
      </td>
  </tr>
  
  <tr><td colspan=\"2\"><b> Media.IdealGases.Common.MixtureGasNasa.</b></td></tr>
  <tr><td valign=\"top\"> setState_pTX<br>
           setState_phX<br>
           setState_psX<br>
           setState_dTX<br>
           h_TX</td>
      <td valign=\"top\"> Introduced defaut value \"reference_X\" for input argument \"X\".
      </td>
  </tr>
 
  <tr><td colspan=\"2\"><b> Media.Common.</b></td></tr>
  <tr><td valign=\"top\"> IF97PhaseBoundaryProperties<br>
           gibbsToBridgmansTables </td>
      <td valign=\"top\"> Introduced unit for variables vt, vp.
      </td>
  </tr>
  <tr><td valign=\"top\"> SaturationProperties</td>
      <td valign=\"top\"> Introduced unit for variable dpT.
      </td>
  </tr>     
  <tr><td valign=\"top\"> BridgmansTables</td>
      <td valign=\"top\"> Introduced unit for dfs, dgs.
      </td>
  </tr>   
 
  <tr><td colspan=\"2\"><b> Media.Common.ThermoFluidSpecial.</b></td></tr>
  <tr><td valign=\"top\"> gibbsToProps_ph<br>
           gibbsToProps_ph  <br>   
           gibbsToBoundaryProps<br>
           gibbsToProps_dT<br>     
           gibbsToProps_pT</td>
      <td valign=\"top\"> Introduced unit for variables vt, vp.
      </td>
  <tr><td valign=\"top\"> TwoPhaseToProps_ph</td>
      <td valign=\"top\"> Introduced unit for variables dht, dhd, detph.
      </td>
  </tr>     
 
  <tr><td colspan=\"2\"><b> Media.</b></td></tr>
  <tr><td valign=\"top\"> MoistAir</td>
      <td valign=\"top\"> Documentation of moist air model significantly improved.
      </td>
  </tr>     
 
  <tr><td colspan=\"2\"><b> Media.MoistAir.</b></td></tr>
  <tr><td valign=\"top\"> enthalpyOfVaporization</td>
      <td valign=\"top\"> Replaced by linear correlation since simpler and more 
           accurate in the entire region.
      </td>
  </tr>     
 
  <tr><td colspan=\"2\"><b> Media.Water.IF97_Utilities.BaseIF97.Regions.</b></td></tr>
  <tr><td valign=\"top\"> drhovl_dp</td>
      <td valign=\"top\"> Introduced unit for variable dd_dp.
      </td>
  </tr>   
 
  <tr><td colspan=\"2\"><b> Thermal.</b></td></tr>
  <tr><td valign=\"top\"> FluidHeatFlow</td>
      <td valign=\"top\"> Introduced new parameter tapT (0..1) to define the
           temperature of the HeatPort as linear combination of the
           flowPort_a (tapT=0) and flowPort_b (tapT=1) temperatures.
      </td>
  </tr> 
</table> 
 
 
 
<p><br>
The following <b style=\"color:red\">critical errors</b> have been fixed (i.e. errors
that can lead to wrong simulation results):
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
  <tr><td colspan=\"2\"><b>Electrical.Machines.BasicMachines.Components.</b></td></tr>
  <tr><td valign=\"top\"> ElectricalExcitation</td>
      <td valign=\"top\"> Excitation voltage ve is calculated as
           \"spacePhasor_r.v_[1]*TurnsRatio*3/2\" instead of
           \"spacePhasor_r.v_[1]*TurnsRatio
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Parts.</b></td></tr>
  <tr><td valign=\"top\"> FixedRotation</td>
      <td valign=\"top\"> Bug corrected that the torque balance was wrong in the 
           following cases (since vector r was not transformed
           from frame_a to frame_b; note this special case occurs very seldomly in practice):
           <ul><li> frame_b is in the spanning tree closer to the root
                    (usually this is frame_a).</li>
               <li> vector r from frame_a to frame_b is not zero.</li>
           </ul>
       </td> 
  </tr>
 
 <tr><td valign=\"top\"> PointMass</td>
     <td valign=\"top\"> If a PointMass model is connected so that no equations are present
          to compute its orientation object, the orientation was arbitrarily
          set to a unit rotation. In some cases this can lead to a wrong overall
          model, depending on how the PointMass model is used. For this reason,
          such cases lead now to an error (via an assert(..)) with an explanation
          how to fix this.
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Interfaces.PartialPureSubstance.</b></td></tr>
  <tr><td valign=\"top\"> pressure_dT<br>
           specificEnthalpy_dT
      </td>
      <td valign=\"top\"> Changed wrong call from \"setState_pTX\" to \"setState_dTX\"
       </td> 
  </tr>
 
 
  <tr><td colspan=\"2\"><b>Media.Interfaces.PartialTwoPhaseMedium.</b></td></tr>
  <tr><td valign=\"top\"> pressure_dT<br>        
           specificEnthalpy_dT
      </td>
      <td valign=\"top\"> Changed wrong call from \"setState_pTX\" to \"setState_dTX\"
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Common.ThermoFluidSpecial.</b></td></tr>
  <tr><td valign=\"top\"> gibbsToProps_dT<br>    
           helmholtzToProps_ph<br>
           helmholtzToProps_pT<br>
           helmholtzToProps_dT</td>
      <td valign=\"top\"> Bugs in equations corrected </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Common.</b></td></tr>
  <tr><td valign=\"top\"> helmholtzToBridgmansTables<br>            
           helmholtzToExtraDerivs</td>
      <td valign=\"top\"> Bugs in equations corrected </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.IdealGases.Common.SingleGasNasa.</b></td></tr>
  <tr><td valign=\"top\"> density_derp_T</td>
      <td valign=\"top\"> Bug in equation of partial derivative corrected </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Water.IF97_Utilities.</b></td></tr>
  <tr><td valign=\"top\"> BaseIF97.Inverses.dtofps3<br>  
           isentropicExponent_props_ph<br> 
           isentropicExponent_props_pT<br>
           isentropicExponent_props_dT</td>         
      <td valign=\"top\"> Bugs in equations corrected </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Air.MoistAir.</b></td></tr>
  <tr><td valign=\"top\"> h_pTX</td>         
      <td valign=\"top\"> Bug in setState_phX due to wrong vector size in h_pTX corrected.
           Furthermore, syntactical errors corrected:  
           <ul><li> In function massFractionpTphi an equation 
                    sign is used in an algorithm.</li>
               <li> Two consecutive semicolons removed</li>
           </ul>
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Water.</b></td></tr>
  <tr><td valign=\"top\"> waterConstants</td>         
      <td valign=\"top\"> Bug in equation of criticalMolarVolume corrected.
      </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Water.IF97_Utilities.BaseIF97.Regions.</b></td></tr>
  <tr><td valign=\"top\"> region_ph<br>
           region_ps</td>         
      <td valign=\"top\"> Bug in region determination corrected.
      </td> 
  </tr>
 
  <tr><td valign=\"top\"> boilingcurve_p<br>
           dewcurve_p</td>         
      <td valign=\"top\"> Bug in equation of plim corrected.
      </td> 
  </tr>
</table>
 
 
<p><br>
The following <b style=\"color:red\">uncritical errors</b> have been fixed (i.e. errors
that do <b style=\"color:red\">not</b> lead to wrong simulation results, but, e.g., 
units are wrong or errors in documentation):
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2 style=\"border-collapse:collapse;\">
  <tr><td colspan=\"2\"><b>Blocks.</b></td></tr>
  <tr><td valign=\"top\"> Examples</td>
      <td valign=\"top\"> Corrected typos in description texts of bus example models.
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Blocks.Continuous.</b></td></tr>
  <tr><td valign=\"top\"> LimIntegrator</td>
      <td valign=\"top\"> removed incorrect smooth(0,..) because expression might be discontinuous.
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Blocks.Math.UnitConversions.</b></td></tr>
  <tr><td valign=\"top\"> block_To_kWh<br>block_From_kWh</td>
      <td valign=\"top\"> Corrected unit from \"kWh\" to (syntactically correct) \"kW.h\".
       </td> 
  </tr>

  <tr><td colspan=\"2\"><b>Electrical.Analog.Examples.</b></td></tr>
  <tr><td valign=\"top\"> HeatingNPN_OrGate</td>
      <td valign=\"top\"> Included start values, so that initialization is
                        successful </td> 
  </tr>

  <tr><td colspan=\"2\"><b>Electrical.Analog.Lines.</b></td></tr>
  <tr><td valign=\"top\"> OLine</td>
      <td valign=\"top\"> Corrected unit from \"Siemens/m\" to \"S/m\".
       </td> 
  <tr><td valign=\"top\"> TLine2</td>
      <td valign=\"top\"> Changed wrong type of parameter NL (normalized length) from
           SIunits.Length to Real.
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital.Delay.</b></td></tr>
  <tr><td valign=\"top\"> TransportDelay</td>
      <td valign=\"top\"> Syntax error corrected
           (\":=\" in equation section is converted by Dymola silently to \"=\").
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.Digital</b></td></tr>
  <tr><td valign=\"top\"> Converters</td>
      <td valign=\"top\"> Syntax error corrected
           (\":=\" in equation section is converted by Dymola silently to \"=\").
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.MultiPhase.Basic.</b></td></tr>
  <tr><td valign=\"top\"> Conductor</td>
      <td valign=\"top\"> Changed wrong type of parameter G from SIunits.Resistance to
           SIunits.Conductance.
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.MultiPhase.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> Plug<br></td>
      <td valign=\"top\"> Made used \"pin\" connectors non-graphical (otherwise, 
           there are difficulties to connect to Plug).
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Electrical.MultiPhase.Sources.</b></td></tr>
  <tr><td valign=\"top\"> SineCurrent</td>
      <td valign=\"top\"> Changed wrong type of parameter offset from SIunits.Voltage to
           SIunits.Current.
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Examples.Loops.</b></td></tr>
  <tr><td valign=\"top\"> EngineV6</td>
      <td valign=\"top\"> Corrected wrong crankAngleOffset of some cylinders
           and improved the example.
       </td> 
  </tr>
 
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Examples.Loops.Utilities.</b></td></tr>
  <tr><td valign=\"top\"> GasForce</td>
      <td valign=\"top\"> Wrong units corrected:
           \"SIunitsPosition x,y\" to \"Real x,y\";
           \"SIunits.Pressure press\" to \"SIunits.Conversions.NonSIunits.Pressure_bar\"
       </td> 
  </tr>
  <tr><td valign=\"top\"> GasForce2</td>
      <td valign=\"top\"> Wrong unit corrected: \"SIunits.Position x\" to \"Real x\".
       </td> 
  </tr>
  <tr><td valign=\"top\"> EngineV6_analytic</td>
      <td valign=\"top\"> Corrected wrong crankAngleOffset of some cylinders.
       </td> 
  </tr>
 
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> PartialLineForce</td>
      <td valign=\"top\"> Corrected wrong unit: \"SIunits.Position eRod_a\" to \"Real eRod_a\";
       </td> 
  </tr>
  <tr><td valign=\"top\"> FlangeWithBearingAdaptor </td>
      <td valign=\"top\"> If includeBearingConnector = false, connector \"fr"
               + "ame\" was not
           removed. As long as the connecting element to \"frame\" determines
           the non-flow variables, this is fine. In the corrected version, \"frame\"
           is conditionally removed in this case.</td>
  </tr>

 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Forces.</b></td></tr>
  <tr><td valign=\"top\"> ForceAndTorque</td>
      <td valign=\"top\"> Corrected wrong unit: \"SIunits.Force t_b_0\" to \"SIunits.Torque t_b_0\".
       </td> 
  </tr>
  <tr><td valign=\"top\"> LineForceWithTwoMasses</td>
      <td valign=\"top\"> Corrected wrong unit: \"SIunits.Position e_rel_0\" to \"Real e_rel_0\".
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Frames.</b></td></tr>
  <tr><td valign=\"top\"> axisRotation</td>
      <td valign=\"top\"> Corrected wrong unit: \"SIunits.Angle der_angle\" to
            \"SIunits.AngularVelocity der_angle\".
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Joints.Assemblies.</b></td></tr>
  <tr><td valign=\"top\"> JointUSP<br>JointSSP</td>
      <td valign=\"top\"> Corrected wrong unit: \"SIunits.Position aux\"  to \"Real\"
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Sensors.</b></td></tr>
  <tr><td valign=\"top\"> AbsoluteSensor</td>
      <td valign=\"top\"> Corrected wrong units: \"SIunits.Acceleration angles\" to
           \"SIunits.Angle angles\" and
           \"SIunits.Velocity w_abs_0\" to \"SIunits.AngularVelocity w_abs_0\"
       </td> 
  </tr>
  <tr><td valign=\"top\"> RelativeSensor</td>
      <td valign=\"top\"> Corrected wrong units: \"SIunits.Acceleration angles\" to
           \"SIunits.Angle angles\"
       </td> 
  </tr>
  <tr><td valign=\"top\"> Distance</td>
      <td valign=\"top\"> Corrected wrong units: \"SIunits.Length L2\" to \"SIunits.Area L2\" and
           SIunits.Length s_small2\" to \"SIunits.Area s_small2\"
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.MultiBody.Visualizers.Advanced.</b></td></tr>
  <tr><td valign=\"top\"> Shape</td>
      <td valign=\"top\"> Changed \"MultiBody.Types.Color color\" to \"Real color[3]\", since
           \"Types.Color\" is \"Integer color[3]\" and there have been backward
           compatibility problems with models using \"color\" before it was changed
           to \"Types.Color\".
       </td> 
  </tr>  
 
  <tr><td colspan=\"2\"><b>Mechanics.Rotational.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> FrictionBase</td>
      <td valign=\"top\"> Rewrote equations with new variables \"unitAngularAcceleration\" and
           \"unitTorque\" in order that the equations are correct with respect
           to units (previously, variable \"s\" can be both a torque and an 
           angular acceleration and this lead to unit incompatibilities)
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\"> OneWayClutch<br>LossyGear</td>
      <td valign=\"top\"> Rewrote equations with new variables \"unitAngularAcceleration\" and
           \"unitTorque\" in order that the equations are correct with respect
           to units (previously, variable \"s\" can be both a torque and an 
           angular acceleration and this lead to unit incompatibilities)
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.Translational.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> FrictionBase</td>
      <td valign=\"top\"> Rewrote equations with new variables \"unitAngularAcceleration\" and
           \"unitTorque\" in order that the equations are correct with respect
           to units (previously, variable \"s\" can be both a torque and an 
           angular acceleration and this lead to unit incompatibilities)
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Mechanics.Translational.</b></td></tr>
  <tr><td valign=\"top\"> Speed</td>
      <td valign=\"top\"> Corrected unit of v_ref from SIunits.Position to SIunits.Velocity
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Examples.Tests.Components.</b></td></tr>
  <tr><td valign=\"top\"> PartialTestModel<br>PartialTestModel2</td>
      <td valign=\"top\"> Corrected unit of h_start from \"SIunits.Density\" to \"SIunits.SpecificEnthalpy\"
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Examples.SolveOneNonlinearEquation.</b></td></tr>
  <tr><td valign=\"top\"> Inverse_sh_T
           InverseIncompressible_sh_T<br>
           Inverse_sh_TX</td>
      <td valign=\"top\"> Rewrote equations so that dimensional (unit) analysis is correct\"
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Incompressible.Examples.</b></td></tr>
  <tr><td valign=\"top\"> TestGlycol</td>
      <td valign=\"top\"> Rewrote equations so that dimensional (unit) analysis is correct\"
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Interfaces.PartialTwoPhaseMedium.</b></td></tr>
  <tr><td valign=\"top\"> dBubbleDensity_dPressure<br>dDewDensity_dPressure</td>
      <td valign=\"top\"> Changed wrong type of ddldp from \"DerDensityByEnthalpy\"
           to \"DerDensityByPressure\".
       </td> 
  </tr>
 
  <tr><td colspan=\"2\"><b>Media.Common.ThermoFluidSpecial.</b></td></tr>
  <tr><td valign=\"top\"> ThermoProperties</td>
      <td valign=\"top\"> Changed wrong units:
           \"SIunits.DerEnergyByPressure dupT\" to \"Real dupT\" and
           \"SIunits.DerEnergyByDensity dudT\" to \"Real dudT\"
       </td> 
  </tr>
  <tr><td valign=\"top\"> ThermoProperties_ph</td>
      <td valign=\"top\"> Changed wrong unit from \"SIunits.DerEnergyByPressure duph\" to \"Real duph\"
       </td> 
  </tr>
  <tr><td valign=\"top\"> ThermoProperties_pT</td>
      <td valign=\"top\"> Changed wrong unit from \"SIunits.DerEnergyByPressure dupT\" to \"Real dupT\"
       </td> 
  </tr>  
  <tr><td valign=\"top\"> ThermoProperties_dT</td>
      <td valign=\"top\">  Changed wrong unit from \"SIunits.DerEnergyByDensity dudT\" to \"Real dudT\"
       </td> 
  </tr>
  
  <tr><td colspan=\"2\"><b>Media.IdealGases.Common.SingleGasNasa.</b></td></tr>
  <tr><td valign=\"top\"> cp_Tlow_der</td>
      <td valign=\"top\"> Changed wrong unit from \"SIunits.Temperature dT\" to \"Real dT\".
       </td> 
  </tr>
  
  <tr><td colspan=\"2\"><b>Media.Water.IF97_Utilities.BaseIF97.Basic.</b></td></tr>
  <tr><td valign=\"top\"> p1_hs<br>
           h2ab_s<br> 
           p2a_hs<br> 
           p2b_hs<br> 
           p2c_hs<br> 
           h3ab_p<br> 
           T3a_ph<br> 
           T3b_ph<br> 
           v3a_ph<br> 
           v3b_ph<br> 
           T3a_ps<br> 
           T3b_ps<br> 
           v3a_ps<br> 
           v3b_ps</td>
      <td valign=\"top\"> Changed wrong unit of variables h/hstar, s, sstar from
           \"SIunits.Enthalpy\" to \"SIunits.SpecificEnthalpy\",
           \"SIunits.SpecificEntropy\", \"SIunits.SpecificEntropy
       </td> 
  </tr>
  
  <tr><td colspan=\"2\"><b>Media.Water.IF97_Utilities.BaseIF97.Transport.</b></td></tr>
  <tr><td valign=\"top\"> cond_dTp</td>
      <td valign=\"top\"> Changed wrong unit of TREL, rhoREL, lambdaREL from
           \"SIunits.Temperature\", \"SIunit.Density\", \"SIunits.ThermalConductivity\"
           to \"Real\".
       </td> 
  </tr>
  
  <tr><td colspan=\"2\"><b>Media.Water.IF97_Utilities.BaseIF97.Inverses.</b></td></tr>
  <tr><td valign=\"top\"> tofps5<br>tofpst5</td>
      <td valign=\"top\"> Changed wrong unit of pros from \"SIunits.SpecificEnthalpy\" to
           \"SIunits.SpecificEntropy\".
       </td> 
  </tr>
  
  <tr><td colspan=\"2\"><b>Media.Water.IF97_Utilities.</b></td></tr>
  <tr><td valign=\"top\"> waterBaseProp_ph</td>
      <td valign=\"top\"> Improved calculation at the limits of the validity.
       </td> 
  </tr>
 
    <tr><td colspan=\"2\"><b>Thermal.</b></td></tr>
  <tr><td valign=\"top\"> FluidHeatFlow<br>HeatTransfer</td>
      <td valign=\"top\"> Corrected wrong unit \"SIunits.Temperature\" of difference temperature
            variables with \"SIunits.TemperatureDifference\".
       </td> 
  </tr>
 
</table>
                               
</html>
"));
  end Version_2_2_2;
    
  class Version_2_2_1 "Version 2.2.1 (March 24, 2006)" 
      
      annotation (Documentation(info="<html>

<p>
Version 2.2.1 is backward compatible to version 2.2.
</p>
 
<p>
In this version, <b>no</b> new libraries have been added.
The following major improvements have been made:
</p>
 
<ul>
<li> The <b>Documentation</b> of the Modelica standard library was
     considerably improved:<br>
     In Dymola 6, the new feature was introduced to automatically add tables
     for class content and component interface definitions (parameters and 
     connectors) to the info layer. For this reason, the corresponding (partial)
     tables previously present in the Modelica Standard Library have been
     removed. The new feature of Dymola 6 has the significant advantage that
     all tables are now guaranteed to be up-to-date.<br>
     Additionally, the documentation has been improved by adding appropriate
     description texts to parameters, connector instances, function input
     and output arguments etc., in order that the automatically generated
     tables do not have empty entries. Also new User's Guides for sublibraries
     Rotational and SIunits have been added and the User's Guide on top
     level (Modelica.UsersGuide) has been improved.<br>&nbsp;</li>
 
<li> Initialization options have been added to the Modelica.Blocks.<b>Continuous</b>
     blocks (NoInit, SteadyState, InitialState, InitialOutput). If InitialOutput
     is selected, the block output is provided as initial condition. The states
     of the block are then initialized as close as possible to steady state.
     Furthermore, the Continuous.LimPID block has been significantly
     improved and much better documented.<br>&nbsp;</li>
 
<li> The Modelica.<b>Media</b> library has been significantly improved:<br>
     New functions setState_pTX, setState_phX, setState_psX, setState_dTX
     have been added to PartialMedium to compute the independent medium variables
     (= state of medium) from p,T,X, or from p,h,X or from p,s,X or from
     d,T,X. Then functions are provided for all interesting medium variables
     to compute them from its medium state. All these functions are
     implemented in a robust way for all media (with a few exceptions, if the
     generic function does not make sense for a particular medium).</li>
</ul>
 
<p>
The following <b>new components</b> have been added to <b>existing</b> libraries:
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Examples.</b></td></tr>
  <tr><td valign=\"top\"> PID_Controller</td>
      <td valign=\"top\"> Example to demonstrate the usage of the
           Blocks.Continuous.LimPID block.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Math.</b></td></tr>
  <tr><td valign=\"top\"> UnitConversions.*</td>
      <td valign=\"top\"> New package that provides blocks for unit conversions.
           UnitConversions.ConvertAllBlocks allows to select all
           available conversions from a menu.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.</b></td></tr>
  <tr><td valign=\"top\"> SM_ElectricalExcitedDamperCage</td>
      <td valign=\"top\"> Electrical excited synchronous induction machine with damper cage</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Machines.BasicMachines.Components.</b></td></tr>
  <tr><td valign=\"top\"> ElectricalExcitation </td>
      <td valign=\"top\"> Electrical excitation for electrical excited synchronous 
           induction machines</td> </tr>
  <tr><td valign=\"top\"> DamperCage</td>
      <td valign=\"top\"> Unsymmetrical damper cage for electrical excited synchronous 
           induction machines. At least the user has to specify the dampers
           resistance and stray inductance in d-axis; if he omits the
           parameters of the q-axis, the same values as for the d.axis 
           are used, assuming a symmetrical damper.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Machines.Examples.</b></td></tr>
  <tr><td valign=\"top\"> SMEE_Gen </td>
      <td valign=\"top\"> Test example 7: ElectricalExcitedSynchronousInductionMachine 
           as Generator</td> </tr>
  <tr><td valign=\"top\"> Utilities.TerminalBox</td>
      <td valign=\"top\"> Terminal box for three-phase induction machines to choose  
           either star (wye) ? or delta ? connection</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Math.Matrices.</b></td></tr>
  <tr><td valign=\"top\"> equalityLeastSquares</td>
      <td valign=\"top\"> Solve a linear equality constrained least squares problem:<br>
          min|A*x-a|^2 subject to B*x=b</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.MultiBody.</b></td></tr>
  <tr><td valign=\"top\"> Parts.PointMass</td>
      <td valign=\"top\"> Point mass, i.e., body where inertia tensor is neglected.</td> </tr>
  <tr><td valign=\"top\"> Interfaces.FlangeWithBearing</td>
      <td valign=\"top\"> Connector consisting of 1-dim. rotational flange and its 
           3-dim. bearing frame.</td> </tr>
  <tr><td valign=\"top\"> Interfaces.FlangeWithBearingAdaptor</td>
      <td valign=\"top\"> Adaptor to allow direct connections to the sub-connectors 
           of FlangeWithBearing.</td> </tr>
  <tr><td valign=\"top\"> Types.SpecularCoefficient</td>
      <td valign=\"top\"> New type to define a specular coefficient.</td> </tr>
  <tr><td valign=\"top\"> Types.ShapeExtra</td>
      <td valign=\"top\"> New type to define the extra data for visual shape objects and to
           have a central place for the documentation of this data.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.MultiBody.Examples.Elementary</b></td></tr>
  <tr><td valign=\"top\"> PointGravityWithPointMasses</td>
      <td valign=\"top\"> Example of two point masses in a central gravity field.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\">UsersGuide</td>
      <td valign=\"top\"> A User's Guide has been added by using the documentation previously
           present in the package documentation of Rotational.</td> </tr>
  <tr><td valign=\"top\">Sensors.PowerSensor</td>
      <td valign=\"top\"> New component to measure the energy flow between two connectors
           of the Rotational library.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Translational.</b></td></tr>
  <tr><td valign=\"top\">Speed</td>
      <td valign=\"top\"> New component to move a translational flange 
           according to a reference speed</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Media.Interfaces.PartialMedium.</b></td></tr>
  <tr><td valign=\"top\">specificEnthalpy_pTX</td>
      <td valign=\"top\"> New function to compute specific enthalpy from pressure, temperature
           and mass fractions.</td> </tr>
  <tr><td valign=\"top\">temperature_phX</td>
      <td valign=\"top\"> New function to compute temperature from pressure, specific enthalpy,
           and mass fractions.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Icons.</b></td></tr>
  <tr><td valign=\"top\"> SignalBus</td>
      <td valign=\"top\"> Icon for signal bus</td> </tr>
  <tr><td valign=\"top\"> SignalSubBus</td>
      <td valign=\"top\"> Icon for signal sub-bus</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.SIunits.</b></td></tr>
  <tr><td valign=\"top\">UsersGuide</td>
      <td valign=\"top\"> A User's Guide has been added that describes unit handling.</td> </tr>
  <tr><td valign=\"top\"> Resistance<br>
           Conductance</td>
      <td valign=\"top\"> Attribute 'min=0' removed from these types.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Thermal.FluidHeatFlow.</b></td></tr>
  <tr><td valign=\"top\"> Components.Valve</td>
      <td valign=\"top\"> Simple controlled valve with either linear or 
           exponential characteristic.</td> </tr>
  <tr><td valign=\"top\"> Sources. IdealPump </td>
      <td valign=\"top\"> Simple ideal pump (resp. fan)  dependent on the shaft?s speed;
           pressure increase versus volume flow is defined as a linear 
           function. Torque * Speed = Pressure invrease * Volume flow 
           (without losses).</td> </tr>
  <tr><td valign=\"top\"> Examples.PumpAndValve </td>
      <td valign=\"top\"> Test example for valves.</td> </tr>
  <tr><td valign=\"top\"> Examples.PumpDropOut </td>
      <td valign=\"top\"> Drop out of 1 pump to test behavior of semiLinear.</td> </tr>
  <tr><td valign=\"top\"> Examples.ParallelPumpDropOut </td>
      <td valign=\"top\"> Drop out of 2 parallel pumps to test behavior of semiLinear.</td> </tr>
  <tr><td valign=\"top\"> Examples.OneMass </td>
      <td valign=\"top\"> Cooling of 1 hot mass to test behavior of semiLinear.</td> </tr>
  <tr><td valign=\"top\"> Examples.TwoMass </td>
      <td valign=\"top\"> Cooling of 2 hot masses to test behavior of semiLinear.</td> </tr>
</table> 
 
<p>
The following <b>components</b> have been improved:
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.</b></td></tr>
  <tr><td valign=\"top\"> UsersGuide</td>
      <td valign=\"top\"> User's Guide and package description of Modelica Standard Library improved.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Interfaces.</b></td></tr>
  <tr><td valign=\"top\"> RealInput<br>
           BooleanInput<br>
           IntegerInput</td>
      <td valign=\"top\"> When dragging one of these connectors the width and height
           is a factor of 2 larger as a standard icon. Previously,
           these connectors have been dragged and then manually enlarged
           by a factor of 2 in the Modelica standard library.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Blocks.</b></td></tr>
  <tr><td valign=\"top\"> Continuous.*</td>
      <td valign=\"top\"> Initialization options added to all blocks
           (NoInit, SteadyState, InitialState, InitialOutput).
           New parameter limitsAtInit to switch off the limits
           of LimIntegrator or LimPID during initialization</td> </tr>
  <tr><td valign=\"top\"> Continuous.LimPID</td>
      <td valign=\"top\"> Option to select P, PI, PD, PID controller.
           Documentation significantly improved.</td> </tr>
  <tr><td valign=\"top\"> Nonlinear.Limiter<br>
           Nonlinear.VariableLimiter<br>
           Nonlinear.Deadzone</td>
      <td valign=\"top\"> New parameter limitsAtInit/deadZoneAtInit to switch off the limits
           or the dead zone during initialization</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog. </b></td></tr>
  <tr><td valign=\"top\"> Sources</td>
      <td valign=\"top\"> Icon improved (+/- added to voltage sources, arrow added to
           current sources).</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Semiconductors. </b></td></tr>
  <tr><td valign=\"top\"> Diode</td>
      <td valign=\"top\"> smooth() operator included to improve numerics.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines. </b></td></tr>
  <tr><td valign=\"top\"> SM_PermanentMagnetDamperCage<br>
           SM_ElectricalExcitedDamperCage<br>
           SM_ReluctanceRotorDamperCage</td>
      <td valign=\"top\"> The user can choose \"DamperCage = false\" (default: true) 
           to remove all equations for the damper cage from the model.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines. </b></td></tr>
  <tr><td valign=\"top\"> AIM_SlipRing</td>
      <td valign=\"top\"> Easier parameterization: if the user selects \"useTrunsRatio = false\" 
           (default: true, this is the same behavior as before), 
            parameter TurnsRatio is calculated internally from 
            Nominal stator voltage and Locked-rotor voltage.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Math.Matrices.</b></td></tr>
  <tr><td valign=\"top\">leastSquares</td>
      <td valign=\"top\">The A matrix in the least squares problem might be rank deficient.
          Previously, it was required that A has full rank.</td>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.MultiBody.</b></td></tr>
  <tr><td valign=\"top\">all models</td>
      <td valign=\"top\"> <ul> 
           <li> All components with animation information have a new variable
                <b>specularCoefficient</b> to define the reflection of ambient light. 
                The default value is world.defaultSpecularCoefficient which has
                a default of 0.7. By changing world.defaultSpecularCoefficient, the
                specularCoefficient of all components is changed that are not
                explicitly set differently. Since specularCoefficient is a variable
                (and no parameter), it can be changed during simulation. Since
                annotation(Dialog) is set, this variable still appears in the
                parameter menus.<br>
                Previously, a constant specularCoefficient of 0.7 was used
                for all components.</li>
           <li> Variable <b>color</b> of all components is no longer a parameter
                but an input variable. Also all parameters in package <b>Visualizers</b>,
                with the exception of <b>shapeType</b> are no longer parameters but
                defined as input variables with annotation(Dialog). As a result,
                all these variables appear still in parameter menus, but they can
                be changed during simulation (e.g., color might be used to
                display the temperature of a part).</li>
           <li> All menus have been changed to follow the Modelica 2.2 annotations
                \"Dialog, group, tab, enable\" (previously, a non-standard Dymola
                definition for menus was used). Also, the \"enable\" annotation 
                is used in all menus
                to disable input fields if the input would be ignored.</li>
           <li> All visual shapes are now defined with conditional declarations
                (to remove them, if animation is switched off). Previously,
                these (protected) objects have been defined by arrays with
                dimension 0 or 1.</li>
           </ul></td></tr>
 
  <tr><td valign=\"top\">Frames.resolveRelative</td>
      <td valign=\"top\"> The derivative of this function added as function and defined via
           an annotation. In certain situations, tools had previously
           difficulties to differentiate the inlined function automatically.</td>
 
 
  <tr><td valign=\"top\">Forces.*</td>
      <td valign=\"top\"> The scaling factors N_to_m and Nm_to_m have no longer a default
           value of 1000 but a default value of world.defaultN_to_m (=1000) 
           and world.defaultNm_to_m (=1000). This allows to change the
           scaling factors for all forces and torques in the world
           object.</td>
  <tr><td valign=\"top\">Interfaces.Frame.a<br>
          Interfaces.Frame.b<br>
          Interfaces.Frame_resolve</td>
      <td valign=\"top\"> The Frame connectors are now centered around the origin to ease
           the usage. The shape was changed, such that the icon is a factor
           of 1.6 larger as a standard icon (previously, the icon had a 
           standard size when dragged and then the icon was manually enlarged
           by a factor of 1.5 in the y-direction in the MultiBody library;
           the height of 16 allows easy positioning on the standard grid size of 2).
           The double line width of the border in icon and diagram layer was changed
           to a single line width and when making a connection the connection
           line is dark grey and no longer black which looks better.</td>
  <tr><td valign=\"top\">Joints.Assemblies.*</td>
      <td valign=\"top\"> When dragging an assembly joint, the icon is a factor of 2
           larger as a standard icon. Icon texts and connectors have a 
           standard size in this enlarged icon (and are not a factor of 2
           larger as previously). </td>
  <tr><td valign=\"top\">Types.*</td>
      <td valign=\"top\"> All types have a corresponding icon now to visualize the content
           in the package browser (previously, the types did not have an icon).</td>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\"> Inertia</td>
      <td valign=\"top\"> Initialization and state selection added.</td> </tr>
  <tr><td valign=\"top\"> SpringDamper</td>
      <td valign=\"top\"> Initialization and state selection added.</td> </tr>
  <tr><td valign=\"top\"> Move</td>
      <td valign=\"top\"> New implementation based solely on Modelica 2.2 language
           (previously, the Dymola specific constrain(..) function was used).</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Translational.</b></td></tr>
  <tr><td valign=\"top\"> Move</td>
      <td valign=\"top\"> New implementation based solely on Modelica 2.2 language
           (previously, the Dymola specific constrain(..) function was used).</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.</b></td></tr>
  <tr><td valign=\"top\"> SimpleFriction</td>
      <td valign=\"top\"> Calculates friction losses from pressure drop and volume flow.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Thermal.FluidHeatFlow.Components.</b></td></tr>
  <tr><td valign=\"top\"> IsolatedPipe <br>
           HeatedPipe</td>
      <td valign=\"top\"> Added geodetic height as a source of pressure change;
           feeds friction losses as calculated by simple friction to  
           the energy balance of the medium.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Media.Interfaces.PartialMedium.FluidConstants.</b></td></tr>
  <tr><td valign=\"top\">HCRIT0</td><td valign=\"top\">Critical specifc enthalpy of the fundamental
          equation (base formulation of the fluid medium model). </td></tr>
  <tr><td valign=\"top\">SCRIT0</td><td valign=\"top\">Critical specifc entropy of the fundamental
          equation (base formulation of the fluid medium model). </td></tr>
  <tr><td valign=\"top\">deltah</td><td valign=\"top\">Enthalpy offset (default: 0) between the
          specific enthalpy of the fluid model and the user-visible
          specific enthalpy in the model: deltah = h_model - h_fundamentalEquation.
</td></tr>
  <tr><td valign=\"top\">deltas</td><td valign=\"top\">Entropy offset (default: 0) between the
          specific entropy of the fluid model and the user-visible
          specific entropy in the model: deltas = s_model - s_fundamentalEquation.</td></tr>
  <tr><td valign=\"top\">T_default</td><td valign=\"top\">Default value for temperature of medium (for initialization)</td></tr>
  <tr><td valign=\"top\">h_default</td><td valign=\"top\">Default value for specific enthalpy of medium (for initialization)</td></tr>
  <tr><td valign=\"top\">p_default</td><td valign=\"top\">Default value for pressure of medium (for initialization)</td></tr>
  <tr><td valign=\"top\">X_default</td><td valign=\"top\">Default value for mass fractions of medium (for initialization)</td></tr>
</table> 
<p>
The following <b>errors</b> have been fixed:
</p>
 
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Tables.</b></td></tr>
  <tr><td valign=\"top\">CombiTable1D<br>
          CombiTable1Ds<br>
          CombiTable2D</td>
      <td valign=\"top\"> Parameter \"tableOnFile\" determines now whether a table is read from
           file or used from parameter \"table\". Previously, if \"fileName\" was not
           \"NoName\", a table was always read from file \"fileName\", independently
           of the setting of \"tableOnFile\". This has been corrected.<br>
           Furthermore, the initialization of a table is now performed in a 
           when-clause and no longer in a parameter declaration, because some
           tools evaluate the parameter declaration in some situation more than
           once and then the table is unnecessarily read several times    
           (and occupies also more memory).</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Sources.</b></td></tr>
  <tr><td valign=\"top\">CombiTimeTable</td>
      <td valign=\"top\"> Same bug fix/improvement as for the tables from Modelica.Blocks.Tables 
           as outlined above.</td> </tr>
 
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Semiconductors. </b></td></tr>
  <tr><td valign=\"top\"> PMOS<br>
           NMOS<br>
           HeatingPMOS<br>
           HeatingNMOS</td>
      <td valign=\"top\"> The Drain-Source-Resistance RDS had actually a resistance of
           RDS/v, with v=Beta*(W+dW)/(L+dL). The correct formula is without
           the divison by \"v\". This has now been corrected.<br>
           This bug fix should not have an essential effect in most applications.
           In the default case (Beta=1e-5), the Drain-Source-Resistance was
           a factor of 1e5 too large and had in the default case the
           wrong value 1e12, although it should have the value 1e7. The effect
           was that this resistance had practically no effect.</td> </tr>
 
  <tr><td colspan=\"2\"> <b>Modelica.Media.IdealGases.Common.SingleGasNasa.</b></td></tr>
  <tr><td valign=\"top\"> dynamicViscosityLowPressure</td>
      <td valign=\"top\"> Viscosity and thermal conductivity (which needs viscosity as input) 
           were computed wrong for polar gases and gas mixtures 
           (i.e. if dipole moment not 0.0). This has been fixed in version 2.2.1.</td> </tr>
  <tr><td colspan=\"2\"><b>Modelica.Utilities.Streams.</b></td></tr>
  <tr><td valign=\"top\">readLine</td>
      <td valign=\"top\"> Depending on the C-implementation, the stream was not correctly closed.
           This has been corrected by adding a \"Streams.close(..)\" 
           after reading the file content.</td> </tr>
 
</table>                                 
</html>
"));
  end Version_2_2_1;
    
  class Version_2_2 "Version 2.2 (April 6, 2005)" 
      
      annotation (Documentation(info="<html>

<p>
Version 2.2 is backward compatible to version 2.1.
</p>
The following <b>new libraries</b> have been added:
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Media\">Modelica.Media</a></td>
      <td valign=\"top\"> Property models of liquids and gases, especially
           <ul>
           <li>1241 detailed gas models,</li>
           <li> moist air,</li>
           <li> high precision water model (according to IAPWS/IF97 standard), </li>
           <li> incompressible media defined by tables (cp(T), rho(t), eta(T), etc. are defined by tables).</li>
           </ul>
           The user can conveniently define mixtures of gases between the 
           1241 gas models. The models are
           designed to work well in dynamic simulations. They
           are based on a new standard interface for media with
           single and multiple substances and one or multiple phases
           with the following features:
           <ul>
           <li> The independent variables of a medium model do not influence the 
                definition of a fluid connector port or how the
                balance equations have to be implemented.<br>
                Used independent variables: \"p,T\", \"p,T,X\", \"p,h\", \"d,T\".</li>
           <li> Optional variables, e.g., dynamic viscosity, are only computed 
                if needed.<li>
           <li> The medium models are implemented with regards to efficient 
                dynamic simulation.</li>
           </ul>
      </td><tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Thermal.FluidHeatFlow\">Modelica.Thermal.FluidHeatFlow</a></td>
      <td valign=\"top\"> Simple components for 1-dim., incompressible thermo-fluid flow 
           to model coolant flows, e.g., of electrical machines.
           Components can be connected arbitrarily together (= ideal mixing
           at connection points) and fluid may reverse direction of flow. 
  </td><tr>
</table>
<p>
The following <b>changes</b> have been performed in the
<b>Modelica.Mechanics.MultiBody</b> library:
</p>
<ul>
<li> Component MultiBody.World has a new parameter
     <b>driveTrainMechanics3D</b>. If set to <b>true</b>, 3D mechanical effects
     of MultiBody.Parts.Mounting1D/Rotor1D/BevelGear1D are taken into account. If set to 
     <b>false</b> (= default), 3D mechanical effects in these elements
     are not taken into account and the
     frame connectors to connect to 3D parts are disabled (all
     connections to such a disabled connector are also disabled, due to the
     new feature of conditional declarations in Modelica language 2.2)</li>
<li> All references to \"MultiBody.xxx\" have
     been changed to \"Modelica.Mechanics.MultiBodys.xxx\" in order that after
     copying of a component outside of the Modelica library, the references
     still remain valid.</li>
</ul>
</html>
"));
  end Version_2_2;
    
  class Version_2_1 "Version 2.1 (Nov. 11, 2004)" 
      
      annotation (Documentation(info="<html>

<p> This is a major change with respect to previous versions of the
    Modelica Standard Library, because <b>many new libraries</b> and components
    are included and because the input/output blocks (Modelica.Blocks)
    have been considerably simplified:
</p>
<ul>
<li> An input/output connector is defined <b>without</b> a hierarchy (this is possible
     due to new features of the Modelica language). For example, the input
     signal of a block \"FirstOrder\" was previously accessed as \"FirstOrder.inPort.signal[1]\".
     Now it is accessed as \"FirstOrder.u\". This simplifies the understanding and usage 
     especially for beginners.</li>
<li> De-vectorized the <b>Modelica.Blocks</b> library. All blocks in the
     Modelica.Blocks library are now scalar blocks. As a result,
     the parameters of the Blocks are scalars and no vectors any
     more. For example, a parameter \"amplitude\" that might had
     a value of \"{1}\" previously, has now a value of \"1\". This simplifies
     the understanding and usage especially for beginners.<br>
     If a vector of blocks is needed, this can be easily
     accomplished by adding a dimension to the instance. For example
     \"Constant const[3](k={1,2,3}\" defines three Constant blocks. 
     An additional advantage of the new approach is that
     the implementation of Modelica.Blocks is much simpler and is easier to
     understand.
</li>
</ul>
     
<p>
The discussed changes of Modelica.Blocks are not backward compatible.
A script to <b>automatically</b> convert models to this new version is
provided. There might be rare cases, where this script does not convert. 
In this case models have to be manually converted.
In any case you should make a back-up copy of your model
before automatic conversion is performed. 
</p>
<p>
The following <b>new libraries</b> have been added:
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.Digital\">Modelica.Electrical.Digital</a></td>
      <td valign=\"top\">Digital electrical components based on 2-,3-,4-, and 9-valued logic<br>
          according to the VHDL standard</td><tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Electrical.Machines\">Modelica.Electrical.Machines</a></td>
      <td valign=\"top\">Asynchronous, synchronous and DC motor and generator models</td><tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Math.Matrices\">Modelica.Math.Matrices</a></td>
      <td valign=\"top\">Functions operatinng on matrices such as solve() (A*x=b), leastSquares(),<br>
          norm(), LU(), QR(),  eigenValues(), singularValues(), exp(), ...</td><tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.StateGraph\">Modelica.StateGraph</a></td>
      <td valign=\"top\"> Modeling of <b>discrete event</b> and <b>reactive</b> systems in a convenient way using<br>
           <b>hierarchical state machines</b> and <b>Modelica</b> as <b>action language</b>. <br>
           It is based on JGraphChart and Grafcet and  has a similar modeling power as <br>
           StateCharts. It avoids deficiences of usually used action languages. <br>
           This library makes the ModelicaAdditions.PetriNets library obsolet.</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Files\">Modelica.Utilities.Files</a></td>
      <td valign=\"top\">Functions to operate on files and directories (copy, move, remove files etc.)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Streams\">Modelica.Utilities.Streams</a></td>
      <td valign=\"top\">Read from files and write to files (print, readLine, readFile, error, ...)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.Strings\">Modelica.Utilities.Strings</a></td>
      <td valign=\"top\">Operations on strings (substring, find, replace, sort, scanToken, ...)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Utilities.System\">Modelica.Utilities.System</a></td>
      <td valign=\"top\">Get/set current directory, get/set environment variable, execute shell command, etc.</td></tr>
</table>
<p>
The following existing libraries outside of the Modelica standard library
have been improved and added as <b>new libraries</b>
(models using the previous libraries are automatically converted
to the new sublibraries inside package Modelica):
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Blocks.Discrete\">Modelica.Blocks.Discrete</a></td>
      <td valign=\"top\"> Discrete input/output blocks with fixed sample period<br>
           (from ModelicaAdditions.Blocks.Discrete)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Blocks.Logical\">Modelica.Blocks.Logical</a></td>
      <td valign=\"top\"> Logical components with Boolean input and output signals<br>
           (from ModelicaAdditions.Blocks.Logical)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Blocks.Nonlinear\">Modelica.Blocks.Nonlinear</a></td>
      <td valign=\"top\"> Discontinuous or non-differentiable algebraic control blocks such as variable limiter,<br>
           fixed, variable and Pade delay etc. (from ModelicaAdditions.Blocks.Nonlinear)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Blocks.Routing\">Modelica.Blocks.Routing</a></td>
      <td valign=\"top\"> Blocks to combine and extract signals, such as multiplexer<br>
           (from ModelicaAdditions.Blocks.Multiplexer)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Blocks.Tables\">Modelica.Blocks.Tables</a></td>
      <td valign=\"top\"> One and two-dimensional interpolation in tables. CombiTimeTable is available<br>
           in Modelica.Blocks.Sources (from ModelicaAdditions.Tables)</td></tr>
  <tr><td valign=\"top\"><a href=\"Modelica://Modelica.Mechanics.MultiBody\">Modelica.Mechanics.MultiBody</a></td>
      <td valign=\"top\"> Components to model the movement of 3-dimensional mechanical systems. Contains <br>
           body, joint, force and sensor components, analytic handling of kinematic loops,<br>
           force elements with mass, series/parallel connection of 3D force elements etc.<br>
           (from MultiBody 1.0 where the new signal connectors are used;<br>
           makes the ModelicaAdditions.MultiBody library obsolet)</td></tr>
</table>
<p>
As a result, the ModelicaAdditions library is obsolet, because all components
are either included in the Modelica library or are replaced by much more
powerful libraries (MultiBody, StateGraph).
</p>
<p>
The following <b>new components</b> have been added to <b>existing</b> libraries.
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Logical.</b></td></tr>
  <tr><td valign=\"top\">Pre</td>
      <td valign=\"top\">y = pre(u): Breaks algebraic loops by an infinitesimal small <br>
          time delay (event iteration continues until u = pre(u))</td></tr>
  <tr><td valign=\"top\">Edge</td>
      <td valign=\"top\">y = edge(u): Output y is true, if the input u has a rising edge </td></tr>
  <tr><td valign=\"top\">FallingEdge</td>
      <td valign=\"top\">y = edge(not u): Output y is true, if the input u has a falling edge </td></tr>
  <tr><td valign=\"top\">Change</td>
      <td valign=\"top\">y = change(u): Output y is true, if the input u has a rising or falling edge </td></tr>
  <tr><td valign=\"top\">GreaterEqual</td>
      <td valign=\"top\">Output y is true, if input u1 is greater or equal as input u2 </td></tr>
  <tr><td valign=\"top\">Less</td>
      <td valign=\"top\">Output y is true, if input u1 is less as input u2 </td></tr>
  <tr><td valign=\"top\">LessEqual</td>
      <td valign=\"top\">Output y is true, if input u1 is less or equal as input u2 </td></tr>
  <tr><td valign=\"top\">Timer</td>
      <td valign=\"top\">Timer measuring the time from the time instant where the <br>
          Boolean input became true </td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Math.</b></td></tr>
  <tr><td valign=\"top\">BooleanToReal</td>
      <td valign=\"top\">Convert Boolean to Real signal</td></tr>
  <tr><td valign=\"top\">BooleanToInteger</td>
      <td valign=\"top\">Convert Boolean to Integer signal</td></tr>
  <tr><td valign=\"top\">RealToBoolean</td>
      <td valign=\"top\">Convert Real to Boolean signal</td></tr>
  <tr><td valign=\"top\">IntegerToBoolean</td>
      <td valign=\"top\">Convert Integer to Boolean signal</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Sources.</b></td></tr>
  <tr><td valign=\"top\">RealExpression</td>
      <td valign=\"top\">Set output signal to a time varying Real expression</td></tr>
  <tr><td valign=\"top\">IntegerExpression</td>
      <td valign=\"top\">Set output signal to a time varying Integer expression</td></tr>
  <tr><td valign=\"top\">BooleanExpression</td>
      <td valign=\"top\">Set output signal to a time varying Boolean expression</td></tr>
  <tr><td valign=\"top\">BooleanTable</td>
      <td valign=\"top\">Generate a Boolean output signal based on a vector of time instants</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.MultiBody.</b></td></tr>
  <tr><td valign=\"top\">Frames.from_T2</td>
      <td valign=\"top\">Return orientation object R from transformation matrix T and its derivative der(T)</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\">LinearSpeedDependentTorque</td>
      <td valign=\"top\">Linear dependency of torque versus speed (acts as load torque)</td></tr>
  <tr><td valign=\"top\">QuadraticSpeedDependentTorque</td>
      <td valign=\"top\">Quadratic dependency of torque versus speed (acts as load torque)</td></tr>
  <tr><td valign=\"top\">ConstantTorque</td>
      <td valign=\"top\">Constant torque, not dependent on speed (acts as load torque)</td></tr>
  <tr><td valign=\"top\">ConstantSpeed</td>
      <td valign=\"top\">Constant speed, not dependent on torque (acts as load torque)</td></tr>
  <tr><td valign=\"top\">TorqueStep</td>
      <td valign=\"top\">Constant torque, not dependent on speed (acts as load torque)</td></tr>
</table>
<p>
The following <b>bugs</b> have been <b>corrected</b>:
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.MultiBody.Forces.</b></td></tr>
  <tr><td valign=\"top\">LineForceWithMass<br>
          Spring</td>
      <td valign=\"top\">If mass of the line force or spring component is not zero, the<br>
          mass was (implicitly) treated as \"mass*mass\" instead of as \"mass\"</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\">Speed</td>
      <td valign=\"top\">If parameter exact=<b>false</b>, the filter was wrong<br>
          (position was filtered and not the speed input signal)</td></tr>
</table> 
<p>
Other changes:
</p>
<ul>
<li> All connectors are now smaller in the diagram layer. This gives
     a nicer layout when connectors and components are used together
     in a diagram</li>
<li> Default instance names are defined for all connectors, according
     to a new annotation introduced in Modelica 2.1. For example,
     when dragging connector \"Flange_a\" from the Rotational library to
     the diagram layer, the default connector instance name is
     \"flange_a\" and not \"Flange_a1\".</li>
<li> The Modelica.Mechanics.Rotational connectors are changed from
     a square to a circle</li>
<li> The Modelica.Mechanics.Translational connectors are changed from a
     green to a dark green color in order that connection lines
     can be better seen, especially when printed.</li>
<li> The Modelica.Blocks connectors for Real signals are changed from
     blue to dark blue in order to distinguish them from electrical signals.</li>
</ul>
</html>
"));
  end Version_2_1;
    
  class Version_1_6 "Version 1.6 (June 21, 2004)" 
      
      annotation (Documentation(info="<html>

<p> Added 1 new library (Electrical.MultiPhase), 17 new components, 
    improved 3 existing components
    in the Modelica.Electrical library and improved 3 types
    in the Modelica.SIunits library. Furthermore,
    this User's Guide has been started. The improvements
    in more detail:
</p>
<p>
<b>New components</b>
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Basic.</b></td></tr>
  <tr><td valign=\"top\">SaturatingInductor</td>
      <td valign=\"top\">Simple model of an inductor with saturation</td></tr>
  <tr><td valign=\"top\">VariableResistor</td>
      <td valign=\"top\">Ideal linear electrical resistor with variable resistance</td></tr>
  <tr><td valign=\"top\">VariableConductor</td>
      <td valign=\"top\">Ideal linear electrical conductor with variable conductance</td></tr>
  <tr><td valign=\"top\">VariableCapacitor</td>
      <td valign=\"top\">Ideal linear electrical capacitor with variable capacitance</td></tr>
  <tr><td valign=\"top\">VariableInductor</td>
      <td valign=\"top\">Ideal linear electrical inductor with variable inductance</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Semiconductors.</b></td></tr>
  <tr><td valign=\"top\">HeadingDiode</td>
      <td valign=\"top\">Simple diode with heating port</td></tr>
  <tr><td valign=\"top\">HeadingNMOS</td>
      <td valign=\"top\">Simple MOS Transistor with heating port</td></tr>
  <tr><td valign=\"top\">HeadingPMOS</td>
      <td valign=\"top\">Simple PMOS Transistor with heating port</td></tr>
  <tr><td valign=\"top\">HeadingNPN</td>
      <td valign=\"top\">Simple NPN BJT according to Ebers-Moll with heating port</td></tr>
  <tr><td valign=\"top\">HeadingPNP</td>
      <td valign=\"top\">Simple PNP BJT according to Ebers-Moll with heating port</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.MultiPhase</b><br>
      A new library for multi-phase electrical circuits</td></tr>
</table>
<p>
<b>New examples</b>
</p>
<p>
The following new examples have been added to 
Modelica.Electrical.Analog.Examples:
</p>
<p>
CharacteristicThyristors, 
CharacteristicIdealDiodes,
HeatingNPN_OrGate,
HeatingMOSInverter,
HeatingRectifier,
Rectifier,
ShowSaturatingInductor
ShowVariableResistor
</p>
<p>
<b>Improved existing components</b>
</p>
<p>In the library Modelica.Electrical.Analog.Ideal,
   a knee voltage has been introduced for the components
   IdealThyristor, IdealGTOThyristor, IdealDiode in order
   that the approximation of these ideal elements is improved
   with not much computational effort.</p>
<p> In the Modelica.SIunits library, the following changes
    have been made:</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\">Inductance</td>
      <td valign=\"top\">min=0 removed</td></tr>
  <tr><td valign=\"top\">SelfInductance</td>
      <td valign=\"top\">min=0 added</td></tr>
  <tr><td valign=\"top\">ThermodynamicTemperature</td>
      <td valign=\"top\">min=0 added</td></tr>
</table>
</html>
"));
  end Version_1_6;
    
  class Version_1_5 "Version 1.5 (Dec. 16, 2002)" 
      
      annotation (Documentation(info="<html>

<p> Added 55 new components. In particular, added new package
    <b>Thermal.HeatTransfer</b> for modeling of lumped
    heat transfer, added model <b>LossyGear</b> in Mechanics.Rotational
    to model gear efficiency and bearing friction according to a new
    theory in a robust way, added 10 new models in Electrical.Analog and 
    added several other new models and improved existing models. 
</p>
<p>
<b>New components</b>
</p>
<table border=\"1\" cellspacing=0 cellpadding=2>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.</b></td></tr>
  <tr><td valign=\"top\">Continuous.Der</td><td valign=\"top\">Derivative of input (= analytic differentations)</td></tr>
  <tr><td valign=\"top\"><b><i>Examples</i></b></td><td valign=\"top\">Demonstration examples of the components of this package</td></tr>
  <tr><td valign=\"top\">Nonlinear.VariableLimiter</td><td valign=\"top\">Limit the range of a signal with variable limits</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Interfaces.</b></td></tr>
  <tr><td valign=\"top\">RealPort</td><td valign=\"top\">Real port (both input/output possible)</td></tr>
  <tr><td valign=\"top\">IntegerPort</td><td valign=\"top\">Integer port (both input/output possible)</td></tr>
  <tr><td valign=\"top\">BooleanPort</td><td valign=\"top\">Boolean port (both input/output possible)</td></tr>
  <tr><td valign=\"top\">SIMO</td><td valign=\"top\">Single Input Multiple Output continuous control block</td></tr>
  <tr><td valign=\"top\">IntegerBlockIcon</td><td valign=\"top\">Basic graphical layout of Integer block</td></tr>
  <tr><td valign=\"top\">IntegerMO</td><td valign=\"top\">Multiple Integer Output continuous control block</td></tr>
  <tr><td valign=\"top\">IntegerSignalSource</td><td valign=\"top\">Base class for continuous Integer signal source</td></tr>
  <tr><td valign=\"top\">IntegerMIBooleanMOs</td><td valign=\"top\">Multiple Integer Input Multiple Boolean Output continuous control block with same number of inputs and outputs</td></tr>
  <tr><td valign=\"top\">BooleanMIMOs</td><td valign=\"top\">Multiple Input Multiple Output continuous control block with same number of inputs and outputs of boolean type</td></tr>
  <tr><td valign=\"top\"><b><i>BusAdaptors</i></b></td><td valign=\"top\">Components to send signals to the bus or receive signals from the bus</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Math.</b></td></tr>
  <tr><td valign=\"top\">RealToInteger</td><td valign=\"top\">Convert real to integer signals</td></tr>
  <tr><td valign=\"top\">IntegerToReal</td><td valign=\"top\">Convert integer to real signals</td></tr>
  <tr><td valign=\"top\">Max</td><td valign=\"top\">Pass through the largest signal</td></tr>
  <tr><td valign=\"top\">Min</td><td valign=\"top\">Pass through the smallest signal</td></tr>
  <tr><td valign=\"top\">Edge</td><td valign=\"top\">Indicates rising edge of boolean signal</td></tr>
  <tr><td valign=\"top\">BooleanChange</td><td valign=\"top\">Indicates boolean signal changing</td></tr>
  <tr><td valign=\"top\">IntegerChange</td><td valign=\"top\">Indicates integer signal changing</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Blocks.Sources.</b></td></tr>
  <tr><td valign=\"top\">IntegerConstant</td><td valign=\"top\">Generate constant signals of type Integer</td></tr>
  <tr><td valign=\"top\">IntegerStep</td><td valign=\"top\">Generate step signals of type Integer</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Basic.</b></td></tr>
  <tr><td valign=\"top\">HeatingResistor</td><td valign=\"top\">Temperature dependent electrical resistor</td></tr>
  <tr><td valign=\"top\">OpAmp</td><td valign=\"top\">Simple nonideal model of an OpAmp with limitation</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Ideal.</b></td></tr>
  <tr><td valign=\"top\">IdealCommutingSwitch</td><td valign=\"top\">Ideal commuting switch</td></tr>
  <tr><td valign=\"top\">IdealIntermediateSwitch</td><td valign=\"top\">Ideal intermediate switch</td></tr>
  <tr><td valign=\"top\">ControlledIdealCommutingSwitch</td><td valign=\"top\">Controlled ideal commuting switch</td></tr>
  <tr><td valign=\"top\">ControlledIdealIntermediateSwitch</td><td valign=\"top\">Controlled ideal intermediate switch</td></tr>
  <tr><td valign=\"top\">IdealOpAmpLimited</td><td valign=\"top\">Ideal operational amplifier with limitation</td></tr>
  <tr><td valign=\"top\">IdealOpeningSwitch</td><td valign=\"top\">Ideal opener</td></tr>
  <tr><td valign=\"top\">IdealClosingSwitch</td><td valign=\"top\">Ideal closer</td></tr>
  <tr><td valign=\"top\">ControlledIdealOpeningSwitch</td><td valign=\"top\">Controlled ideal opener</td></tr>
  <tr><td valign=\"top\">ControlledIdealClosingSwitch</td><td valign=\"top\">Controlled ideal closer</td></tr>
  
  <tr><td colspan=\"2\"><b>Modelica.Electrical.Analog.Lines.</b></td></tr>
  <tr><td valign=\"top\">TLine1</td><td valign=\"top\">Lossless transmission line (Z0, TD)</td></tr>
  <tr><td valign=\"top\">TLine2</td><td valign=\"top\">Lossless transmission line (Z0, F, NL)</td></tr>
  <tr><td valign=\"top\">TLine2</td><td valign=\"top\">Lossless transmission line (Z0, F)</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Icons.</b></td></tr>
  <tr><td valign=\"top\">Function</td><td valign=\"top\">Icon for a function</td></tr>
  <tr><td valign=\"top\">Record</td><td valign=\"top\">Icon for a record</td></tr>
  <tr><td valign=\"top\">Enumeration</td><td valign=\"top\">Icon for an enumeration</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Math.</b></td></tr>
  <tr><td valign=\"top\">tempInterpol2</td><td valign=\"top\">temporary routine for vectorized linear interpolation (will be removed)</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.Mechanics.Rotational.</b></td></tr>
  <tr><td valign=\"top\">Examples.LossyGearDemo1</td><td valign=\"top\">Example to show that gear efficiency may lead to stuck motion</td></tr>
  <tr><td valign=\"top\">Examples.LossyGearDemo2</td><td valign=\"top\">Example to show combination of LossyGear and BearingFriction</td></tr>
  <tr><td valign=\"top\">LossyGear</td><td valign=\"top\">Gear with mesh efficiency and bearing friction (stuck/rolling possible)</td></tr>
  <tr><td valign=\"top\">Gear2</td><td valign=\"top\">Realistic model of a gearbox (based on LossyGear)</td></tr>
  <tr><td colspan=\"2\"><b>Modelica.SIunits.</b></td></tr>
  <tr><td valign=\"top\"><b><i>Conversions</i></b></td><td valign=\"top\">Conversion functions to/from non SI units and type definitions of non SI units</td></tr>
  <tr><td valign=\"top\">EnergyFlowRate</td><td valign=\"top\">Same definition as <i>Power</i></td></tr>
  <tr><td valign=\"top\">EnthalpyFlowRate</td><td valign=\"top\"><tt>Real (final quantity=\"EnthalpyFlowRate\", final unit=\"W\")</tt></td></tr>
  <tr><td colspan=\"2\"><b>Modelica.</b></td></tr>
  <tr><td valign=\"top\"><b><i>Thermal.HeatTransfer</i></b></td><td valign=\"top\">1-dimensional heat transfer with lumped elements</td></tr>
  <tr><td colspan=\"2\"><b>ModelicaAdditions.Blocks.Discrete.</b></td></tr>
  <tr><td valign=\"top\">TriggeredSampler</td><td valign=\"top\">Triggered sampling of continuous signals</td></tr>
  <tr><td valign=\"top\">TriggeredMax</td><td valign=\"top\">Compute maximum, absolute value of continuous signal at trigger instants</td></tr>
  <tr><td colspan=\"2\"><b>ModelicaAdditions.Blocks.Logical.Interfaces.</b></td></tr>
  <tr><td valign=\"top\">BooleanMIRealMOs</td><td valign=\"top\">Multiple Boolean Input Multiple Real Output continuous control block with same number of inputs and outputs</td></tr>
  <tr><td valign=\"top\">RealMIBooleanMOs</td><td valign=\"top\">Multiple Real Input Multiple Boolean Output continuous control block with same number of inputs and outputs</td></tr>
  <tr><td colspan=\"2\"><b>ModelicaAdditions.Blocks.Logical.</b></td></tr>
  <tr><td valign=\"top\">TriggeredTrapezoid</td><td valign=\"top\">Triggered trapezoid generator</td></tr>
  <tr><td valign=\"top\">Hysteresis</td><td valign=\"top\">Transform Real to Boolean with Hysteresis</td></tr>
  <tr><td valign=\"top\">OnOffController</td><td valign=\"top\">On-off controller</td></tr>
  <tr><td valign=\"top\">Compare</td><td valign=\"top\">True, if signal of inPort1 is larger than signal of inPort2</td></tr>
  <tr><td valign=\"top\">ZeroCrossing</td><td valign=\"top\">Trigger zero crossing of input signal</td></tr>
  <tr><td colspan=\"2\"><b>ModelicaAdditions.</b></td></tr>
  <tr><td valign=\"top\">Blocks.Multiplexer.Extractor</td><td valign=\"top\">Extract scalar signal out of signal vector dependent on IntegerRealInput index</td></tr>
  <tr><td valign=\"top\">Tables.CombiTable1Ds</td><td valign=\"top\">Table look-up in one dimension (matrix/file) with only single input</td></tr>
</table>
<p>
<b>Package-specific Changes</b>
</p>
<ul>
  <li>All example models made <b>encapsulated</b></li>
  <li>Upper case constants changed to lower case (cf. Modelica.Constants)</li>
  <li>Introduced Modelica.SIunits.Wavelength due to typo \"Wavelenght\"</li>
  <li>Introduced ModelicaAdditions.Blocks.Logical.Interfaces.Comparison due to typo \"Comparision\"</li>
  <li>Changed these components of *.Blocks to <tt>block</tt> class, which have not been already of block type</li>
  <li>Changed *.Interfaces.RelativeSensor to <tt>partial</tt> models</li>
</ul>
<p>
<b>Class-specific Changes</b>
</p>
<p>
<i>Modelica.SIunits</i>
</p>
<p>Removed <tt>final</tt> from quantity attribute for <i>Mass</i> and <i>MassFlowRate</i>.</p>
<p>
<i>Modelica.Blocks.Math.Sum</i>
</p>
<p>Implemented avoiding algorithm section, which would lead to expensive function calls.</p>
<p><i>Modelica.Blocks.Sources.Step</i></p>
<pre>
  block Step \"Generate step signals of type Real\"
    parameter Real height[:]={1} \"Heights of steps\";
<b> // parameter Real offset[:]={0} \"Offsets of output signals\";
 // parameter SIunits.Time startTime[:]={0} \"Output = offset for time < startTime\";
 // extends Interfaces.MO          (final nout=max([size(height, 1); size(offset, 1); size(startTime, 1)]));
    extends Interfaces.SignalSource(final nout=max([size(height, 1); size(offset, 1); size(startTime, 1)]));</b>
</pre>
<p><i>Modelica.Blocks.Sources.Exponentials</i></p>
<p>Replaced usage of built-in function <tt>exp</tt> by Modelica.Math.exp.</p>
<p><i>Modelica.Blocks.Sources.TimeTable</i></p>
<p>Interface definition changed from</p>
<pre>    parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] \"Table matrix (time = first column)\";
</pre>
<p>to</p>
<pre>    parameter Real table[:, <b>2</b>]=[0, 0; 1, 1; 2, 4] \"Table matrix (time = first column)\";
</pre>
<p>Did the same for subfunction <i>getInterpolationCoefficients</i>.</p>
<p>Bug in <i>getInterpolationCoefficients</i> for startTime <> 0 fixed:</p>
<pre>        ...
        end if;
      end if;
      <b>// Take into account startTime \"a*(time - startTime) + b\"
      b := b - a*startTime;</b>
    end getInterpolationCoefficients;
</pre>
<p><i>Modelica.Blocks.Sources.BooleanStep</i></p>
<pre>
  block BooleanStep \"Generate step signals of type Boolean\"
    parameter SIunits.Time startTime[:]={0} \"Time instants of steps\";
    <b>parameter Boolean startValue[size(startTime, 1)]=fill(false, size(startTime, 1)) \"Output before startTime\";</b>
    extends Interfaces.BooleanSignalSource(final nout=size(startTime, 1));
  equation
    for i in 1:nout loop
 <b>//   outPort.signal[i] = time >= startTime[i];
      outPort.signal[i] = if time >= startTime[i] then not startValue[i] else startValue[i];</b>
    end for;
  end BooleanStep;
</pre>
<p>
<i>Modelica.Electrical.Analog</i></p>
<p>Corrected table of values and default for Beta by dividing them by 1000
(consistent with the values used in the NAND-example model):
</p>
<ul>
<li>Semiconductors.PMOS</li>
<li>Semiconductors.NMOS</li>
</ul>
<p>Corrected parameter defaults, unit and description for TrapezoidCurrent.
This makes the parameters consistent with their use in the model.
Models specifying parameter values are not changed.
Models not specifying parameter values did not generate trapezoids previously.
</p>
<p>Icon layer background changed from transparent to white:</p>
<ul>
  <li>Basic.Gyrator</li>
  <li>Basic.EMF</li>
  <li>Ideal.Idle</li>
  <li>Ideal.Short</li>
</ul>
<p>Basic.Transformer: Replaced invalid escape characters '\\ ' and '\\[newline]' in documentation by '|'.</p>
<p><i>Modelica.Mechanics.Rotational</i></p>
<p>Removed arrows and names documentation from flanges in diagram layer</p>
<p><i>Modelica.Mechanics.Rotational.Interfaces.FrictionBase</i></p>
<p><i>Modelica.Mechanics.Rotational.Position</i></p>
<p>Replaced <tt>reinit</tt> by <tt>initial equation</tt></p>
<p><i>Modelica.Mechanics.Rotational.RelativeStates</i></p>
<p>Bug corrected by using modifier <tt>stateSelect = StateSelect.prefer</tt> as implementation</p>
<p><i>Modelica.Mechanics.Translational.Interfaces.flange_b</i></p>
<p>Attribute <b>fillColor=7</b> added to Rectangle on Icon layer, i.e. it is now
filled with white and not transparent any more.</p>
<p><i>Modelica.Mechanics.Translational.Position</i></p>
<p>Replaced <tt>reinit</tt> by <tt>initial equation</tt></p>
<p><i>Modelica.Mechanics.Translational.RelativeStates</i></p>
<p>Bug corrected by using modifier <tt>stateSelect = StateSelect.prefer</tt> as implementation</p>
<p><i>Modelica.Mechanics.Translational.Stop</i></p>
<p>Use <tt>stateSelect = StateSelect.prefer</tt>.</p>
<p><i>Modelica.Mechanics.Translational.Examples.PreLoad</i></p>
<p>Improved documentation and coordinate system used for example.</p>
<p><i>ModelicaAdditions.Blocks.Nonlinear.PadeDelay</i></p>
<p>Replaced <tt>reinit</tt> by <tt>initial equation</tt></p>
<p><i>ModelicaAdditions.HeatFlow1D.Interfaces</i></p>
<p>Definition of connectors <i>Surface_a</i> and <i>Surface_b</i>:<br>
<tt>flow SIunits.HeatFlux q;</tt> changed to <tt>flow SIunits.HeatFlowRate q;</tt></p>
<p><i>MultiBody.Parts.InertialSystem</i></p>
<p>Icon corrected.</p>
</html>
"));
  end Version_1_5;
    
  class Version_1_4 "Version 1.4 (June 28, 2001)" 
      
  annotation (Documentation(info="<html>

<ul>
<li>Several minor bugs fixed. </li>
<li>New models:<br>
    Modelica.Blocks.Interfaces.IntegerRealInput/IntegerRealOutput,<br>
    Modelica.Blocks.Math.TwoInputs/TwoOutputs<br>
    Modelica.Electrical.Analog.Ideal.IdealOpAmp3Pin,<br>
    Modelica.Mechanics.Rotational.Move,<br>
    Modelica.Mechanics.Translational.Move.<br>
    </li>
</ul>
<hr>
<h4>Version 1.4.1beta1 (February 12, 2001)</h4>
<p> Adapted to Modelica 1.4</p>
<hr>
<h4>Version 1.3.2beta2 (June 20, 2000)</h4>
<ul>
    <li>New subpackage Modelica.Mechanics.<b>Translational</b></li>
    <li>Changes to Modelica.Mechanics.<b>Rotational</b>:<br>
       New elements:
<pre>
   IdealGearR2T    Ideal gear transforming rotational in translational motion.
   Position        Forced movement of a flange with a reference angle
                   given as input signal
   RelativeStates  Definition of relative state variables
</pre>
</li>
    <li>Changes to Modelica.<b>SIunits</b>:<br>
      Introduced new types:<br>
      type Temperature = ThermodynamicTemperature;<br>
      types DerDensityByEnthalpy, DerDensityByPressure,
      DerDensityByTemperature, DerEnthalpyByPressure,
      DerEnergyByDensity, DerEnergyByPressure<br>
      Attribute \"final\" removed from min and max values
      in order that these values can still be changed to narrow
      the allowed range of values.<br>
      Quantity=\"Stress\" removed from type \"Stress\", in order
      that a type \"Stress\" can be connected to a type \"Pressure\".</li>
    <li>Changes to Modelica.<b>Icons</b>:<br>
       New icons for motors and gearboxes.</li>
    <li>Changes to Modelica.<b>Blocks.Interfaces</b>:<br>
       Introduced a replaceable signal type into
       Blocks.Interfaces.RealInput/RealOutput:
<pre>
   replaceable type SignalType = Real
</pre>
       in order that the type of the signal of an input/output block
       can be changed to a physical type, for example:
<pre>
   Sine sin1(outPort(redeclare type SignalType=Modelica.SIunits.Torque))
</pre>
</li>
</ul>
<hr>
<h4>Version 1.3.1 (Dec. 13, 1999)</h4>
<p>
First official release of the library.
</p>
</html>
"));
  end Version_1_4;
  end ReleaseNotes;
  
  class Contact "Contact" 
    
    annotation (Documentation(info="<html>

<dl>
<dt>The development of the Modelica package is organized by<br>&nbsp;</dt>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
    Institut f&uuml;r Robotik und Mechatronik<br> 
    Abteilung f&uuml;r Entwurfsorientierte Regelungstechnik<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    Germany<br>
    email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br></dd>
</dl>
<p>
This library is developed by several people from
the Modelica Association, see
<a href=\"http://www.Modelica.org\">http://www.Modelica.org</a>.
In particular, the following people have directly contributed
(many more people have contributed to the design):
</p>
<table border=1 cellspacing=0 cellpadding=2>
  <tr><td valign=\"top\"><b>Peter Beater</b> </td
      <td valign=\"top\"> University of Paderborn, Germany</td>
      <td valign=\"top\"> Modelica.Mechanics.Translational </td>
  </tr>
  <tr><td valign=\"top\"><b>Dag Br&uuml;ck</b> </td
      <td valign=\"top\"> Dynasim AB, Lund, Sweden</td>
      <td valign=\"top\"> Modelica.Utilities</td>
  </tr>

  <tr><td valign=\"top\"><b>Francesco Casella</b> </td
      <td valign=\"top\"> Politecnico di Milano, Milano, Italy</td>
      <td valign=\"top\"> Modelica.Media</td>
  </tr>

  <tr><td valign=\"top\"><b>Christoph Clauss</b> </td
      <td valign=\"top\"> Fraunhofer Institute for Integrated Circuits,<br> Dresden, Germany</td>
      <td valign=\"top\"> Modelica.Electrical.Analog<br> 
           Modelica.Electrical.Digital</td>
  </tr>

  <tr><td valign=\"top\"><b>Jonas Eborn</b> </td
      <td valign=\"top\"> Modelon AB, Lund, Sweden</td>
      <td valign=\"top\"> Modelica.Media</td>
  </tr>

  <tr><td valign=\"top\"><b>Hilding Elmqvist</b> </td
      <td valign=\"top\"> Dynasim AB, Lund, Sweden</td>
      <td valign=\"top\"> Modelica.Mechanics.MultiBody<br>
           Modelica.Media<br>
           Modelica.StateGraph<br>
           Modelica.Utilities<br>
           Conversion from 1.6 to 2.0</td>
  </tr>

  <tr><td valign=\"top\"><b>R&uuml;diger Franke</b> </td
      <td valign=\"top\"> ABB Corporate Research,<br>Ladenburg, German</td>
      <td valign=\"top\"> Modelica.Media</td>
  </tr>

  <tr><td valign=\"top\"><b>Anton Haumer</b> </td
      <td valign=\"top\"> Consultant, St.Andrae-Woerdern,<br>Austria</td>
      <td valign=\"top\"> Modelica.Electrical.Machines<br>
           Modelica.Electrical.Multiphase<br>
           Modelica.Mechanics.Rotational<br>
           Modelica.Thermal.FluidHeatFlow</td>
  </tr>

  <tr><td valign=\"top\"><b>Hans-Dieter Joos</b> </td
      <td valign=\"top\"> Institute of Robotics and Mechatronics<br>
           DLR, German Aerospace Center, <br>
           Oberpfaffenhofen, Germany</td>
      <td valign=\"top\"> Modelica.Math.Matrices</td>
  </tr>

  <tr><td valign=\"top\"><b>Christian Kral</b> </td
      <td valign=\"top\"> arsenal research, Vienna, Austria</td>
      <td valign=\"top\"> Modelica.Electrical.Machines<br>
           Modelica.Thermal.FluidHeatFlow</td>
  </tr>

  <tr><td valign=\"top\"><b>Sven Erik Mattsson</b> </td
      <td valign=\"top\"> Dynasim AB, Lund, Sweden</td>
      <td valign=\"top\"> Modelica.Mechanics.MultiBody</td>
  </tr>
  <tr><td valign=\"top\"><b>Hans Olsson</b> </td
      <td valign=\"top\"> Dynasim AB, Lund, Sweden</td>
      <td valign=\"top\"> Modelica.Blocks<br>
           Modelica.Math.Matrices<br>
           Modelica.Utilities<br>
           Conversion from 1.6 to 2.0</td>
  </tr>
  <tr><td valign=\"top\"><b>Martin Otter</b> </td
      <td valign=\"top\"> Institute of Robotics and Mechatronics<br>
           DLR, German Aerospace Center, <br>
           Oberpfaffenhofen, Germany</td>
      <td valign=\"top\"> Modelica.Blocks<br> 
           Modelica.Mechanics.MultiBody<br>
           Modelica.Mechanics.Rotational<br>
           Modelica.Math<br>
           Modelica.Media<br>
           Modelica.SIunits<br>
           Modelica.StateGraph<br>
           Modelica.Thermal<br>
           Modelica.Utilities<br>
           ModelicaReference<br>
           Conversion from 1.6 to 2.0</td>
  </tr>

  <tr><td valign=\"top\"><b>Katrin Pr&ouml;l&szlig;</b> </td
      <td valign=\"top\"> Department of Technical Thermodynamics,<br>
           Technical University Hamburg-Harburg,<br>Germany</td>
      <td valign=\"top\"> Modelica.Media</td>
  </tr>

  <tr><td valign=\"top\"><b>Christoph C. Richter</b> </td
      <td valign=\"top\"> Institut f�r Thermodynamik, <br>
           Technische Universit&auml;t Braunschweig, <br>
           Germany</td>
      <td valign=\"top\"> Modelica.Media</td>
  </tr>

  <tr><td valign=\"top\"><b>Andr&eacute; Schneider</b> </td
      <td valign=\"top\"> Fraunhofer Institute for Integrated Circuits,<br> Dresden, Germany</td>
      <td valign=\"top\"> Modelica.Electrical.Analog<br> 
           Modelica.Electrical.Digital</td>
  </tr>
  <tr><td valign=\"top\"><b>Christian Schweiger</b> </td
      <td valign=\"top\"> Institute of Robotics and Mechatronics,<br>
           DLR, German Aerospace Center,<br> 
           Oberpfaffenhofen, Germany</td>
      <td valign=\"top\"> Modelica.Mechanics.Rotational<br>
           ModelicaReference<br>
           Conversion from 1.6 to 2.0</td>
  </tr>
  <tr><td valign=\"top\"><b>Michael Tiller</b> </td
      <td valign=\"top\"> Emmeskay, Inc., Dearborn, MI, U.S.A, <br>
           (previously Ford Motor Company, Dearborn) </td>
      <td valign=\"top\"> Modelica.Media<br>
           Modelica.Thermal</td>
  </tr>
  <tr><td valign=\"top\"><b>Hubertus Tummescheit</b> </td
      <td valign=\"top\"> Modelon AB, Lund, Sweden </td>
      <td valign=\"top\"> Modelica.Media<br>
           Modelica.Thermal</td>
  </tr>
  <tr><td valign=\"top\"><b>Nico Walter</b> </td
      <td valign=\"top\"> Master thesis at HTWK Leipzig<br>
           (Prof. R. M&uuml;ller) and<br>
           DLR Oberpfaffenhofen, Germany</td>
      <td valign=\"top\"> Modelica.Math.Matrices</td>
  </tr>
</table>
</html>
"));
    
  end Contact;
  
  class ModelicaLicense "Modelica License (Version 1.1 of June 30, 2000)" 
    
    annotation (Documentation(info="<html>

<p>Redistribution and use in source and binary forms, with or without
modification are permitted, provided that the following conditions are met:
<ol>
<li>
The author and copyright notices in the source files, these license conditions
and the disclaimer below are (a) retained and (b) reproduced in the documentation
provided with the distribution.</li>
<li>
Modifications of the original source files are allowed, provided that a
prominent notice is inserted in each changed file and the accompanying
documentation, stating how and when the file was modified, and provided
that the conditions under (1) are met.</li>
<li>
It is not allowed to charge a fee for the original version or a modified
version of the software, besides a reasonable fee for distribution and support.
Distribution in aggregate with other (possibly commercial) programs
as part of a larger (possibly commercial) software distribution is permitted,
provided that it is not advertised as a product of your own.</li>
</ol>

<h4>Disclaimer</h4>
<p>The software (sources, binaries, etc.) in their original or in a modified
form are provided
\"as is\" and the copyright holders assume no responsibility for its contents
what so ever. Any express or implied warranties, including, but not
limited to, the implied warranties of merchantability and fitness for a
particular purpose are <b>disclaimed</b>. <b>In no event</b> shall the
copyright holders, or any party who modify and/or redistribute the package,
<b>be liable</b> for any direct, indirect, incidental, special, exemplary, or
consequential damages, arising in any way out of the use of this software,
even if advised of the possibility of such damage.
</p>
</html>
"));
    
  end ModelicaLicense;
end UsersGuide;
end Modelica;