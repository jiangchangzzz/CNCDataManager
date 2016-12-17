within Modelica;
package StateGraph 
  "Library of hierarchical state machine components to model discrete event and reactive systems" 
  
extends Modelica.Icons.Library2;
  
annotation (
  version="0.87",
  versionDate="2004-06-23",
  preferedView="info",
  Documentation(info="<html>
<p>
Library <b>StateGraph</b> is a <b>free</b> Modelica package providing
components to model <b>discrete event</b> and <b>reactive</b>
systems in a convenient
way. It is based on the JGraphChart method and
takes advantage of Modelica features for
the \"action\" language. JGraphChart is a further development of 
Grafcet to include elements of StateCharts that are not present
in Grafcet/Sequential Function Charts. Therefore, the StateGraph
library has a similar modeling power as StateCharts but avoids
some deficiences of StateCharts.
</p>
<p>
For an introduction, have especially a look at:
</p>
<ul>
<li> <a href=\"Modelica://Modelica.StateGraph.UsersGuide\">StateGraph.UsersGuide</a>
     discusses the most important aspects how to use this library.</li>
<li> <a href=\"Modelica://Modelica.StateGraph.Examples\">StateGraph.Examples</a>
     contains examples that demonstrate the usage of this library.</li>
</ul>
<p>
A typical model generated with this library is shown
in the next figure where on the left hand side a two-tank 
system with a tank controller and on the right hand side the
top-level part of the tank controller as a StateGraph is shown:
</p>
<p>
<img src=\"./Images/StateGraph/Examples/ControlledTanks1_small.png\"> 
<img src=\"./Images/StateGraph/Examples/ControlledTanks2_small.png\">
</p>
<p>
The unique feature of the StateGraph library with respect to JGraphCharts,
Grafcet, Sequential Function Charts, and StateCharts, is Modelica's
\"single assignment rule\" that requires that every variable is defined
by exactly one equation. This leads to a different \"action\" definition
as in these formalisms. The advantage is that the translator can either
determine a useful evaluation sequence by equation sorting or
reports an error if this is not possible, e.g., because a model
would lead to a non-determinism or to a dead-lock. As a side effect,
this leads also to simpler and more easier to understand models and
global variables are no longer needed (whereas in JGraphCharts,
Grafcet, Sequential Function Charts and StateCharts global variables
are nearly always needed).
</p>
<p>
The StateGraph library is currently available in a beta release.
The available components will most likely not be changed for the
release version. It is planned to improve the convenience of
building models with the StateGraph library for the release version
(this may require to introduce some additional annotations).
It is planned to include the StateGraph library in the
Modelica standard library.
It is most useful to combine this libray with the Modelica libraries
</p>
<ul>
<li><b>Modelica.Blocks.Logical</b> that provides  
    components available in PLCs (programmable logic controllers). </li>
<li><b>UserInteraction</b> that provides components to 
    interactively communicate with models in a running simulation.</li>
</ul>
 
<p>
Copyright &copy; 1998-2007, Modelica Association and DLR
</p>
<p>
<i>This Modelica package is <b>free</b> software; it can be redistributed and/or modified
under the terms of the <b>Modelica license</b>, see the license conditions
and the accompanying <b>disclaimer</b> 
<a href=\"Modelica://Modelica.UsersGuide.ModelicaLicense\">here</a>.</i>
</p><br>
 
</HTML>
"),
  Window(
    x=0.05,
    y=0.06,
    width=0.29,
    height=0.59,
    library=1,
    autolayout=1),
    Icon(
      Rectangle(extent=[-88,-20; -50,-54],  style(color=0, rgbcolor={0,0,0})),
      Line(points=[-50,-38; -24,-38],   style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0},
          fillPattern=1)),
      Polygon(points=[-24,-32; -12,-38; -24,-44; -24,-32],   style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0})),
      Line(points=[-12,-6; -12,-76],
                                   style(color=0, rgbcolor={0,0,0})),
      Line(points=[-12,-38; 14,-38], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0},
          fillPattern=1)),
      Polygon(points=[14,-32; 26,-38; 14,-44; 14,-32],     style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0})),
      Rectangle(extent=[26,-22; 64,-56],  style(color=0, rgbcolor={0,0,0}))));
  
package UsersGuide "User's Guide of StateGraph Library" 
    
  annotation (DocumentationClass=true, Documentation(info="<html>
<p>
Library <b>StateGraph</b> is a <b>free</b> Modelica package providing
components to model <b>discrete event</b> and <b>reactive</b> 
systems in a convenient
way. This package contains the <b>User's Guide</b> for 
the library and has the following content:
</p>
<ol>
<li><a href=\"Modelica://Modelica.StateGraph.UsersGuide.OverView\">Overview of library</a>
     gives an overview of the library.</li>
<li> <a href=\"Modelica://Modelica.StateGraph.UsersGuide.FirstExample\">A first example</a>
     demonstrates at hand of a first example how to use this library.</li>
<li> <a href=\"Modelica://Modelica.StateGraph.UsersGuide.ApplicationExample\">An 
     application example</a> demonstrates varies features at hand of the
     control of a two tank system.</li>
<li><a href=\"Modelica://Modelica.StateGraph.UsersGuide.ReleaseNotes\">Release Notes</a>
    summarizes the differences between different versions of this library.</li>
<li><a href=\"Modelica://Modelica.StateGraph.UsersGuide.Literature\">Literature</a>
    provides references that have been used to design and implement this 
    library.</li>
<li><a href=\"Modelica://Modelica.StateGraph.UsersGuide.Contact\">Contact</a> 
    provides information about the authors of the library as well as
    acknowledgments.</li>
</ol>
</html>"));
    
  class OverView "Overview of library" 
      
    annotation (Documentation(info="<html>
<p>
In this section, an overview of the most important features
of this library is given.
</p>
<h4><font color=\"#008000\">Steps and Transitions</font></h4>
<p>
A <b>StateGraph</b> is an enhanced finite state machine.
It is based on the JGraphChart method and
takes advantage of Modelica features for
the \"action\" language. JGraphChart is a further development of 
Grafcet to include elements of StateCharts that are not present
in Grafcet/Sequential Function Charts. Therefore, the StateGraph
library has a similar modeling power as StateCharts but avoids
some deficiences of StateCharts.
</p>
<p>
The basic elements of StateGraphs are <b>steps</b> and <b>transitions</b>:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/StepAndTransition1.png\">
</p>
<p>
<b>Steps</b> represent the possible states a StateGraph can have.
If a step is active the Boolean variable <b>active</b> of
the step is <b>true</b>. If it is deactivated,
<b>active</b> = <b>false</b>. At the initial time, all \"usual\"
steps are deactivated. The <b>InitialStep</b> objects are steps
that are activated at the initial time. They are characterized
by a double box (see figure above).
</p>
<p>
<b>Transitions</b> are used to change the state of a StateGraph.
When the step connected to the input of a transition is active,
the step connected to the output of this transition is deactivated
and the transition condition becomes true, then the
transition fires. This means that the step connected to the input to the
transition is deactivated and the step connected to the output
of the transition is activated.
</p>
<p>
The transition <b>condition</b> is defined via the parameter menu
of the transition object. Clicking on object \"transition1\" in
the above figure, results in the following menu:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/StepAndTransition2.png\">
</p>
<p>
In the input field \"<b>condition</b>\", any type of time varying
Boolean expression can be given (in Modelica notation, this is
a modification of the time varying variable <b>condition</b>).
Whenever this condition is true, the transition can fire.
Additionally, it is possible to activate a timer, via
<b>enableTimer</b> (see menu above) and provide a 
<b>waitTime</b>. In this case the firing of the transition
is delayed according to the provided waitTime. The transition
condition and the waitTime are displayed in the transition icon.
</p>
<p>
In the above example, the simulation starts at <b>initialStep</b>.
After 1 second, <b>transition1</b> fires and <b>step1</b> becomes
active. After another second <b>transition2</b> fires and
<b>initialStep</b> becomes again active. After a further
second <b>step1</b> becomes again active, and so on.
</p>
<p>
In JGrafcharts, Grafcet and Sequential Function Charts, the
network of steps and transitions is drawn from top to bottom.
In StateGraphs, no particular direction is defined, since 
steps and transitions are blocks with input and output connectors
that can be arbitrarily placed and connected. Usually, it is 
most practical to define the network from left to right,
as in the example above, since then it is easy to read the
labels on the icons.
</p>
<h4><font color=\"#008000\">Conditions and Actions</font></h4>
<p>
With the block <b>TransitionWithSignal</b>, the firing condition
can be provided as Boolean input signal, instead as entry in the
menu of the transition. An example is given in the next
figure:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/StepAndTransition3.png\">
</p>
<p>
Component \"step\" is an instance of \"StepWithSignal\" that is
a usual step where the active flag is available as Boolean
output signal. To this output, component \"Timer\" from
library \"Modelica.Blocks.Logical\" is connected. It measures the
time from the time instant where the Boolean input (i.e., the
active flag of the step) became true upto the current
time instant. The timer is connected to a comparison
component. The output is true, once the timer reaches
1 second. This signal is used as condition input of the
transition. As a result, \"transition2\" fires, once step
\"step\" has been active for 1 second.
Of course, any other
Modelica block with a Boolean output signal can be 
connected to the condition input of such a transition block
as well.
</p>
<p>
Conditions of a transition can either be computed by
a network of logical blocks from the Logical library as
in the figure above, or via the \"SetBoolean\" component
any type of logical expression can be defined in textual
form, as shown in the next figure:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/StepAndTransition4.png\">
</p>
<p>
With the block \"<b>SetBoolean</b>\", a time varying expression
can be provided as modification to the output signal <b>y</b>
(see block with icon text \"timer.y > 1\" in the figure above).
The output signal can be in turn connected to the condition 
input of a TransitionWithSignal block. 
</p>
<p>
The \"<b>SetBoolean</b>\" block can also be used to
compute a Boolean signal depending on the active step.
In the figure above, the output of the block with the 
icon text \"step.active\" is 
true, when \"step\" is active, otherwise it is false
(note, the icon text of \"SetBoolean\" displays the modification
of the output signal \"y\").
This signal can then be used to compute desired <b>actions</b> 
in the physical systems model. For example, if a <b>valve</b>
shall be open, when the StateGraph is in \"step1\" or
in \"step4\", a \"SetBoolean\" block may be connected to the
valve model using the following condition:
</p>
<pre>
    valve = step1.active <b>or</b> step2.active
</pre> 
<p>
Via the Modelica operators <b>edge</b>(..) and <b>change</b>(..),
conditions depending on rising and falling edges of 
Boolean expressions can be used when needed.
</p>
<p>
In JGrafcharts, Grafcet, Sequential Function Charts and StateCharts,
<b>actions</b> are formulated <b>within a step</b>. Such actions are 
distinguished as <b>entry</b>, <b>normal</b>, <b>exit</b> and 
<b>abort</b> actions. For example, a valve might be opened by
an entry action of a step and might be closed by an exit
action of the same step. In StateGraphs, this is (fortunately) 
<b>not possible</b>
due to Modelicas \"single assignment rule\" that requires that every
variable is defined by exactly one equation. Instead, the
approach explained above is used. For example, via the
\"SetBoolean\" component, the valve variable is set to true
when the StateGraph is in particular steps.
</p>
<p>
This feature of a StateGraph is <b>very useful</b>, since it allows
a Modelica translator to <b>guarantee</b> that a given StateGraph
has always <b>deterministic</b> behaviour without conflicts.
In the other methodologies this is much more cumbersome. For example,
if two steps are executed in parallel and both step actions
modify the same variable, the result is either non-deterministic
or non-obvious rules have to be defined which action
takes priority. In a StateGraph, such a situation is detected by
the translator resulting in an error, since there are two equations
to compute one variable. Additional benefits of the StateGraph
approach are:
</p>
<ul>
<li> A JGrafchart or a StateChart need to potentially access
     variables in a step that are defined in 
     higher hierarchical levels of a model. Therefore, mostly <b>global
     variables</b> are used in the whole network, even if the
     network is structured hierarchically. In StateGraphs this
     is not necessary, since the physical systems outside
     of a StateGraph might access the step or transition state
     via a hierarchical name. This means that <b>no global variables</b>
     are needed, because the local variables in the StateGraph
     are accessed from local variables outside of the StateGraph. 
     </li>
<li> It is simpler for a user to understand the information that
     is provided in the non-graphical definition, since every
     variable is defined at exactly one place. In the other
     methodologies, the setting and re-setting of the same
     variable is cluttered within the whole network.
    </li>
</ul>
<p>
To emphasize this important difference between these methodologies,
consider the case that a state machine has the following
hierarchy:
</p>
<pre>
   stateMachine.superstate1.superstate2.step1
</pre>
<p>
Within \"step1\" a StateChart would, e.g., access variable
\"stateMachine.openValve\", say as \"entry action: openValve = true\".
This typical usage has the severe drawback that it is not possible
to use the hierarchical state \"superstate1\" as component in another
context, because \"step1\" references a particular name outside of this
component. 
</p>
<p>
In a StateGraph, there would be typically a \"SetBoolean\" component
in the \"stateMachine\" component stating:
</p>
<pre>
    openValve = superstate1.superstate2.step1.active;
</pre>
<p>
As a result, the \"superstate1\" component can be used in 
another context, because it does not depend on the environment
where it is used.
</p>
<h4><font color=\"#008000\">Execution Model</font></h4>
<p>
The execution model of a StateGraph follows from its
Modelica implementation: Given the states of all steps, i.e., 
whether a step is active or not active, the equations of all
steps, transitions, transition conditions, actions etc. are
sorted resulting in an execution sequence to compute 
essentially the new values of the steps. If conflicts occur,
e.g., if there are more equations as variables, of if there
are algebraic loops between Boolean variables, an exception
is raised. Once all equations have been processed, the
<b>active</b> variable of all steps are updated to the newly
calculated values. Afterwards, the equations are again 
evaluated. The iteration stops, once no step changes
its state anymore, i.e., once no transition fires anymore.
Then, simulation continuous until a new event is triggered,
(when a relation changes its value).
</p>
<p>
With the Modelica \"sampled(..)\" operator, a StateGraph might also
be executed within a discrete controller that is called
at regular time instants. In a future version of the StateGraph
library, this might be more directly supported.
</p>
<h4><font color=\"#008000\">Parallel and Alternative Execution</font></h4>
<p>
Parallel activities can be defined by 
component <b>Parallel</b> and alternative activities
can be defined by component <b>Alternative</b>.
An example for both components is given in the next figure.
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/Parallel1.png\">
</p>
<p>
Here, the branch from \"step2\" to \"step5\" is executed in parallel
to \"step1\". A transition connected to the output of a parallel 
branch component can only fire if the final steps
in all parallel branches are active simultaneously.
The figure above is a screen-shot from the animation of the
StateGraph: Whenever a step is active or a transition can fire,
the corresponding component is marked in <b>green</b> color.
</p>
<p>
The three branches within \"step2\" to \"step5\" are 
executed alternatively, depending which transition condition
of \"transition3\", \"transition4\", \"transition4a\" fires first.
Since all three transitions fire after 1 second, they are all
candidates for the active branch. If two or more transitions
would fire at the same time instant, a priority selection
is made: The alternative and parallel components have a
vector of connectors. Every branch has to be connected to
exactly one entry of the connector vector. The entry with
the lowest number has the highest priority.
</p>
<p>
Parallel, Alternative and Step components have vectors of
connectors. The dimensions of these vectors are set in the
corresponding parameter menu. E.g. in a \"Parallel\" component:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/Parallel2.png\">
</p>
<p>
Currently in Dymola the following menu pops up, when a branch
is connected to a vector of components in order to define
the vector index to which the component shall be connected:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/Parallel3.png\">
</p>
<h4><font color=\"#008000\">CompositeSteps, Suspend and Resume Port</font></h4>
<p>
A StateGraph can be hierarchically structured by using a <b>CompositeStep</b>.
This is a component that inherits from <b>PartialCompositeStep</b>.
An example is given in the next figure (from Examples.ControlledTanks):
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/UsersGuide/CompositeStep1.png\">
</p>
<p>
The CompositeStep component contains a local StateGraph that is
entered by one or more input transitions and that is left
by one or more output transitions. Also, other needed signals
may enter a CompositeStep. The CompositeStep has similiar properties
as a \"usual\" step: The CompositeStep is <b>active</b> once at least
one step within the CompositeStep is active. Variable <b>active</b>
defines the state of the CompositeStep.
</p>
<p>
Additionally, a CompositeStep has a <b>suspend</b> port. Whenever the
transition connected to this port fires, the CompositeStep is left
at once. When leaving the CompositeStep via the suspend port, the internal
state of the CompositeStep is saved, i.e., the active flags of all
steps within the CompositeStep. The CompositeStep might be entered via
its <b>resume</b> port. In this case the internal state from the
suspend transition is reconstructed and the CompositeStep continues
the execution that it had before the suspend transition fired
(this corresponds to the history ports of StateCharts or JGrafCharts).
</p>
<p>
A CompositeStep may contain other CompositeSteps. At every level,
a CompositeStep and all of its content can be left via its suspend ports 
(actually, there
is a vector of suspend connectors, i.e., a CompositeStep might
be aborted due to different transitions).
</p>
</html>
"));
  end OverView;
    
  class FirstExample "A first example" 
      
    annotation (Documentation(info="<html>
<p>
A first example will be given here (not yet done).
</p>
</html>
"));
  end FirstExample;
    
  class ApplicationExample "An application example" 
      
    annotation (Documentation(info="<html>
<p>
In this section a more realistic, still simple, application example
is given, to demonstrate various features of the StateGraph library.
This example shows the control of a two tank system from the master thesis 
of Isolde Dressler
(<a href=\"Modelica://Modelica.StateGraph.UsersGuide.Literature\">see literature</a>).
</p>
<p>
In the following figure the top level of the model is shown.
This model is available as StateGraph.Examples.ControlledTanks.
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/Examples/ControlledTanks1.png\">
</p>
<p>
In the right part of the figure, two tanks are shown. At the top part,
a large fluid source is present from which fluid can be filled in 
<b>tank1</b> when <b>valve1</b> is open. Tank1 can be emptied via
<b>valve2</b> that is located in the bottom of tank2 and
fills a second <b>tank2</b> which in turn is emptied via 
<b>valve3</b>. The actual levels of the tanks are measured
and are provided as signals <b>level1</b> and <b>level2</b>
to the <b>tankController</b>.
</p>
<p>
The <b>tankController</b> is controlled by three buttons, 
<b>start</b>, <b>stop</b> and <b>shut</b> (for shutdown)
that are mutually exclusive. This means that whenever one button is
pressed (i.e., its state is <b>true</b>) then the other two
buttons are not pressed (i.e., their states are <b>false</b>).
When button <b>start</b> is pressed, the \"normal\" operation
to fill and to empty the two tanks is processed:
</p>
<ol>
<li> Valve 1 is opened and tank 1 is filled.</li>
<li> When tank 1 reaches its fill level limit, 
     valve 1 is closed. </li>
<li> After a waiting time, valve 2 is
     opened and the fluid flows from tank 1 into tank 2.</li>
<li> When tank 1 is empty, valve 2 is closed. </li>
<li> After a waiting time, valve 3 is opened and
     the fluid flows out of tank 2</li>
<li> When tank 2 is empty, valve 3 is closed</liI>
</ol>
<p>
The above \"normal\" process can be influenced by the following 
buttons:
</p>
<ul>
<li> Button <b>start</b> starts the above process.
     When this button is pressed after a \"stop\" or
     \"shut\" operation, the process operation continues.
     </li>.
<li> Button <b>stop</b> stops the above process by
     closing all valves. Then, the controller waits for
     further input (either \"start\" or \"shut\" operation).</li>
<li> Button <b>shut</b> is used to shutdown the process, 
     by emptying at once both tanks. When this is achieved,
     the process goes back to its start configuration.
     Clicking on \"start\", restarts the process.</li>
</ul> 
<p>
The implementation of the <b>tankController</b> is shown in 
the next figure:
</p>
<p align=\"center\">
<img src=\"./Images/StateGraph/Examples/ControlledTanks2.png\">
</p>
<p>
When the \"<b>start</b>\" button is pressed, the stateGraph is
within the CompositeStep \"<b>makeProduct</b>\". During normal
operation this CompositeStep is only left, once tank2 is empty.
Afterwards, the CompositeStep is at once re-entered.
</p>
<p>
When the \"<b>stop</b>\" button is pressed, the \"makeProduct\"
CompositeStep is at once terminated via the \"<b>suspend</b>\" port
and the stateGraph waits in step \"<b>s2</b>\" for further
commands. When the \"<b>start</b>\" button is pressed, the CompositeStep
is re-entered via its <b>resume</b> port and the \"normal\"
operation continues at the state where it was aborted by the
suspend transition. If the \"<b>shut</b>\" button is pressed,
the stateGraph waits in the \"<b>emptyTanks</b>\" step, until
both tanks are empty and then waits at the initial step 
\"<b>s1</b>\" for further input.
</p>
<p>
The opening and closing of valves is <b>not</b> directly
defined in the stateGraph. Instead via the \"<b>setValveX</b>\"
components, the Boolean state of the valves are computed.
For example, the output y of \"setValve2\" is computed as:
</p>
<pre>
  y = makeProduct.fillTank2.active or emptyTanks.active
</pre>
<p>
i.e., valve2 is open, when step \"makeProduct.fillTank2 or when
step \"emptyTanks\" is active. Otherwise, valve2 is closed.
</p>
</html>
"));
  end ApplicationExample;
    
  class ReleaseNotes "Release notes" 
      
    annotation (Documentation(info="<html>
<h4>Version 0.87, 2004-06-23</h4>
<ul>
<li> Included in Modelica standard library 2.0 Beta 1 with the new block connectors.
     Changed all the references to the block connectors and the Logical library
     correspondingly.</li>
</ul>
<h4>Version 0.86, 2004-06-20</h4>
<ul>
<li> New components \"Alternative\" and \"Parallel\" for alternative and
     parallel execution paths.</li>
<li> A step has now a vector of input and output connectors in order
     that multiple connections to and from a step are possible</li>
<li> Removed components \"AlternativeSplit\", \"AlternativeJoin\",
     \"ParallelSplit\" and \"ParallelJoin\" since the newly introduced
     components (\"Alternative\", \"Parallel\", vector connectors of steps)
     have the same modeling power but are safer and more convenient.</li>
<li> Removed the timer in a step (attach instead Logical.Timer to
     the \"active\" port of a \"StepWithSignal\" component). Note, that in
     most cases it is more convenient and more efficient to use the
     built-in timer of a transition.</li>
<li> Component \"StepInitial\" renamed to \"InitialStep\".</li>
<li> New component \"Timer\" within sublibrary Logical.</li>
<li> Updated and improved documentation of the library.</li>
</ul>
<h4>Version 0.85, 2004-06-17</h4>
<ul>
<li> Renamed \"MacroStep\" to \"CompositeStep\" and the ports of the MacroStep
     from \"abort\" to \"suspend\" and \"histoy\" to \"resume\".</li>
<li> Nested \"CompositeStep\" components are supported, based on the
     experimental feature of nested inner/outer components 
     introduced by Dymola. This means that CompositeSteps can
     be suspended and resumed at every level.</li>
<li> New example \"Examples.ShowExceptions\" to demonstrate the new
     feature of nested CompositeSteps.</li>
<li> New package \"Logical\". It contains all components of
     ModelicaAdditions.Blocks.Logical, but with new block connectors
     and nicer icons. Additionally, logical blocks are also added.</li>
<li> Improved icons for several components of the StateGraph library.</li>
</ul>
<h4>Version 0.83, 2004-05-21</h4>
<ul>
<li> The \"abort\" and \"history\" connectors are no longer visible in the
     diagram layer of a CompositeStep since it is not allowed to connect
     to them in a CompositeStep.</li>
<li> Made the diagram/icon size of a CompositeStep smaller (from 200/-200 to
     150/-150).</li>
<li> Improved icons for \"SetBoolean/SetInteger/SetReal\" components.</li>
<li> Renamed \"ParameterReal\" to \"SetRealParameter\".</li>
</ul>
<h4>Version 0.82, 2004-05-18</h4>
<p>
Implemented a first version that is provided to other people.
</p>
</html>
"));
  equation 
      
  end ReleaseNotes;
    
  class Literature "Literature" 
      
    annotation (Documentation(info="<html>
<p>
The StateGraph library is based on the following references:
</p>
<dl>
<dt>Arzen K.-E. (2004):</dt>
<dd> <b>JGrafchart User Manual. Version 1.5</b>.
     Department of Automatic Control, Lund Institute of Technology,
     Lund, Sweden, Feb. 13<br>&nbsp;</dd>
<dt>Dressler I. (2004):</dt>
<dd> <b>Code Generation From JGrafchart to Modelica</b>.
     Master thesis, supervisor: Karl-Erik Arzen,
     Department of Automatic Control, Lund Institute of Technology,
     Lund, Sweden, March 30<br>&nbsp;</dd>
<dt>Elmqvist H., Mattsson S.E., Otter M. (2001):</dt>
<dd> <b>Object-Oriented and Hybrid Modeling in Modelica</b>.
     Journal Europeen des systemes automatises (JESA),
     Volume 35 - n. 1.<br>&nbsp;</dd>
<dt>Mosterman P., Otter M., Elmqvist H. (1998):</dt>
<dd> <b>Modeling Petri Nets as Local Constraint Equations for 
     Hybrid Systems using Modelica</b>.
     SCSC'98, Reno, Nevada, USA,
     Society for Computer Simulation International, pp. 314-319.
     </dd>
</dl>
</html>
"));
      
  end Literature;
    
  class Contact "Contact" 
      
    annotation (Documentation(info="<html>
<dl>
<dt><b>Main Author:</b>
<dd><a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
    Institut f&uuml;r Robotik und Mechatronik<br> 
    Abteilung f&uuml;r Entwurfsorientierte Regelungstechnik<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    Germany<br>
    email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A><br>
</dl>
<p><b>Acknowledgements:</b></p>
<ul>
<li> The development of this library was strongly motivated by the
     master thesis of Isolde Dressler
     (<a href=\"Modelica://Modelica.StateGraph.UsersGuide.Literature\">see literature</a>),
     in which
     a compiler from JGrafChart to Modelica was designed and
     implemented. This project was supervised by Karl-Erik Arzen
     from Departement of Automatic Control, Lund Institut of
     Technology, Lund, Sweden.</li>
<li> This library profits also from the experience gained
     in the focused research program (Schwerpunktprogramm) 
     \"Continuous-Discrete Dynamic Systems\" (KONDISK), sponsored by the 
     Deutsche Forschungsgemeinschaft under grants OT174/1-2 and EN152/22-2. 
     This support is most gratefully acknowledged.
 </li>
<li> The implementation of the basic components of this library by describing
     finite state machines with equations is based on
     (Elmqvist, Mattsson and Otter, 2001),
     which in turn uses ideas from (Mosterman, Otter and Elmqvist, 1998),
     see <a href=\"Modelica://Modelica.StateGraph.UsersGuide.Literature\">literature</a></li>
</ul>
</html>
"));
      
  end Contact;
    
end UsersGuide;
  
package Examples 
    "Examples to demonstrate the usage of the components of the StateGraph library" 
    
  model FirstExample "A first simple StateGraph example" 
    extends Modelica.Icons.Example;
    InitialStep initialStep annotation(extent=[-48,0; -28,20]);
    Transition transition1(enableTimer=true, waitTime=1) 
      annotation(extent=[-20,0; 0,20]);
    Step step annotation(extent=[10,0; 30,20]);
    Transition transition2(enableTimer=true, waitTime=1) 
      annotation(extent=[40,0; 60,20]);
  equation 
      
    annotation (
      Diagram,
      experiment(StopTime=5),
      experimentSetupOutput,
        Documentation(info="<html>
  
</html>"));
    connect(initialStep.outPort[1], transition1.inPort) 
      annotation(points=[-27.5,10; -14,10],style(color=0, rgbcolor={0,0,0}));
    connect(transition1.outPort, step.inPort[1]) 
      annotation(points=[-8.5,10; 9,10], style(color=0, rgbcolor={0,0,0}));
    connect(step.outPort[1], transition2.inPort) 
      annotation(points=[30.5,10; 46,10],style(color=0, rgbcolor={0,0,0}));
    connect(transition2.outPort, initialStep.inPort[1]) annotation(points=[51.5,
          10; 70,10; 70,32; -62,32; -62,10; -49,10], style(color=0, rgbcolor={0,0,
            0}));
  end FirstExample;
    
  model FirstExample_Variant2 
      "A variant of the first simple StateGraph example" 
    extends Modelica.Icons.Example;
    InitialStep initialStep annotation(extent=[-70,0; -50,20]);
    Transition transition1(enableTimer=true, waitTime=1) 
      annotation(extent=[-42,0; -22,20]);
    StepWithSignal step 
              annotation(extent=[-14,0; 6,20]);
    TransitionWithSignal transition2 
      annotation(extent=[52,0; 72,20]);
    Modelica.Blocks.Logical.Timer timer annotation(extent=[6,-40; 26,-20]);
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual(threshold=1) 
      annotation(extent=[36,-40; 56,-20]);
  equation 
      
    annotation (structurallyIncomplete,
      Diagram,
      experiment(StopTime=5),
      experimentSetupOutput,
        Documentation(info="<html>
  
</html>"));
    connect(initialStep.outPort[1], transition1.inPort) 
      annotation(points=[-49.5,10; -36,10],style(color=0, rgbcolor={0,0,0}));
    connect(transition1.outPort, step.inPort[1]) 
      annotation(points=[-30.5,10; -15,10],
                                         style(color=0, rgbcolor={0,0,0}));
    connect(step.active, timer.u) annotation(points=[-4,-1; -4,-30; 4,-30],
        style(color=5, rgbcolor={255,0,255}));
    connect(step.outPort[1], transition2.inPort) 
      annotation(points=[6.5,10; 58,10], style(color=0, rgbcolor={0,0,0}));
    connect(timer.y, greaterEqual.u) 
      annotation(points=[27,-30; 34,-30], style(color=3, rgbcolor={0,0,255}));
    connect(greaterEqual.y, transition2.condition) annotation(points=[57,-30;
          62,-30; 62,-2], style(color=5, rgbcolor={255,0,255}));
    connect(transition2.outPort, initialStep.inPort[1]) annotation(points=[63.5,
          10; 82,10; 82,32; -80,32; -80,10; -71,10], style(color=0, rgbcolor={0,
            0,0}));
  end FirstExample_Variant2;
    
  model FirstExample_Variant3 
      "A variant of the first simple StateGraph example" 
    extends Modelica.Icons.Example;
    InitialStep initialStep annotation(extent=[-70,0; -50,20]);
    Transition transition1(enableTimer=true, waitTime=1) 
      annotation(extent=[-42,0; -22,20]);
    StepWithSignal step 
              annotation(extent=[-14,0; 6,20]);
    TransitionWithSignal transition2 
      annotation(extent=[56,0; 76,20]);
    Modelica.Blocks.Logical.Timer timer annotation(extent=[-14,-40; 6,-20], rotation=-90);
    Modelica.Blocks.Sources.BooleanExpression SetBoolean1(y=timer.y > 1) annotation(extent=[28,-40; 60,-20]);
    Modelica.Blocks.Sources.BooleanExpression SetBoolean2(y=step.active) annotation(extent=[-68,-40; -36,-20]);
  equation 
      
    annotation (
      Diagram,
      experiment(StopTime=5),
      experimentSetupOutput,
        Documentation(info="<html>
  
</html>"));
    connect(initialStep.outPort[1], transition1.inPort) 
      annotation(points=[-49.5,10; -36,10],style(color=0, rgbcolor={0,0,0}));
    connect(transition1.outPort, step.inPort[1]) 
      annotation(points=[-30.5,10; -15,10],
                                         style(color=0, rgbcolor={0,0,0}));
    connect(step.active, timer.u) annotation(points=[-4,-1; -4,-9.5; -4,-18; -4,
            -18],
        style(color=5, rgbcolor={255,0,255}));
    connect(step.outPort[1], transition2.inPort) 
      annotation(points=[6.5,10; 62,10], style(color=0, rgbcolor={0,0,0}));
    connect(transition2.outPort, initialStep.inPort[1]) annotation(points=[67.5,
          10; 82,10; 82,32; -80,32; -80,10; -71,10], style(color=0, rgbcolor={0,
            0,0}));
    connect(SetBoolean1.y, transition2.condition) annotation(points=[61.6,-30;
          66,-30; 66,-2], style(color=5, rgbcolor={255,0,255}));
  end FirstExample_Variant3;
    
  extends Modelica.Icons.Library;
    
  model ExecutionPaths 
      "Example to demonstrate parallel and alternative execution paths" 
      
    extends Modelica.Icons.Example;
      
    annotation (
      Documentation(info="<HTML>
<p>
This is an example to demonstrate in which way <b>parallel</b> activities
can be modelled by a StateGraph. When transition1 fires
(after 1 second), two branches are executed in parallel.
After 6 seconds the two branches are synchronized in order to arrive
at step6.
</p>
<p>
Before simulating the model, try to figure out whether which branch
of the alternative sequence is executed. Note, that alternatives
have priorities according to the port index (alternative.split[1]
has a higher priority to fire as alternative.split[2]).
</p>
</HTML>
"),   Diagram,
      experiment(StopTime=15),
      Coordsys(grid=[2,2], component=[20,20],
        extent=[-160,-160; 160,160]),
      experimentSetupOutput);
      
    InitialStep step0 annotation (extent=[-140,-100; -120,-80],style(color=0));
    Transition transition1(enableTimer=true, waitTime=1) 
      annotation (extent=[-100,-100; -80,-80], style(color=0));
    Step step1 annotation (extent=[-10,-40; 10,-20],   style(color=0));
    Transition transition2(enableTimer=true, waitTime=1) 
      annotation (extent=[90,-100; 110,-80], style(color=0));
    Step step6 annotation (extent=[120,-100; 140,-80],style(color=0));
    Step step2 annotation (extent=[-98,40; -78,60],    style(color=0));
    Transition transition3(enableTimer=true, waitTime=1) 
      annotation (extent=[-42,80; -22,100],   style(color=0));
    Transition transition4(enableTimer=true, waitTime=1) 
      annotation (extent=[-42,40; -22,60],   style(color=0));
    Step step3 annotation (extent=[-8,80; 12,100],    style(color=0));
    Step step4 annotation (extent=[-8,40; 12,60],    style(color=0));
    Transition transition5(enableTimer=true, waitTime=1) 
      annotation (extent=[26,80; 46,100],   style(color=0));
    Transition transition6(enableTimer=true, waitTime=1) 
      annotation (extent=[26,40; 46,60],   style(color=0));
    Step step5 annotation (extent=[80,40; 100,60],   style(color=0));
    Modelica.Blocks.Sources.RealExpression setReal(y=time) 
                            annotation (extent=[21,-160; 41,-140]);
    TransitionWithSignal transition7 annotation (extent=[9,-134; -11,-114]);
    Modelica.Blocks.Sources.BooleanExpression setCondition(y=time > 7) 
      annotation (extent=[-77,-160; -19,-140]);
    Transition transition4a(enableTimer=true, waitTime=1) 
      annotation (extent=[-42,0; -22,20],   style(color=0));
    Step step4a annotation (extent=[-8,0; 12,20],    style(color=0));
    Transition transition6a(enableTimer=true, waitTime=2) 
      annotation (extent=[26,0; 46,20],   style(color=0));
    StateGraph.Temporary.NumericValue NumericValue1 
      annotation (extent=[61,-160; 81,-140]);
    Alternative alternative(nBranches=3)  annotation(extent=[-70,-10; 72,110]);
    Parallel Parallel1 annotation(extent=[-154,-50; 152,120]);
  equation 
    connect(transition3.outPort, step3.inPort[1]) 
      annotation (points=[-30.5,90; -9,90],    style(color=0));
    connect(step3.outPort[1], transition5.inPort) 
      annotation (points=[12.5,90; 32,90],   style(color=0));
    connect(transition4.outPort, step4.inPort[1]) 
      annotation (points=[-30.5,50; -9,50],    style(color=0));
    connect(step4.outPort[1], transition6.inPort) 
      annotation (points=[12.5,50; 32,50],   style(color=0));
    connect(transition7.outPort, step0.inPort[1]) annotation (points=[-2.5,-124;
          -149,-124; -149,-90; -141,-90],
                                     style(color=0));
    connect(step6.outPort[1], transition7.inPort) annotation (points=[140.5,-90;
          150,-90; 150,-124; 3,-124],style(color=0));
    connect(transition4a.outPort, step4a.inPort[1]) 
      annotation (points=[-30.5,10; -9,10],    style(color=0));
    connect(step4a.outPort[1], transition6a.inPort) 
      annotation (points=[12.5,10; 32,10],   style(color=0));
    connect(setCondition.y, transition7.condition) annotation (points=[-16.1,
          -150; -1,-150; -1,-136],
                              style(color=5, rgbcolor={255,0,255}));
    connect(setReal.y, NumericValue1.Value) annotation (points=[42,-150; 59,
          -150],
         style(
        color=3,
        rgbcolor={0,0,255},
        fillColor=7,
        rgbfillColor={255,255,255},
        fillPattern=1));
    connect(transition3.inPort, alternative.split[1])  annotation(points=[-36,90;
            -55.09,90],                        style(color=0, rgbcolor={0,0,0}));
    connect(transition4.inPort, alternative.split[2])  annotation(points=[-36,50;
            -55.09,50],                  style(color=0, rgbcolor={0,0,0}));
    connect(transition4a.inPort, alternative.split[3])  annotation(points=[-36,10;
            -45.0125,10; -45.0125,10; -55.09,10],  style(color=0, rgbcolor={0,0,0}));
    connect(transition5.outPort, alternative.join[1])  annotation(points=[37.5,90;
            57.09,90],
               style(color=0, rgbcolor={0,0,0}));
    connect(transition6.outPort, alternative.join[2])  annotation(points=[37.5,50;
            57.09,50],    style(color=0, rgbcolor={0,0,0}));
    connect(transition6a.outPort, alternative.join[3])  annotation(points=[37.5,10;
            46.7625,10; 46.7625,10; 57.09,10],    style(color=0, rgbcolor={0,0,
            0}));
    connect(step2.outPort[1], alternative.inPort)  annotation(points=[-77.5,50;
          -72.13,50], style(color=0, rgbcolor={0,0,0}));
    connect(alternative.outPort, step5.inPort[1]) 
      annotation(points=[73.42,50; 79,50], style(color=0, rgbcolor={0,0,0}));
    connect(step2.inPort[1], Parallel1.split[1]) annotation(points=[-99,50; -118,
          50; -118,78; -119.575,78; -119.575,77.5], style(color=0, rgbcolor={0,
            0,0}));
    connect(step1.outPort[1], Parallel1.join[2]) annotation(points=[10.5,-30; 118,
          -30; 118,-7.5; 117.575,-7.5], style(color=0, rgbcolor={0,0,0}));
    connect(step0.outPort[1], transition1.inPort) annotation(points=[-119.5,-90;
          -94,-90], style(color=0, rgbcolor={0,0,0}));
    connect(transition2.outPort, step6.inPort[1]) annotation(points=[101.5,-90;
          119,-90], style(color=0, rgbcolor={0,0,0}));
    connect(transition1.outPort, Parallel1.inPort) annotation(points=[-88.5,-90;
          -70,-90; -70,-64; -174,-64; -174,35; -158.59,35], style(color=0,
          rgbcolor={0,0,0}));
    connect(Parallel1.outPort, transition2.inPort) annotation(points=[155.06,35;
          168,35; 168,-60; 80,-60; 80,-90; 96,-90], style(color=0, rgbcolor={0,
            0,0}));
    connect(step5.outPort[1], Parallel1.join[1]) annotation(points=[100.5,50; 116,
          50; 116,77.5; 117.575,77.5], style(color=0, rgbcolor={0,0,0}));
    connect(Parallel1.split[2], step1.inPort[1]) annotation(points=[-119.575,
          -7.5; -118,-8; -118,-30; -11,-30], style(color=0, rgbcolor={0,0,0}));
  end ExecutionPaths;
    
  model ShowCompositeStep 
      "Example to demonstrate parallel activities described by a StateGraph" 
      
    extends Modelica.Icons.Example;
      
    annotation (
      Documentation(info="<HTML>
<p>
This is the same example as \"ExecutionPaths\". The only difference
is that the alternative paths are included in a \"CompositeStep\".
</p>
</HTML>
"),   Diagram,
      experiment(StopTime=15),
      Coordsys(grid=[1,1], component=[20,20]),
      experimentSetupOutput);
      
    Utilities.CompositeStep compositeStep 
                                     annotation (extent=[-10,5; 20,35]);
    InitialStep step0 annotation (extent=[-89,-10; -69,10],    style(color=0));
    Transition transition1(enableTimer=true, waitTime=1) 
      annotation (extent=[-59,-10; -39,10],    style(color=0));
    Step step1 annotation (extent=[-4,-30; 16,-10],   style(color=0));
    Transition transition2(enableTimer=true, waitTime=1) 
      annotation (extent=[45,-10; 65,10],    style(color=0));
    Step step6 annotation (extent=[71,-10; 91,10],    style(color=0));
    TransitionWithSignal transition7 annotation (extent=[10, -70; -10, -50]);
    Parallel Parallel1 annotation(extent=[-30,-40; 36,40]);
    Modelica.Blocks.Sources.BooleanExpression setCondition(y=time > 7) 
      annotation (extent=[-40,-90; -10,-70]);
  equation 
    connect(step0.outPort[1], transition1.inPort) 
      annotation (points=[-68.5,0; -53,0],       style(color=0));
    connect(transition7.outPort, step0.inPort[1]) annotation (points=[-1.5,-60;
          -98,-60; -98,0; -90,0],    style(color=0));
    connect(step6.outPort[1], transition7.inPort) annotation (points=[91.5,0;
          96,0; 96,-60; 4,-60],      style(color=0));
    connect(transition2.outPort, step6.inPort[1]) annotation (points=[56.5,0;
          70,0],    style(
        color=0,
        fillColor=7,
        fillPattern=1));
    connect(transition1.outPort, Parallel1.inPort) annotation(points=[-47.5,0;
            -30.99,0],               style(color=0, rgbcolor={0,0,0}));
    connect(Parallel1.outPort, transition2.inPort) annotation(points=[36.66,0;
            51,0],               style(color=0, rgbcolor={0,0,0}));
    connect(compositeStep.inPort, Parallel1.split[1]) 
                                                 annotation(points=[-11,20;
            -22.575,20],
                       style(color=0, rgbcolor={0,0,0}));
    connect(compositeStep.outPort, Parallel1.join[1]) 
                                                 annotation(points=[20.5,20;
            28.575,20],
                      style(color=0, rgbcolor={0,0,0}));
    connect(step1.inPort[1], Parallel1.split[2]) annotation(points=[-5,-20;
            -22.575,-20],
                        style(color=0, rgbcolor={0,0,0}));
    connect(step1.outPort[1], Parallel1.join[2]) annotation(points=[16.5,-20;
            28.575,-20],
                       style(color=0, rgbcolor={0,0,0}));
    connect(setCondition.y, transition7.condition) annotation(points=[-8.5,-80;
          0,-80; 0,-72], style(color=5, rgbcolor={255,0,255}));
  end ShowCompositeStep;
    
  model ShowExceptions 
      "Example to demonstrate how a hierarchically structured StateGraph can suspend and resume actions on different levels" 
      
    extends Modelica.Icons.Example;
      
    annotation (
      Documentation(info="<HTML>
<p>
CompositeStep \"compositeStep\" is a hierarchical StateGraph consisting of
two other subgraphs. Whenever component \"compositeStep\" is suspended,
all steps with in \"compositeStep\" are deactivated. By entering \"compositeStep\"
via its \"resume\" port, all steps within \"compositeStep\" are activated
according to their setting before leaving the \"compositeStep\" via its
\"suspend\" port.
</p>
</HTML>
"),   Diagram,
      experiment(StopTime=20),
      Coordsys(grid=[1,1], component=[20,20]),
      experimentSetupOutput);
      
    Utilities.CompositeStep1 compositeStep 
                                annotation (extent=[-20,25; 10,55]);
    InitialStep initialStep 
                      annotation (extent=[-80,30; -60,50],     style(color=0));
    Transition transition1(enableTimer=true, waitTime=1) 
      annotation (extent=[-50,30; -30,50],     style(color=0));
    Transition transition2(enableTimer=true, waitTime=1) 
      annotation (extent=[20,30; 40,50],       style(color=0));
    Transition transition3(enableTimer=true, waitTime=2) 
      annotation (extent=[-55,-30; -35,-10],   style(color=0));
    Step step1 annotation(extent=[-24,-30; -4,-10]);
    Transition transition4(enableTimer=true, waitTime=1) 
      annotation (extent=[10,-30; 30,-10],     style(color=0));
  equation 
      
    connect(transition1.outPort, compositeStep.inPort) 
      annotation(points=[-38.5,40; -21,40], style(color=0, rgbcolor={0,0,0}));
    connect(initialStep.outPort[1], transition1.inPort) 
      annotation(points=[-59.5,40; -44,40], style(color=0, rgbcolor={0,0,0}));
    connect(compositeStep.outPort, transition2.inPort) 
      annotation(points=[10.5,40; 26,40], style(color=0, rgbcolor={0,0,0}));
    connect(transition2.outPort, initialStep.inPort[1]) annotation(points=[31.5,40;
          46,40; 46,80; -90,80; -90,40; -81,40], style(color=0, rgbcolor={0,0,0}));
    connect(compositeStep.suspend[1], transition3.inPort) 
                                                  annotation(points=[-13,24.5;
          -13,10; -60,10; -60,-20; -49,-20], style(color=0, rgbcolor={0,0,0}));
    connect(transition3.outPort, step1.inPort[1]) annotation(points=[-43.5,-20;
          -25,-20], style(color=0, rgbcolor={0,0,0}));
    connect(step1.outPort[1], transition4.inPort) 
      annotation(points=[-3.5,-20; 16,-20], style(color=0, rgbcolor={0,0,0}));
    connect(transition4.outPort, compositeStep.resume[1]) 
                                                  annotation(points=[21.5,-20;
          40,-20; 40,10; 3,10; 3,24], style(color=0, rgbcolor={0,0,0}));
  end ShowExceptions;
    
  model ControlledTanks 
      "Demonstrating the controller of a tank filling/emptying system" 
    extends Modelica.Icons.Example;
    Utilities.TankController tankController 
      annotation (extent=[-50, -20; -10, 20]);
    StateGraph.Temporary.RadioButton start(reset={stop.on,shut.on},
        buttonTimeTable={1,13,15,19}) 
      annotation (extent=[-90, 20; -70, 40]);
    StateGraph.Temporary.RadioButton stop(reset={start.on,shut.on},
        buttonTimeTable={13,15,19,21}) 
      annotation (extent=[-90, -10; -70, 10]);
    StateGraph.Temporary.RadioButton shut(reset={start.on,stop.on},
        buttonTimeTable={21,100}) 
      annotation (extent=[-90, -40; -70, -20]);
    annotation (
      Diagram,
      Coordsys(grid=[0.5, 0.5], component=[20, 20]),
      experiment(StopTime=100),
      experimentSetupOutput,
      Documentation(info="<html>
<p>
With this example the controller of a tank filling/emptying system
is demonstrated. This example is from Dressler (2004),
see <a href=\"Modelica://Modelica.StateGraph.UsersGuide.Literature\">Literature</a>. 
The basic operation is to fill and empty the two tanks:
</p>
<ol>
<li> Valve 1 is opened and tank 1 is filled.</li>
<li> When tank 1 reaches its fill level limit, 
     valve 1 is closed. </li>
<li> After a waiting time, valve 2 is
     opened and the fluid flows from tank 1 into tank 2.</li>
<li> When tank 1 is empty, valve 2 is closed. </li>
<li> After a waiting time, valve 3 is opened and
     the fluid flows out of tank 2</li>
<li> When tank 3 is empty, valve 3 is closed</liI>
</ol>
<p>
The above \"normal\" process can be influenced by three 
buttons:
</p>
<ul>
<li> Button <b>start</b> starts the above process.
     When this button is pressed after a \"stop\" or
     \"shut\" operation, the process operation continues.
     </li>.
<li> Button <b>stop</b> stops the above process by
     closing all valves. Then, the controller waits for
     further input (either \"start\" or \"shut\" operation).</li>
<li> Button <b>shut</b> is used to shutdown the process, 
     by emptying at once both tanks. When this is achieved,
     the process goes back to its start configuration.
     Clicking on \"start\", restarts the process.</li>
</ul> 
     
</html>"));
    Utilities.Tank tank1 annotation (extent=[10, 20; 60, 70]);
    Utilities.Tank tank2 annotation (extent=[34, -60; 84, -10]);
    Utilities.valve valve1 
      annotation (extent=[17, 66.5; 28, 77.5], rotation=-90);
    Utilities.Source source annotation (extent=[12.5, 80.5; 32.5, 100.5]);
    Utilities.valve valve2 annotation (extent=[38.5, 6; 54.5, 20], rotation=-90);
    Utilities.valve valve3 
      annotation (extent=[65.5, -84; 81.5, -70], rotation=-90);
  equation 
    connect(tank1.outflow1, valve2.outflow1) annotation (points=[50, 33.75; 50,
           26.875; 46.5, 26.875; 46.5, 16.5], style(
        color=0,
        rgbcolor={0,0,0},
        thickness=2,
        fillColor=0,
        rgbfillColor={0,0,0},
        fillPattern=1));
    connect(tank2.inflow1, valve2.inflow1) annotation (points=[46.5, -18.75;
          46.5, 9.5], style(
        color=0,
        rgbcolor={0,0,0},
        thickness=2,
        fillColor=0,
        rgbfillColor={0,0,0},
        fillPattern=1));
    connect(tank2.outflow1, valve3.outflow1) annotation (points=[74, -46.25; 74,
           -73.5; 73.5, -73.5], style(
        color=0,
        rgbcolor={0,0,0},
        thickness=2,
        fillColor=0,
        rgbfillColor={0,0,0},
        fillPattern=1));
    connect(tank1.inflow1, valve1.inflow1) annotation (points=[22.5, 61.25;
          22.5, 69.25], style(
        color=0,
        rgbcolor={0,0,0},
        thickness=2,
        fillColor=0,
        rgbfillColor={0,0,0},
        fillPattern=1));
    connect(shut.on, tankController.shut) annotation (points=[-69, -30; -62, -30;
           -62, -12; -52, -12], style(color=5, rgbcolor={255,0,255}));
    connect(stop.on, tankController.stop) annotation (points=[-69, 0; -52, 0],
        style(color=5, rgbcolor={255,0,255}));
    connect(start.on, tankController.start) annotation (points=[-69, 30; -60,
          30; -60, 12; -52, 12], style(color=5, rgbcolor={255,0,255}));
    connect(tank1.levelSensor, tankController.level1) annotation (points=[17.25,
          40; -30,40; -30,60; -97,60; -97,-50; -42,-50; -42,-22],        style(
          color=3, rgbcolor={0,0,255}));
    connect(tank2.levelSensor, tankController.level2) annotation (points=[41.25,
           -40; -18, -40; -18, -22], style(color=3, rgbcolor={0,0,255}));
    connect(tankController.valve1, valve1.valveControl) annotation (points=[-9,
           12; 10, 12; 10, 72; 18.1, 72], style(color=5, rgbcolor={255,0,255}));
    connect(tankController.valve2, valve2.valveControl) annotation (points=[-9,
           0; 30, 0; 30, 13; 40.1, 13], style(color=5, rgbcolor={255,0,255}));
    connect(tankController.valve3, valve3.valveControl) annotation (points=[-9,
           -12; 23, -12; 23, -77; 67.1, -77], style(color=5, rgbcolor={255,0,
            255}));
      
    connect(source.outflow1, valve1.outflow1) annotation (points=[22.5, 85.5;
          22.5, 74.75], style(
        color=0,
        rgbcolor={0,0,0},
        thickness=2));
      
  end ControlledTanks;
    
  package Utilities "Utility components for the examples" 
    model TankController "Controller for tank system" 
      extends StateGraph.Interfaces.PartialStateGraphIcon;
      parameter Temporary.SetRealParameter limit=0.98 "Limit level of tank 1" 
        annotation (extent=[-64,76; -44,96]);
      parameter Temporary.SetRealParameter waitTime=3 "Wait time" 
        annotation (extent=[-91,76; -71,96]);
        
      InitialStep s1(nIn=2) 
                     annotation (extent=[-72,30; -52,50]);
      MakeProduct makeProduct(limit=limit, waitTime=waitTime) 
        annotation (extent=[-20,25; 10,55]);
      Transition T1(condition=start) annotation (extent=[-50,50; -30,30]);
      Transition T2(condition=level2<0.001) 
        annotation (extent=[27,50; 47,30]);
      Transition T3(condition=stop) 
        annotation (extent=[-33,-11; -13,9],     rotation=-90);
      Step s2(nOut=2) 
              annotation (extent=[-50,-60; -30,-40]);
      Transition T4(condition=start) 
        annotation (extent=[0,-11; 20,9],     rotation=90);
      Transition T5(condition=shut) annotation (extent=[-6,-60; 14,-40]);
      Step emptyTanks annotation (extent=[22,-60; 42,-40]);
      Transition T6(condition=level1+level2<0.001) 
        annotation (extent=[45,-60; 65,-40]);
      Modelica.Blocks.Interfaces.BooleanInput start 
        annotation (extent=[-120, 50; -100, 70]);
      Modelica.Blocks.Interfaces.BooleanInput stop 
        annotation (extent=[-120, -10; -100, 10]);
      Modelica.Blocks.Interfaces.BooleanInput shut 
        annotation (extent=[-120, -70; -100, -50]);
      Modelica.Blocks.Interfaces.RealInput level1 
        annotation (extent=[-70, -120; -50, -100], rotation=90);
      Modelica.Blocks.Interfaces.RealInput level2 
        annotation (extent=[50, -120; 70, -100], rotation=90);
      Modelica.Blocks.Interfaces.BooleanOutput valve1 
        annotation (extent=[100, 55; 110, 65]);
      Modelica.Blocks.Interfaces.BooleanOutput valve2 
        annotation (extent=[100, -5; 110, 5]);
      Modelica.Blocks.Interfaces.BooleanOutput valve3 
        annotation (extent=[100, -65; 110, -55]);
      Modelica.Blocks.Sources.BooleanExpression setValve1(y=makeProduct.fillTank1.active) 
        annotation (extent=[20,73; 80,92]);
      Modelica.Blocks.Sources.BooleanExpression setValve2(y=makeProduct.fillTank2.active or emptyTanks.active) 
        annotation (extent=[-25,-89; 80,-68]);
      Modelica.Blocks.Sources.BooleanExpression setValve3(y=makeProduct.emptyTank2.active or emptyTanks.active) 
        annotation (extent=[-26,-100; 80,-80]);
    equation 
        
      annotation (
        Diagram(Rectangle(extent=[-100,100; 100,-100],   style(color=0,
                rgbcolor={0,0,0}))),
        Icon(
          Text(
            extent=[-100, 68; -32, 54],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="start"),
          Text(
            extent=[-100, 6; -32, -8],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="stop"),
          Text(
            extent=[-100, -54; -32, -68],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="shut"),
          Text(
            extent=[-94, -82; -18, -96],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="level1"),
          Text(
            extent=[24, -84; 96, -98],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="level2"),
          Text(
            extent=[31, 68; 99, 54],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="valve1"),
          Text(
            extent=[33, 9; 101, -5],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="valve2"),
          Text(
            extent=[34, -53; 102, -67],
            style(
              color=0,
              fillColor=0,
              fillPattern=1),
            string="valve3")),
        Coordsys(grid=[1, 1], component=[20, 20]));
      connect(s1.outPort[1], T1.inPort) 
                                     annotation (points=[-51.5,40; -44,40],
          style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(T1.outPort, makeProduct.inPort) annotation (points=[-38.5,40; -21,
            40],  style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(makeProduct.outPort, T2.inPort) annotation (points=[10.5,40; 33,40],
                  style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(T5.outPort, emptyTanks.inPort[1]) 
                                             annotation (points=[5.5,-50; 21,
            -50],  style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(emptyTanks.outPort[1], T6.inPort) 
                                             annotation (points=[42.5,-50; 51,
            -50],  style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(setValve1.y, valve1) 
        annotation (points=[83,82.5; 90,82.5; 90,60; 105,60], style(color=5));
      connect(setValve2.y, valve2) 
        annotation (points=[85.25,-78.5; 90,-78.5; 90,0; 105,0],
                                                              style(color=5));
      connect(setValve3.y, valve3) annotation (points=[85.3,-90; 95,-90; 95,-60;
              105,-60], style(color=5));
      connect(makeProduct.suspend[1], T3.inPort) 
                                              annotation (points=[-12.5,24.5;
              -12.5,12; -23,12; -23,3],
                                     style(color=0, rgbcolor={0,0,0}));
      connect(T3.outPort, s2.inPort[1]) 
                                     annotation (points=[-23,-2.5; -23,-20; -66,
            -20; -66,-50; -51,-50],        style(color=0, rgbcolor={0,0,0}));
      connect(T4.outPort, makeProduct.resume[1]) 
                                              annotation (points=[10,0.5; 10,15;
              2.5,15; 2.5,24],       style(color=0, rgbcolor={0,0,0}));
      connect(level1, makeProduct.level1) annotation(points=[-60,-110; -60,-80;
            -80,-80; -80,20; -30,20; -30,28; -22,28], style(color=3, rgbcolor={
              0,0,255}));
      connect(s2.outPort[1], T5.inPort) annotation(points=[-29.5,-49.75; -30,
            -49.75; -30,-50; 0,-50], style(color=0, rgbcolor={0,0,0}));
      connect(s2.outPort[2], T4.inPort) annotation(points=[-29.5,-50.25; -29,
            -50; -8,-50; -8,-25; 10,-25; 10,-5],
                                            style(color=0, rgbcolor={0,0,0}));
      connect(T2.outPort, s1.inPort[1]) annotation(points=[38.5,40; 70,40; 70,
            70; -84,70; -84,40; -73,40; -73,40.5],
                                             style(color=0, rgbcolor={0,0,0}));
      connect(T6.outPort, s1.inPort[2]) annotation(points=[56.5,-50; 70,-50; 70,
            70; -84,70; -84,40; -74,40; -73,39.5],
                                             style(color=0, rgbcolor={0,0,0}));
    end TankController;
      
    model MakeProduct 
      extends StateGraph.PartialCompositeStep;
      parameter StateGraph.Temporary.SetRealParameter limit=0.98 
          "Limit level of tank 1" 
        annotation (extent=[-60,40; -20,60]);
      parameter StateGraph.Temporary.SetRealParameter waitTime=3 "Wait time" 
        annotation (extent=[-120,40; -80,60]);
        
      Modelica.Blocks.Interfaces.RealInput level1 
        annotation (extent=[-190,-140; -150,-100]);
      annotation (Diagram);
      Step fillTank1 annotation (extent=[-140,-10; -120,10]);
      Transition T1(condition=level1 > limit) 
        annotation (extent=[-110,-10; -90,10]);
      Step fillTank2 annotation (extent=[-10,-10; 10,10]);
      Transition T3(condition=level1 < 0.001) 
        annotation (extent=[20,-10; 40,10]);
      Step emptyTank2 annotation (extent=[120,-10; 140,10]);
      Step wait1 annotation (extent=[-80,-10; -60,10]);
      Transition T2(enableTimer=true, waitTime=waitTime) 
        annotation (extent=[-50,-10; -30,10]);
      Step wait2 annotation (extent=[54,-10; 74,10]);
      Transition T4(enableTimer=true, waitTime=waitTime) 
        annotation (extent=[82,-10; 102,10]);
    equation 
      connect(fillTank1.inPort[1], inPort) 
                                        annotation (points=[-141,0; -160,0],
          style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(fillTank1.outPort[1], T1.inPort) 
                                            annotation (points=[-119.5,0; -104,
            0],  style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(fillTank2.outPort[1], T3.inPort) 
                                            annotation (points=[10.5,0; 26,0],
           style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(emptyTank2.outPort[1], outPort) 
                                           annotation (points=[140.5,0; 155,0],
           style(
          color=0,
          fillColor=0,
          fillPattern=1));
      connect(wait1.outPort[1], T2.inPort) 
                                        annotation (points=[-59.5,0; -44,0],
          style(color=0, rgbcolor={0,0,0}));
      connect(T2.outPort, fillTank2.inPort[1]) 
                                            annotation (points=[-38.5,0; -11,0],
                style(color=0, rgbcolor={0,0,0}));
      connect(T1.outPort, wait1.inPort[1]) 
                                        annotation (points=[-98.5,0; -81,0],
           style(color=0, rgbcolor={0,0,0}));
      connect(wait2.outPort[1], T4.inPort) 
                                        annotation (points=[74.5,0; 88,0],
          style(color=0, rgbcolor={0,0,0}));
      connect(T3.outPort, wait2.inPort[1]) 
        annotation (points=[31.5,0; 53,0],   style(color=0, rgbcolor={0,0,0}));
      connect(T4.outPort,emptyTank2.inPort[1]) 
                                             annotation (points=[93.5,0; 119,0],
                 style(color=0, rgbcolor={0,0,0}));
    end MakeProduct;
      
    connector inflow 
        "Inflow connector (this is a copy from Isolde Dressler's master thesis project)" 
        
        import Units = Modelica.SIunits;
        
      Units.VolumeFlowRate Fi "inflow";
      annotation (Icon(Polygon(points=[-100, -100; 0, 100; 100, -100; -100, -100],
               style(
              color=0,
              thickness=2,
              fillColor=7,
              fillPattern=1))));
    end inflow;
      
    connector outflow 
        "Outflow connector (this is a copy from Isolde Dressler's master thesis project)" 
        
        import Units = Modelica.SIunits;
        
      Units.VolumeFlowRate Fo "outflow";
      Boolean open "valve open";
      annotation (Icon(Polygon(points=[-100, 100; 0, -100; 100, 100; -100, 100],
               style(
              color=0,
              thickness=2,
              fillColor=7,
              fillPattern=1))));
    end outflow;
      
    model valve 
        "Simple valve model (this is a copy from Isolde Dressler's master thesis project)" 
        
      annotation (
        Diagram(Line(points=[0, -60; 0, 0], style(color=5))),
        Icon(
          Line(points=[20, 20; 20, 20], style(
              color=0,
              thickness=2,
              fillColor=86,
              fillPattern=1)),
          Text(
            extent=[-131, 125; 136, 67],
            string="%name",
            style(
              color=3,
              rgbcolor={0,0,255},
              fillColor=86,
              rgbfillColor={191,0,95},
              fillPattern=1)),
          Line(points=[0, 0; 0, -60], style(color=5))),
        Coordsys(grid=[1, 1], component=[20, 20]));
      Modelica.Blocks.Interfaces.BooleanInput valveControl 
        annotation (extent=[-20, -100; 20, -60], rotation=90);
      inflow inflow1 annotation (extent=[0, -50; 100, 50], rotation=90);
      outflow outflow1 annotation (extent=[-100, -50; 0, 50], rotation=90);
    equation 
      outflow1.Fo = inflow1.Fi;
      outflow1.open = valveControl;
    end valve;
      
    model Tank 
        "Simple tank model (this is a copy from Isolde Dressler's master thesis project)" 
        
      Modelica.Blocks.Interfaces.RealOutput levelSensor 
        annotation (extent=[-61, -30; -81, -10]);
        
      inflow inflow1 annotation (extent=[-55, 60; -45, 70]);
      outflow outflow1 annotation (extent=[55, -50; 65, -40]);
      annotation (
        Diagram,
        Icon(
          Text(
            extent=[-122, -82; 88, -42],
            style(fillColor=86, fillPattern=1),
            string="%name"),
          Rectangle(extent=[-60, 60; 80, -40], style(
              color=0,
              thickness=2,
              fillColor=7,
              fillPattern=1)),
          Rectangle(extent=DynamicSelect([-60, -40; -60, -40], [-60, -40; 80, (
                -40 + level*100)]), style(
              color=0,
              gradient=2,
              thickness=2,
              fillColor=86,
              fillPattern=1))),
        Coordsys(grid=[1, 1], component=[20, 20]));
      Real level "Tank level in % of max height";
      parameter Real A=1 "ground area of tank in m²";
      parameter Real a=0.2 "area of drain hole in m²";
      parameter Real hmax=1 "max height of tank in m";
      constant Real g=Modelica.Constants.g_n;
    equation 
      der(level) = (inflow1.Fi - outflow1.Fo)/(hmax*A);
      if outflow1.open then
        outflow1.Fo = sqrt(max(0,2*g*hmax*level))*a;
      else
        outflow1.Fo = 0;
      end if;
      levelSensor = level;
        
    end Tank;
      
    model Source 
        "Simple source model (this is a copy from Isolde Dressler's master thesis project)" 
        
      outflow outflow1 annotation (extent=[-10, -60; 10, -40]);
      parameter Real maxflow=1 "maximal flow out of source";
      annotation (Icon(Rectangle(extent=[-80, 40; 80, -40], style(
              color=0,
              thickness=2,
              fillColor=7,
              fillPattern=1)), Text(
            extent=[-144, 54; 152, 114],
            style(fillColor=7, fillPattern=1),
            string="%name")));
    equation 
      if outflow1.open then
        outflow1.Fo = maxflow;
      else
        outflow1.Fo = 0;
      end if;
    end Source;
      
    model CompositeStep 
      extends StateGraph.PartialCompositeStep;
      annotation (Diagram);
      Transition transition3(enableTimer=true, waitTime=1) 
        annotation (extent=[-64,50; -44,70],    style(color=0));
      Transition transition4(enableTimer=true, waitTime=1) 
        annotation (extent=[-64,-10; -44,10],    style(color=0));
      Step step3 annotation (extent=[-10,50; 10,70],    style(color=0));
      Step step4 annotation (extent=[-10,-10; 10,10],    style(color=0));
      Transition transition5(enableTimer=true, waitTime=2) 
        annotation (extent=[36,50; 56,70],    style(color=0));
      Transition transition6(enableTimer=true, waitTime=2) 
        annotation (extent=[36,-10; 56,10],    style(color=0));
      Transition transition4a(enableTimer=true, waitTime=1) 
        annotation (extent=[-64,-70; -44,-50],     style(color=0));
      Step step4a annotation (extent=[-10,-70; 10,-50],     style(color=0));
      Transition transition6a(enableTimer=true, waitTime=2) 
        annotation (extent=[36,-70; 56,-50],     style(color=0));
      Step initStep annotation (extent=[-140,-10; -120,10]);
      Step exitStep annotation (extent=[120,-10; 140,10]);
      Alternative Alternative1(nBranches=3) annotation(extent=[-100,-90; 96,90]);
    equation 
      connect(transition3.outPort, step3.inPort[1]) 
        annotation (points=[-52.5,60; -11,60], style(color=0));
      connect(step3.outPort[1], transition5.inPort) 
        annotation (points=[10.5,60; 42,60], style(color=0));
      connect(transition4.outPort, step4.inPort[1]) 
        annotation (points=[-52.5,0; -11,0],       style(color=0));
      connect(step4.outPort[1], transition6.inPort) 
        annotation (points=[10.5,0; 42,0],       style(color=0));
      connect(transition4a.outPort, step4a.inPort[1]) 
        annotation (points=[-52.5,-60; -11,-60],     style(color=0));
      connect(step4a.outPort[1], transition6a.inPort) 
        annotation (points=[10.5,-60; 42,-60],     style(color=0));
      connect(initStep.inPort[1], inPort) 
        annotation (points=[-141,0; -160,0],   style(color=0));
      connect(exitStep.outPort[1], outPort) 
        annotation (points=[140.5,0; 155,0],   style(color=0));
      connect(initStep.outPort[1], Alternative1.inPort) annotation(points=[-119.5,
            0; -102.94,0], style(color=0, rgbcolor={0,0,0}));
      connect(Alternative1.outPort, exitStep.inPort[1]) 
        annotation(points=[97.96,0; 119,0], style(color=0, rgbcolor={0,0,0}));
      connect(transition3.inPort, Alternative1.split[1]) annotation(points=[-58,
            60; -77.95,60], style(color=0, rgbcolor={0,0,0}));
      connect(transition4.inPort, Alternative1.split[2]) annotation(points=[-58,
            0; -67.975,0; -67.975,-7.10543e-015; -77.95,-7.10543e-015], style(
            color=0, rgbcolor={0,0,0}));
      connect(transition4a.inPort, Alternative1.split[3]) annotation(points=[
            -58,-60; -67.975,-60; -67.975,-60; -77.95,-60], style(color=0,
            rgbcolor={0,0,0}));
      connect(transition5.outPort, Alternative1.join[1]) annotation(points=[
            47.5,60; 73.95,60], style(color=0, rgbcolor={0,0,0}));
      connect(transition6.outPort, Alternative1.join[2]) annotation(points=[
            47.5,0; 60.725,0; 60.725,-7.10543e-015; 73.95,-7.10543e-015], style(
            color=0, rgbcolor={0,0,0}));
      connect(transition6a.outPort, Alternative1.join[3]) annotation(points=[
            47.5,-60; 60.725,-60; 60.725,-60; 73.95,-60], style(color=0,
            rgbcolor={0,0,0}));
    end CompositeStep;
      
    model CompositeStep1 
      extends PartialCompositeStep;
      Transition transition1(
        enableTimer=false,
        waitTime=0,
        condition=time > 8) 
        annotation (extent=[-60,20; -40,40],    style(color=0));
      Step initStep annotation (extent=[-140,-10; -120,10]);
      Step exitStep annotation (extent=[110,-10; 130,10]);
      annotation(Coordsys(
          extent=[-150,-150; 150,150],
          grid=[1,1],
          component=[20,20]), Diagram);
      CompositeStep2 compositeStep11(waitTime=3) 
                                           annotation(extent=[-20,15; 10,45]);
      CompositeStep2 compositeStep12(waitTime=2) 
                                           annotation(extent=[-20,-45; 10,-15]);
      Transition transition2(
        condition=time > 4,
        enableTimer=false,
        waitTime=0) 
        annotation (extent=[-61,-40; -41,-20],  style(color=0));
      Transition transition3(enableTimer=false, waitTime=0) 
        annotation (extent=[29,20; 49,40],      style(color=0));
      Transition transition4(enableTimer=false, waitTime=0) 
        annotation (extent=[29,-40; 49,-20],    style(color=0));
      Alternative Alternative1 annotation(extent=[-100,-60; 89,60]);
    equation 
      connect(exitStep.outPort[1], outPort) 
        annotation(points=[130.5,0; 155,0], style(color=0, rgbcolor={0,0,0}));
      connect(initStep.inPort[1], inPort) 
        annotation(points=[-141,0; -160,0], style(color=0, rgbcolor={0,0,0}));
      connect(transition1.outPort, compositeStep11.inPort) 
        annotation(points=[-48.5,30; -21,30],
                                            style(color=0, rgbcolor={0,0,0}));
      connect(transition2.outPort, compositeStep12.inPort) 
                                                     annotation(points=[-49.5,
            -30; -21,-30], style(color=0, rgbcolor={0,0,0}));
      connect(compositeStep11.outPort, transition3.inPort) 
        annotation(points=[10.5,30; 35,30],
                                          style(color=0, rgbcolor={0,0,0}));
      connect(compositeStep12.outPort, transition4.inPort) 
                                                     annotation(points=[10.5,
            -30; 35,-30], style(color=0, rgbcolor={0,0,0}));
      connect(initStep.outPort[1], Alternative1.inPort) annotation(points=[-119.5,
            0; -102.835,0], style(color=0, rgbcolor={0,0,0}));
      connect(Alternative1.outPort, exitStep.inPort[1]) 
        annotation(points=[90.89,0; 109,0], style(color=0, rgbcolor={0,0,0}));
      connect(transition1.inPort, Alternative1.split[1]) annotation(points=[-54,
            30; -78.7375,30], style(color=0, rgbcolor={0,0,0}));
      connect(transition2.inPort, Alternative1.split[2]) annotation(points=[-55,
            -30; -78.7375,-30], style(color=0, rgbcolor={0,0,0}));
      connect(transition3.outPort, Alternative1.join[1]) annotation(points=[
            40.5,30; 67.7375,30], style(color=0, rgbcolor={0,0,0}));
      connect(transition4.outPort, Alternative1.join[2]) annotation(points=[
            40.5,-30; 67.7375,-30], style(color=0, rgbcolor={0,0,0}));
    end CompositeStep1;
      
    model CompositeStep2 
      extends PartialCompositeStep;
      Transition transition(enableTimer=true, waitTime=waitTime) 
        annotation (extent=[-30,-10; -10,10],   style(color=0));
      Step initStep annotation (extent=[-140,-10; -120,10]);
      Step exitStep annotation (extent=[110,-10; 130,10]);
      annotation(Coordsys(
          extent=[-150,-150; 150,150],
          grid=[1,1],
          component=[20,20]), Diagram);
      parameter Temporary.SetRealParameter waitTime=2 
          "waiting time in this composite step" 
                                            annotation(extent=[-80,30; -50,50]);
    equation 
      connect(exitStep.outPort[1], outPort) 
        annotation(points=[130.5,0; 155,0], style(color=0, rgbcolor={0,0,0}));
      connect(initStep.inPort[1], inPort) 
        annotation(points=[-141,0; -160,0], style(color=0, rgbcolor={0,0,0}));
      connect(initStep.outPort[1], transition.inPort) 
        annotation(points=[-119.5,0; -24,0], style(color=0, rgbcolor={0,0,0}));
      connect(transition.outPort, exitStep.inPort[1]) 
        annotation(points=[-18.5,0; 109,0], style(color=0, rgbcolor={0,0,0}));
    end CompositeStep2;
      
  end Utilities;
    annotation (Documentation(info="<html>
  
</html>"));
end Examples;
  
package Interfaces "Connectors and partial models" 
  extends Modelica.Icons.Library;
    
  connector Step_in "Input port of a step" 
    output Boolean occupied "true, if step is active" annotation (Hide=true);
    input Boolean set "true, if transition fires and step is activated" 
      annotation (Hide=true);
    annotation (
   Icon(Polygon(points=[-100, 100; 100, 0; -100, -100; -100, 100],
             style(color=0, fillColor=0))), Diagram(Polygon(points=[0,50; 100,0;
              0,-50; 0,50],                   style(color=0, fillColor=0)),
          Text(
          extent=[-141,100; 100,60],
          string="%name",
          style(color=0))),
      Coordsys(grid=[1,1], component=[20,20]),
        Documentation(info="<html>
 
</html>"));
  end Step_in;
    
  connector Step_out "Output port of a step" 
    output Boolean available "true, if step is active" annotation (Hide=true);
      
    input Boolean reset "true, if transition fires and step is deactivated" 
      annotation (Hide=true);
      
    annotation (Icon(Rectangle(extent=[-100,100; 100,-100],
                                                          style(color=0,
              fillColor=7))), Diagram(
                           Rectangle(extent=[-100,50; 0,-50],   style(color=0,
              fillColor=7)),          Text(
          extent=[-100,100; 186,58],
          string="%name",
          style(color=0))),
      Coordsys(grid=[1,1], component=[20,20]),
        Documentation(info="<html>
 
</html>"));
  end Step_out;
    
  connector Transition_in "Input port of a transition" 
    input Boolean available 
        "true, if step connected to the transition input is active" 
      annotation (Hide=true);
    output Boolean reset 
        "true, if transition fires and the step connected to the transition input is deactivated"
      annotation (Hide=true);
      
    annotation (Icon(Polygon(points=[-100, 100; 100, 0; -100, -100; -100, 100],
             style(color=0, fillColor=0))), Diagram(Polygon(points=[0,50; 100,0;
              0,-50; 0,50],                   style(color=0, fillColor=0)),
          Text(
          extent=[-141,100; 100,60],
          string="%name",
          style(color=0))),
      Coordsys(grid=[1,1], component=[20,20]),
        Documentation(info="<html>
 
</html>"));
  end Transition_in;
    
  connector Transition_out "Output port of a transition" 
    input Boolean occupied 
        "true, if step connected to the transition output is active" 
      annotation (Hide=true);
    output Boolean set 
        "true, if transition fires and step connected to the transition output becomes active"
      annotation (Hide=true);
      
    annotation (Icon(Rectangle(extent=[-100,100; 100,-100],
                                                          style(color=0,
              fillColor=7))), Diagram(Text(
          extent=[-100,100; 146,60],
          string="%name",
          style(color=0)), Rectangle(extent=[-100,50; 0,-50],   style(color=0,
              fillColor=7))),
      Coordsys(grid=[1,1], component=[20,20]),
        Documentation(info="<html>
 
</html>"));
  end Transition_out;
    
  connector CompositeStep_resume 
      "Input port of a step (used for resume connector of a CompositeStep)" 
    output Boolean occupied "true, if step is active" annotation (Hide=true);
    input Boolean set "true, if transition fires and step is activated" 
      annotation (Hide=true);
    annotation (Icon(Polygon(points=[-100, 100; 100, 0; -100, -100; -100, 100],
             style(color=0, fillColor=0))), Diagram(Rectangle(extent=[0,0; 0,0],
            style(
            color=7,
            rgbcolor={255,255,255},
            pattern=0))),
        Documentation(info="<html>
  
</html>"));
  end CompositeStep_resume;
    
  connector CompositeStep_suspend 
      "Output port of a step (used for suspend connector of a CompositeStep)" 
      
    output Boolean available "true, if step is active" annotation (Hide=true);
      
    input Boolean reset "true, if transition fires and step is deactived" 
      annotation (Hide=true);
      
    annotation (Icon(Rectangle(extent=[-100,100; 100,-100],
                                                          style(color=0,
              fillColor=7))), Diagram(Rectangle(extent=[0,0; 0,0],
            style(
            color=7,
            rgbcolor={255,255,255},
            pattern=0))),
        Documentation(info="<html>
  
</html>"));
  end CompositeStep_suspend;
    
  connector CompositeStepStatePort_in 
      "Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are inputs)" 
      
    annotation(Documentation(info="<html>
  
</html>"));
    input Boolean suspend 
        "= true, if suspend transition of CompositeStep fires";
    input Boolean resume "= true, if resume transition of CompositeStep fires";
    flow output Real activeSteps "Number of active steps in the CompositeStep";
  end CompositeStepStatePort_in;
    
  connector CompositeStepStatePort_out 
      "Communication port between a CompositeStep and the ordinary steps within the CompositeStep (suspend/resume are outputs)" 
      
    annotation(Documentation(info="<html>
 
</html>"));
    output Boolean suspend 
        "= true, if suspend transition of CompositeStep fires";
    output Boolean resume "= true, if resume transition of CompositeStep fires";
    flow input Real activeSteps "Number of active steps in the CompositeStep";
    annotation (Icon, Diagram);
  end CompositeStepStatePort_out;
    
  partial block PartialStep 
      "Partial step with one input and one output transition port" 
      
    annotation(Documentation(info="<html>
 
</html>"));
    parameter Integer nIn(min=0) = 1 "Number of input connections";
    parameter Integer nOut(min=0) = 1 "Number of output connections";
      
    /* localActive is introduced since component 'Step' has Boolean variable 'active'
     and component 'StepWithSignal' has connector instance 'active' defined
     and both components inherit from PartialStep
  */
    output Boolean localActive 
        "= true if step is active, otherwise the step is not active" 
      annotation (Hide=true);
    Interfaces.Step_in inPort[nIn] "Vector of step input connectors" 
      annotation (extent=[-120, 10; -100,-10]);
    Interfaces.Step_out outPort[nOut] "Vector of step output connectors" 
      annotation (extent=[100,5; 110,-5]);
    protected 
    outer Interfaces.CompositeStepState stateGraphRoot;
    CompositeStepStatePort_in subgraphStatePort;
    Boolean newActive "Value of active in the next iteration" 
      annotation (Hide=true);
    Boolean oldActive "Value of active when CompositeStep was aborted";
  initial equation 
    pre(newActive) = pre(localActive);
    pre(oldActive) = pre(localActive);
  equation 
    connect(subgraphStatePort, stateGraphRoot.subgraphStatePort);
      
    // Check that connections to the connector are correct
    for i in 1:nIn loop
        
    assert(cardinality(inPort[i]) <= 1,
  "Connector inPort[" + String(i) + "] of the step is connected 
to more than one transition");
    end for;
      
    for i in 1:nOut loop
        
    assert(cardinality(outPort[i]) <= 1,
  "Connector outPort[" + String(i) + "] of the step is connected 
to more than one transition");
    end for;
      
    // set active state
    localActive = pre(newActive);
    newActive = if subgraphStatePort.resume then 
                     oldActive else 
                     ( StateGraph.Temporary.anyTrue(inPort.set) or 
                          localActive
                       and not StateGraph.Temporary.anyTrue(outPort.reset))
                     and not subgraphStatePort.suspend;
      
    // Remember state for suspend action
    when subgraphStatePort.suspend then
      oldActive = localActive;
    end when;
      
    // Report state to CompositeStep
    subgraphStatePort.activeSteps = if localActive then 1.0 else 0.0;
      
    // Report state to input and output transitions
    for i in 1:nIn loop
      inPort[i].occupied = if i == 1 then localActive else 
                                          inPort[i-1].occupied or 
                                          inPort[i-1].set;
    end for;
      
    for i in 1:nOut loop
       outPort[i].available = if i == 1 then localActive else 
                                             outPort[i-1].available and not 
                                             outPort[i-1].reset;
    end for;
      
    // Default setting, if an inPort or an outPort is not connected
    for i in 1:nIn loop
      if cardinality(inPort[i]) == 0 then
        inPort[i].set = false;
      end if;
    end for;
      
    for i in 1:nOut loop
      if cardinality(outPort[i]) == 0 then
        outPort[i].reset = false;
      end if;
    end for;
    annotation(Diagram,
      Icon,
      Coordsys(grid=[1,1], component=[20,20]));
  end PartialStep;
    
  partial block PartialTransition 
      "Partial transition with input and output connections" 
    input Boolean localCondition "= true, if transition may fire" 
      annotation (Hide=true);
    parameter Boolean enableTimer=false "= true, if timer is enabled" 
      annotation (Evaluate=true, Dialog(group="Timer"));
    parameter Modelica.SIunits.Time waitTime(min=0) = 0 
        "Wait time before transition fires" 
      annotation (Dialog(group="Timer", enable=enableTimer));
    output Modelica.SIunits.Time t 
        "= actual waiting time (transition will fire when t > waitTime)";
    output Boolean enableFire "= true, if all firing conditions are true";
    output Boolean fire "= true, if transition fires" annotation (Hide=true);
      
    StateGraph.Interfaces.Transition_in inPort 
        "Vector of transition input connectors" 
      annotation (extent=[-50,-10; -30,10]);
    StateGraph.Interfaces.Transition_out outPort 
        "Vector of transition output connectors" 
      annotation (extent=[10,-5; 20,5]);
    protected 
    Modelica.SIunits.Time t_start 
        "Time instant at which the transition would fire, if waitTime would be zero";
    Real t_dummy;
  initial equation 
      
    pre(enableFire) = false;
  equation 
    assert(cardinality(inPort) == 1,
      "Connector inPort is not connected to exactly one other connector");
    assert(cardinality(outPort) == 1,
      "Connector outPort is not connected to exactly one other connector");
      
    // Handling of Timer
    if enableTimer then
      when enableFire then
        t_start = time;
      end when;
      t_dummy = time - t_start;
      t = if enableFire then t_dummy else 0;
      fire = enableFire and time >= t_start + waitTime;
    else
      t_start = 0;
      t_dummy = 0;
      t = 0;
      fire = enableFire;
    end if;
      
    // Determine fire setting and report it to the connected step
    enableFire = localCondition and inPort.available and not outPort.occupied;
    inPort.reset = fire;
    outPort.set = fire;
    annotation(Icon, Coordsys(grid=[1,1], component=[20,20]),
      Diagram,
      Documentation(info="<html>
 
</html>"));
  end PartialTransition;
    
  partial block PartialStateGraphIcon "Icon for a StateGraph object" 
      
    annotation (Icon(Rectangle(extent=[-100, 100; 100, -100], style(color=0,
              fillColor=7)), Text(extent=[160, 110; -160, 150], string="%name")),
          Documentation(info="<html>
 
</html>"));
  equation 
      
  end PartialStateGraphIcon;
    
  block CompositeStepState 
      "Communication channel between CompositeSteps and steps in the CompositeStep" 
      
    output Boolean suspend = false;
    output Boolean resume =  false;
    StateGraph.Interfaces.CompositeStepStatePort_out subgraphStatePort;
    annotation (
      defaultComponentName="stateGraphRoot",
      defaultComponentPrefixes="inner",
      missingInnerMessage="A \"stateGraphRoot\" component was automatically introduced.",
        Documentation(info="<html>
 
</html>"));
      
  /*
    missingInnerMessage="No \"stateGraphRoot\" component is defined on highest level
of the StateGraph. A stateGraphRoot component is automatically introduced.
In order to get rid of this message, drag StateGraph.StateGraphRoot into the
top level your model.");
*/
  equation 
    suspend = subgraphStatePort.suspend;
    resume  = subgraphStatePort.resume;
  end CompositeStepState;
    annotation (Documentation(info="<html>
 
</html>"));
end Interfaces;
  
block InitialStep "Initial step (= step that is active when simulation starts)" 
    
  output Boolean active 
      "= true if step is active, otherwise the step is not active";
    
  extends Interfaces.PartialStep(localActive = active);
    
  annotation (
    Coordsys(
      extent=[-100, -100; 100, 100],
      grid=[1, 1],
      component=[20, 20]),
    Window(
      x=0.21,
      y=0.03,
      width=0.52,
      height=0.7),
    Icon(
      Text(
        extent=[-200, 110; 200, 150],
        string="%name",
        style(fillColor=7)),
      Rectangle(extent=[-100, 100; 100, -100], style(color=0, fillColor=
              DynamicSelect(7, if active > 0.5 then 2 else 7))),
      Rectangle(extent=[-80, 80; 80, -80], style(color=0))),
    Diagram(Rectangle(extent=[-100, 100; 100, -100], style(color=0)), Rectangle(
          extent=[-80, 80; 80, -80], style(color=0))),
      Documentation(info="<html>
  
</html>"));
initial equation 
  active = true;
end InitialStep;
  
block InitialStepWithSignal 
    "Initial step (= step that is active when simulation starts). Connector 'active' is true when the step is active" 
    
  extends Interfaces.PartialStep(localActive = active);
    
  annotation (Diagram(Rectangle(extent=[-100, 100; 100, -100], style(color=0)),
      Rectangle(extent=[-80,80; 80,-80],   style(color=0))),
       Icon(
      Text(
        extent=[-200, 110; 200, 150],
        string="%name",
        style(fillColor=7)),
      Rectangle(extent=[-100, 100; 100, -100], style(color=0, fillColor=
              DynamicSelect(7, if active > 0.5 then 2 else 7))),
      Text(
        extent=[-92,-50; 94,-68],
        string="active",
        style(color=0)),
      Rectangle(extent=[-80,80; 80,-80],   style(color=0))),
      Documentation(info="<html>
  
</html>"));
  Modelica.Blocks.Interfaces.BooleanOutput active 
    annotation (extent=[-10, -120; 10, -100], rotation=-90);
initial equation 
  active = true;
end InitialStepWithSignal;
  
block Step "Ordinary step (= step that is not active when simulation starts)" 
    
  output Boolean active 
      "= true if step is active, otherwise the step is not active";
    
  extends Interfaces.PartialStep(localActive = active);
    
  annotation (
    Coordsys(
      extent=[-100, -100; 100, 100],
      grid=[1, 1],
      component=[20, 20]),
    Window(
      x=0.21,
      y=0.03,
      width=0.52,
      height=0.7),
    Icon(Text(
        extent=[-200, 110; 200, 150],
        string="%name",
        style(fillColor=7)), Rectangle(extent=[-100, 100; 100, -100], style(
            color=0, fillColor=DynamicSelect(7, if active > 0.5 then 2 else 7)))),
    Diagram(Rectangle(extent=[-100, 100; 100, -100], style(color=0))),
      Documentation(info="<html>
  
</html>"));
initial equation 
  active = false;
end Step;
  
block StepWithSignal 
    "Ordinary step (= step that is not active when simulation starts). Connector 'active' is true when the step is active" 
    
  extends Interfaces.PartialStep(localActive = active);
    
  annotation (Diagram(Rectangle(extent=[-100, 100; 100, -100], style(color=0))),
       Icon(
      Text(
        extent=[-200, 110; 200, 150],
        string="%name",
        style(fillColor=7)),
      Rectangle(extent=[-100, 100; 100, -100], style(color=0, fillColor=
              DynamicSelect(7, if active > 0.5 then 2 else 7))),
      Text(
        extent=[-92, -74; 94, -92],
        string="active",
        style(color=0))),
      Documentation(info="<html>
  
</html>"));
  Modelica.Blocks.Interfaces.BooleanOutput active 
    annotation (extent=[-10, -120; 10, -100], rotation=-90);
initial equation 
  active = false;
end StepWithSignal;
  
block Transition 
    "Transition where the fire condition is set by a modification of variable condition" 
    
  input Boolean condition=true 
      "= true, if transition may fire (time varying expression)" 
    annotation (Dialog(group="Fire condition"));
    
  extends Interfaces.PartialTransition(final localCondition=condition);
    
  annotation (
    Coordsys(
      extent=[-100, -100; 100, 100],
      grid=[1, 1],
      component=[20, 20]),
    Window(
      x=0.26,
      y=0.01,
      width=0.42,
      height=0.78),
    Icon(
      Rectangle(extent=[-10, 100; 10, -100], style(color=0, fillColor=
              DynamicSelect(0, if enableFire > 0.5 then 2 else 0))),
      Line(points=[-30, 0; -10, 0], style(color=0)),
      Text(extent=[200, 110; -200, 150], string="%name"),
      Text(
        extent=[20,20; 200,45],
        style(color=DynamicSelect(0, if enableTimer < 0.5 then 7 else 0)),
        string="%waitTime"),
      Text(
        extent=[-200,-120; 200,-145],
        string="%condition",
        style(color=DynamicSelect(0, if condition > 0.5 then 2 else 0)))),
    Diagram(Line(points=[-31, 0; -11, 0], style(color=0)), Rectangle(extent=[-10,
             100; 10, -100], style(color=0, fillColor=0))),
      Documentation(info="<html>
  
</html>"));
    
end Transition;
  
block TransitionWithSignal 
    "Transition where the fire condition is set by a Boolean input signal" 
    
  Modelica.Blocks.Interfaces.BooleanInput condition 
    annotation (extent=[-20, -140; 20, -100], rotation=90);
    
  extends Interfaces.PartialTransition(final localCondition=condition);
    
  annotation (
    Coordsys(
      extent=[-100, -100; 100, 100],
      grid=[1, 1],
      component=[20, 20]),
    Window(
      x=0.26,
      y=0.01,
      width=0.42,
      height=0.78),
    Icon(
      Text(
        extent=[20,20; 200,45],
        style(color=DynamicSelect(0, if enableTimer < 0.5 then 7 else 0)),
        string="%waitTime"),
      Rectangle(extent=[-10, 100; 10, -100], style(color=0, fillColor=
              DynamicSelect(0, if enableFire > 0.5 then 2 else 0))),
      Line(points=[-30, 0; -10, 0], style(color=0)),
      Text(extent=[200, 110; -200, 150], string="%name"),
      Ellipse(extent=[7,-81; -7,-95],    style(
          color=DynamicSelect(0, if condition > 0.5 then 2 else 0),
          fillColor=DynamicSelect(0, if condition > 0.5 then 2 else 0),
          fillPattern=1))),
    Diagram(Line(points=[-31, 0; -11, 0], style(color=0)), Rectangle(extent=[-10,
             100; 10, -100], style(color=0, fillColor=0))),
      Documentation(info="<html>
  
</html>"));
end TransitionWithSignal;
  
block Alternative 
    "Alternative splitting of execution path (use component between two steps)" 
    
  annotation (
    Icon(
      Line(points=[-80,100; 80,100], style(
          color=0,
          rgbcolor={0,0,0},
          pattern=3)),
      Line(points=[-80,-100; 80,-100], style(
          color=0,
          rgbcolor={0,0,0},
          pattern=3)),
        Line(points=[-100,0; -80,0], style(color=0, rgbcolor={0,0,0})),
        Line(points=[80,0; 100,0], style(color=0, rgbcolor={0,0,0}))),
    Diagram(Line(points=[-100,0; -80,0], style(color=0, rgbcolor={0,0,0})),
          Line(points=[80,0; 100,0], style(color=0, rgbcolor={0,0,0}))),
    Coordsys(grid=[1,1],  component=[20,20]),
      Documentation(info="<html>
  
</html>"));
  parameter Integer nBranches(min=1)=2 "Number of alternative branches";
  Interfaces.Transition_in inPort 
                            annotation (extent=[-106,-3; -100,3]);
  Interfaces.Transition_out outPort 
                              annotation (extent=[100,-2; 104,2]);
  Step_in_forAlternative join[nBranches] 
                                    annotation(extent=[78,100; 80,-100]);
  Step_out_forAlternative split[nBranches] 
                                      annotation(extent=[-78,100; -80,-100]);
    
  protected 
connector Step_in_forAlternative 
      "Input port of a step (has special icon for usage in component 'Alternative')" 
      
  output Boolean occupied "true, if step is active" 
    annotation (Hide=true);
  input Boolean set "true, if transition fires and step is activated" 
    annotation (Hide=true);
      
  annotation (Icon(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=9,
            rgbfillColor={175,175,175}))),Diagram(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=9,
            rgbfillColor={175,175,175}))),
    Coordsys(grid=[1,1], component=[20,20]));
end Step_in_forAlternative;
    
connector Step_out_forAlternative 
      "Output port of a step (has special icon for usage in component 'Alternative')" 
      
  output Boolean available "true, if step is active" 
    annotation (Hide=true);
  input Boolean reset "true, if transition fires and step is deactivated" 
    annotation (Hide=true);
      
  annotation (Icon(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=9,
            rgbfillColor={175,175,175}))),
                            Diagram(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=9,
            rgbfillColor={175,175,175}))),
    Coordsys(grid=[1,1], component=[20,20]));
end Step_out_forAlternative;
    
equation 
  // Check connections of connectors
    
  assert(cardinality(inPort) == 1,
    "Connector inPort is not connected to exactly one other connector");
    
  assert(cardinality(outPort) == 1,
    "Connector outPort is not connected to exactly one other connector");
    
  for i in 1:nBranches loop
      
     assert(cardinality(split[i]) == 1,
       "Connector split[" + String(i) + "] is not connected to exactly one other connector");
      
     assert(cardinality(join[i]) == 1,
       "Connector join[" + String(i) + "] is not connected to exactly one other connector");
      
  end for;
    
  // Propagate flags between the connectors
    
  for i in 1:nBranches loop
     split[i].available = if i==1 then inPort.available else 
                                       split[i-1].available and not split[i-1].reset;
      
  end for;
  join.occupied = fill(outPort.occupied, nBranches);
  inPort.reset  = StateGraph.Temporary.anyTrue(split.reset);
  outPort.set   = StateGraph.Temporary.anyTrue(join.set);
end Alternative;
  
block Parallel 
    "Parallel splitting of execution path (use component between two transitions)" 
    
  annotation (
    Icon(
      Line(points=[-100,0; -80,0],    style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1)),
      Line(points=[80,0; 100,0], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1)),
      Line(points=[-80,100; 80,100], style(
          color=0,
          rgbcolor={0,0,0},
          pattern=3)),
      Line(points=[-80,-100; 80,-100], style(
          color=0,
          rgbcolor={0,0,0},
          pattern=3))),
    Diagram(
         Line(points=[-100,0; -80,0], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1)), Line(points=[80,0; 100,0], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=7,
          rgbfillColor={255,255,255},
          fillPattern=1))),
    Coordsys(grid=[1,1],  component=[20,20]),
      Documentation(info="<html>
  
</html>"));
  parameter Integer nBranches(min=1)=2 
      "Number of parallel branches that are executed in parallel";
  Interfaces.Step_in inPort annotation (extent=[-106,-3; -100,3]);
  Interfaces.Step_out outPort annotation (extent=[100,-2; 104,2]);
  Transition_in_forParallel join[nBranches] 
                                    annotation(extent=[75,100; 80,-100]);
  Transition_out_forParallel split[nBranches] 
                                      annotation(extent=[-75,100; -80,-100]);
    
  protected 
connector Transition_in_forParallel 
      "Input port of a transition (has special icon for usage in component 'Parallel')" 
      
  input Boolean available 
        "true, if step connected to the transition input is active" 
    annotation (Hide=true);
  output Boolean reset 
        "true, if transition fires and the step connected to the transition input is deactivated"
    annotation (Hide=true);
      
  annotation (Icon(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255})),
        Rectangle(extent=[-100,100; 100,-100], style(
            color=7,
            rgbcolor={255,255,255},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Line(points=[-100,100; -100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Line(points=[100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))),             Diagram(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=7,
            rgbcolor={255,255,255},
            fillColor=7,
            rgbfillColor={255,255,255})),
        Line(points=[-100,100; -100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Line(points=[100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))),
    Coordsys(grid=[1,1], component=[20,20]));
end Transition_in_forParallel;
    
connector Transition_out_forParallel 
      "Output port of a transition (has special icon for usage in component 'Parallel')" 
      
  input Boolean occupied 
        "true, if step connected to the transition output is active" 
    annotation (Hide=true);
  output Boolean set 
        "true, if transition fires and step connected to the transition output becomes active"
    annotation (Hide=true);
      
  annotation (Icon(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=7,
            rgbfillColor={255,255,255})),
        Rectangle(extent=[-100,100; 100,-100], style(
            color=7,
            rgbcolor={255,255,255},
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Line(points=[-100,100; -100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Line(points=[100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))),
                            Diagram(
        Rectangle(extent=[-100,100; 100,-100], style(
            color=7,
            rgbcolor={255,255,255},
            fillColor=7,
            rgbfillColor={255,255,255})),
        Line(points=[-100,100; -100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1)),
        Line(points=[100,100; 100,-100], style(
            color=0,
            rgbcolor={0,0,0},
            thickness=2,
            fillColor=7,
            rgbfillColor={255,255,255},
            fillPattern=1))),
    Coordsys(grid=[1,1], component=[20,20]));
end Transition_out_forParallel;
    
equation 
  // Check connections of connectors
    
  assert(cardinality(inPort) == 1,
    "Connector inPort is not connected to exactly one other connector");
    
  assert(cardinality(outPort) == 1,
    "Connector outPort is not connected to exactly one other connector");
    
  for i in 1:nBranches loop
      
     assert(cardinality(split[i]) == 1,
       "Connector split[" + String(i) + "] is not connected to exactly one other connector");
      
     assert(cardinality(join[i]) == 1,
       "Connector join[" + String(i) + "] is not connected to exactly one other connector");
      
  end for;
    
  // Propagate flags between the connectors
  split.set  = fill(inPort.set, nBranches);
  join.reset = fill(outPort.reset, nBranches);
  inPort.occupied   = StateGraph.Temporary.anyTrue(split.occupied);
  outPort.available = StateGraph.Temporary.allTrue(join.available);
end Parallel;
  
partial block PartialCompositeStep 
    "Superclass of a subgraph, i.e., a composite step that has internally a StateGraph" 
    
  parameter Integer nSuspend = 1 "Number of suspend ports" annotation(Dialog(group="Exception connections"));
  parameter Integer nResume = 1 "Number of resume ports" annotation(Dialog(group="Exception connections"));
    
  /* The modification of stateGraphRoot is with respect to the "inner"
     definition, i.e., it is reported to all components that are
     within the CompositeStep
  */
  inner outer StateGraph.Interfaces.CompositeStepState stateGraphRoot(
                  suspend = StateGraph.Temporary.anyTrue(suspend.reset) or outerState.subgraphStatePort.suspend,
                  resume =  StateGraph.Temporary.anyTrue(resume.set) or outerState.subgraphStatePort.resume) 
      "Communication port between the CompositeStep and the steps within the CompositeStep";
  output Boolean active 
      "= true if step is active, otherwise the step is not active";
  StateGraph.Interfaces.Step_in inPort annotation (extent=[-170,10; -150,-10]);
  StateGraph.Interfaces.Step_out outPort annotation (extent=[150,5; 160,-5]);
  StateGraph.Interfaces.CompositeStep_suspend suspend[nSuspend] 
    annotation (extent=[-70,-160; -80,-150],    rotation=-90);
  StateGraph.Interfaces.CompositeStep_resume resume[nResume] 
    annotation (extent=[65,-170; 85,-150],     rotation=90);
    
  annotation (
    Coordsys(
      extent=[-150,-150; 150,150],
      grid=[1,1],
      component=[20,20]),
    Window(
      x=0.21,
      y=0.03,
      width=0.52,
      height=0.7),
    Icon(
      Text(
        extent=[-250,160; 250,200],
        string="%name",
        style(fillColor=7)),
      Rectangle(extent=[-150,150; 150,-150], style(
            color=0,
            rgbcolor={0,0,0},
            fillColor=DynamicSelect(7, if active > 0.5 then 2 else 7))),
      Text(
        extent=[4,-115; 145,-130],
        string="resume",
        style(color=0)),
      Text(
        extent=[-144,-114; -3,-129],
        style(color=0),
        string="suspend")),
    Diagram(Rectangle(extent=[-150,150; 150,-150],   style(color=0))),
      Documentation(info="<html>
  
</html>"));
  block OuterState 
    Interfaces.CompositeStepStatePort_in subgraphStatePort 
        "port connected to outer stateGraphRoot";
  end OuterState;
  OuterState outerState;
    
  protected 
  model InnerState 
    outer Interfaces.CompositeStepState stateGraphRoot;
  end InnerState;
  InnerState innerState;
    
  Boolean newActive "Value of active in the next iteration" 
    annotation (Hide=true);
  Integer activeSteps "Number of active steps within the CompositeStep";
initial equation 
    
  pre(newActive) = pre(active);
equation 
  // connect to outer CompositeStep
    
  connect(outerState.subgraphStatePort, stateGraphRoot.subgraphStatePort);
  outerState.subgraphStatePort.activeSteps = if active then 1.0 else 0.0;
    
  // set active flag  of CompositeStep
  activeSteps = -integer(innerState.stateGraphRoot.subgraphStatePort.activeSteps);
  active = pre(newActive);
    
  /* The CompositeStep is active if
     - at least one step within the CompositeStep is active, and
     - the suspend transition does not fire, and
     - the suspend transition of a higher level CompositeStep does not fire or
     - no step within the CompositeStep is active, and
     - the resume transition fires or the resume transition of
       a higher level CompositeStep fires.
  */
  // newActive = activeSteps > 0 and not suspend.reset or resume.set;
  newActive = activeSteps > 0 and not StateGraph.Temporary.anyTrue(suspend.reset) and not 
              outerState.subgraphStatePort.suspend or 
              StateGraph.Temporary.anyTrue(resume.set) or outerState.subgraphStatePort.resume;
    
  // Report state to suspend and resume transitions
    
  for i in 1:nResume loop
    resume[i].occupied = if i == 1 then active else 
                                        resume[i-1].occupied or 
                                        resume[i-1].set;
      
  end for;
    
  for i in 1:nSuspend loop
     suspend[i].available = if i == 1 then active else 
                                           suspend[i-1].available and not 
                                           suspend[i-1].reset;
      
  end for;
    
  /* Check that connections to the connectors are correct
     and set appropriate defaults if necessary
  */
    
  for i in 1:nSuspend loop
      
  assert(cardinality(suspend[i]) <= 1,
"Connector suspend[" + String(i) + "] of the CompositeStep is connected 
to more than one transition");
      
    if cardinality(suspend[i]) == 0 then
      suspend[i].reset = false;
        
    end if;
      
  end for;
    
  for i in 1:nResume loop
      
  assert(cardinality(resume[i]) <= 1,
"Connector resume[" + String(i) + "] of the CompositeStep is connected 
to more than one transition");
      
    if cardinality(resume[i]) == 0 then
      resume[i].set = false;
        
    end if;
      
  end for;
    
  /* Zero sized connectors are not yet fully supported in
     Dymola. This requires to set the dimension of the connector
     to 1, if it should have a dimension of zero. This requires
     to set the connector variables to a default value in this case
  */
    
  if cardinality(inPort) < 2 then
    inPort.occupied = false;
    inPort.set = false;
      
  end if;
    
  if cardinality(outPort) < 2 then
    outPort.available = false;
    outPort.reset = false;
      
  end if;
    
  // Check inPort/outPort connections
    
  assert(cardinality(inPort) <= 2,
"Connector inPort of the CompositeStep has more than 2 connections.
It should have only one connection from the outside to the
inPort and one connection to a step inside the CompositeStep.");
    
  assert(cardinality(outPort) <= 2,
"Connector outPort of the CompositeStep has more than 2 connections.
It should have only one connection from the outPort to the 
outside to the CompositeStep and one connection from a step 
inside the CompositeStep to the outPort connector.");
    
end PartialCompositeStep;
  
block StateGraphRoot 
    "Root of a StateGraph (has to be present on the highest level of a StateGraph)" 
    
  extends StateGraph.Interfaces.CompositeStepState;
  output Integer activeSteps "Number of active steps within the stategraph";
    
  annotation (
    defaultComponentName="stateGraphRoot",
    defaultComponentPrefixes="inner",
    Icon(
      Text(
        extent=[-200, 110; 200, 150],
        string="%name",
        style(fillColor=7)),
      Rectangle(extent=[-100, 100; 100, -100], style(color=0, fillColor=
              DynamicSelect(7, if active > 0.5 then 2 else 7))),
      Text(
        extent=[-92, 78; 96, 34],
        style(color=0),
        string="root"),
      Rectangle(extent=[-82, -6; -44, -40], style(color=0, rgbcolor={0,0,0})),
      Line(points=[0, 10; 0, -60], style(color=0, rgbcolor={0,0,0})),
      Rectangle(extent=[48, -6; 86, -40], style(color=0, rgbcolor={0,0,0})),
      Polygon(points=[-12, -16; 0, -22; -12, -28; -12, -16], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0})),
      Line(points=[-44, -22; -12, -22], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0},
          fillPattern=1)),
      Polygon(points=[36, -16; 48, -22; 36, -28; 36, -16], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0})),
      Line(points=[0, -22; 36, -22], style(
          color=0,
          rgbcolor={0,0,0},
          fillColor=0,
          rgbfillColor={0,0,0},
          fillPattern=1))),
    Documentation(info="<html>
<p>
On the highest level of a StateGraph, an instance of StateGraphRoot
has to be present. If it is not within in a model, it is automatically
included by a Modelica translator due to an appropriate annotation.
Practically, this means that it need not be present in a
StateGraph model.
</p>
<p>
The StateGraphRoot object is needed, since all Step objects have
an \"outer\" reference to communicate with the \"nearest\" CompositeStep
(which inherits from PartialCompositeStep), especially to abort
a CompositeStep via the \"suspend\" port. Even if no \"CompositeStep\" is present,
on highest level a corresponding \"inner\" definition is needed
and is provided by the StateGraphRoot object.
</p>
</html>"));
equation 
  activeSteps = -integer(subgraphStatePort.activeSteps);
end StateGraphRoot;
  
package Temporary 
    "Components that will be provided by other libraries in the future" 
type SetRealParameter = Real "Define Real parameter (GUI not yet satisfactory)"
  annotation (
  Dialog,
  defaultComponentName="name",
  defaultComponentPrefixes="parameter",
  Coordsys(
    extent=[-100, -100; 100, 100],
    grid=[2, 2],
    component=[20, 20]),
  Window(
    x=0.29,
    y=0.23,
    width=0.6,
    height=0.6),
  Icon(
    Rectangle(extent=[-100, 40; 100, -40], style(
          color=0,
          fillColor=31,
          rgbfillColor={245,245,245},
          fillPattern=11)),
    Text(extent=[-150, 90; 150, 50], string="%name ="),
    Text(
      extent=[-96, 15; 96, -15],
      string="%value",
      style(
        color=0,
        fillColor=2,
        fillPattern=1))),
  Diagram,
  Documentation(info="<html>
<p>
This is an <b>experimental component</b> to define a 
<b>Real parameter</b>
in the <b>diagram layer</b>. The idea is to drag the icon from the 
package browser into the diagram layer. Then a window pops
up in which the properties of this parameter can be defined
(such as the default value). The name and default value of the
parameter are displayed in the icon of this component. Whenever
clicking on it, the dialog to change parameter settings pops-up.
</p>
<p>
In Dymola, the described property is not fully available.
Currently, when dragging this component in the diagram layer,
a dialog pops up in which the properties of the parameter
can be defined. However, afterwards, the parameter is not
visible in the diagram layer. Making it visible requires to
go into the text layer and add an annotation with the
component size, resulting for example in:
</p>
<pre>
  <b>parameter</b> StateGraph.SetRealParameter name = 2 
                       <b>annotation</b>(extent=[-10,-10; 10,10]);
</pre>
<p>
This change makes the parameter icon visible in the
diagram layer. However, clicking on this icon has no
effect. Changing parameter properties, such as the default
value, still requires to go in to the text layer.
</p>
</html>"));
    
  extends Modelica.Icons.Library;
    
  function anyTrue 
      "Returns true, if at least on element of the Boolean input vector is true" 
      
    extends Modelica.Icons.Function;
    input Boolean b[:];
    output Boolean result;
  algorithm 
    result := false;
    for i in 1:size(b,1) loop
       result := result or b[i];
    end for;
      annotation (Documentation(info="<html>
  
</html>"));
  end anyTrue;
    
  function allTrue 
      "Returns true, if all elements of the Boolean input vector are true" 
    extends Modelica.Icons.Function;
    input Boolean b[:];
    output Boolean result;
  algorithm 
    result := true;
    for i in 1:size(b,1) loop
       result := result and b[i];
    end for;
      annotation (Documentation(info="<html>
  
</html>"));
  end allTrue;
    
  block RadioButton 
      "Button that sets its output to true when pressed and is reset when an element of 'reset' becomes true" 
      
    parameter Modelica.SIunits.Time buttonTimeTable[:] 
        "Time instants where button is pressend and released";
    input Boolean reset[:]={false} 
        "Reset button to false, if an element of reset becomes true" 
      annotation (Dialog(group="Time varying expressions"));
      
    annotation (Icon(
        onClick=setVariable(on, true),
        Rectangle(extent=[-100, -100; 100, 100], style(
            color=10,
            thickness=2,
            fillColor=DynamicSelect(8, if on > 0.5 then 2 else 8),
            fillPattern=DynamicSelect(11, if on > 0.5 then 12 else 11))),
        Text(
          extent=[-80, -40; 80, 40],
          style(color=0),
          string="%name")), Diagram,
        Documentation(info="<html>
  
</html>"));
    Modelica.Blocks.Interfaces.BooleanOutput on 
      annotation (extent=[100, -10; 120, 10], style(color=0));
    protected 
    Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
  algorithm 
    on := table.y;
    when pre(reset) then
      on := false;
    end when;
  end RadioButton;
    
  model NumericValue "Show value of Real input signal dynamically" 
    parameter Integer precision(min=0) = 3 
        "Number of significant digits to be shown";
    parameter Boolean hideConnector=false 
        "= true, if connector is not shown in the dynamic object diagram";
      
    annotation (Icon(Rectangle(extent=[100, 50; -100, -50], style(
            color=3,
            fillColor=7,
            fillPattern=13)), Text(extent=[-90, -46; 90, 34], string=
              DynamicState(" ", realString(Value, 1, integer(precision))))),
        Diagram,
        Documentation(info="<html>
  
</html>"));
    Modelica.Blocks.Interfaces.RealInput Value "Real value to be shown in icon"
      annotation (
      Dialog(enable=hideConnector),
      visible=not boolean(hideConnector),
      extent=[-140, -20; -100, 20],
      style(fillColor=9, rgbfillColor={175,175,175}));
      
  end NumericValue;
    
  model IndicatorLamp 
      "Dynamically show Boolean input signal (false/true = white/green color)" 
      
    Modelica.Blocks.Interfaces.BooleanInput u 
      annotation(extent=[-140, -20; -100, 20]);
      
    annotation (Icon(Ellipse(extent=[-100, -100; 100, 100], style(
            pattern=0,
            gradient=3,
            fillColor=DynamicSelect(30, if u > 0.5 then 2 else 30))),
            Text(extent=[-150,150; 150,110],string="%name")),Diagram,
        Documentation(info="<html>
  
</html>"));
      
  end IndicatorLamp;
    
  annotation (Documentation(info="<html>
<p>
This library is just temporarily present. The components of
this library will be present in the future in the Modelica
standard library (with the new block connectors) and in the
UserInteraction library that is currently under development.
</p>
</html>"));
    
end Temporary;
end StateGraph;
