within Modelica.Mechanics.MultiBody.Examples.Loops;
model Fourbar1 
  "One kinematic loop with four bars (with only revolute joints; 5 non-linear equations)" 
  
  import SI = Modelica.SIunits;
  extends Modelica.Icons.Example;
  
  output SI.Angle j1_phi "angle of revolute joint j1";
  output SI.Position j2_s "distance of prismatic joint j2";
  output SI.AngularVelocity j1_w "axis speed of revolute joint j1";
  output SI.Velocity j2_v "axis velocity of prismatic joint j2";
  annotation (
    experiment(StopTime=5),
    Documentation(info="<html>
<p>
This is a simple kinematic loop consisting of 6 revolute joints, 1 prismatic joint
and 4 bars that is often used as basic constructing unit in mechanisms.
This example demonstrates that usually no particular knowledge
of the user is needed to handle kinematic loops. 
Just connect the joints and bodies together according
to the real system. In particular <b>no</b> cut-joints or a spanning tree has 
to be determined. In this case, the initial condition of the angular velocity
of revolute joint j1 is set to 300 deg/s in order to drive this loop.
</p>
<p align=\"center\">
<IMG SRC=\"./Images/MultiBody/Examples/Loops/Fourbar1.png\" ALT=\"model Examples.Loops.Fourbar1\">
</p>
</html>
"), Diagram);
  
  inner Modelica.Mechanics.MultiBody.World world annotation (extent=[-100, -80; -80, -60]);
  Modelica.Mechanics.MultiBody.Joints.Revolute j1(
    n={1,0,0},
    initType=Modelica.Mechanics.MultiBody.Types.Init.PositionVelocity,
    enforceStates=true,
    w_start=300) annotation (extent=[-54, -40; -34, -20]);
  Modelica.Mechanics.MultiBody.Joints.Prismatic j2(
    n={1,0,0},
    s_start=-0.2,
    boxWidth=0.05) annotation (extent=[10, -80; 30, -60]);
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder b1(r={0,0.5,0.1}, diameter=0.05) 
    annotation (extent=[-40, -8; -20, 12], rotation=90);
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder b2(r={0,0.2,0}, diameter=0.05) 
    annotation (extent=[40, -60; 60, -40], rotation=90);
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder b3(r={-1,0.3,0.1}, diameter=0.05) 
    annotation (extent=[38, 20; 18, 40]);
  Modelica.Mechanics.MultiBody.Joints.Revolute rev(n={0,1,0}) 
    annotation (extent=[40, -32; 60, -12], rotation=90);
  Modelica.Mechanics.MultiBody.Joints.Revolute rev1 annotation (extent=[60, 0; 80, 20]);
  Modelica.Mechanics.MultiBody.Joints.Revolute j3(n={1,0,0}) annotation (extent=[-60, 40; -40, 60]);
  Modelica.Mechanics.MultiBody.Joints.Revolute j4(n={0,1,0}) annotation (extent=[-32, 60; -12, 80]);
  Modelica.Mechanics.MultiBody.Joints.Revolute j5(n={0,0,1}) annotation (extent=[0, 70; 20, 90]);
  Modelica.Mechanics.MultiBody.Parts.FixedTranslation b0(animation=false, r={1.2,0,0}) 
    annotation (extent=[-40, -80; -20, -60]);
equation 
  connect(j2.frame_b, b2.frame_a) annotation (points=[30,-70; 50,-70; 50,-60],
      style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(j1.frame_b, b1.frame_a) annotation (points=[-34,-30; -30,-30; -30,-8],
      style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(rev.frame_a, b2.frame_b) 
    annotation (points=[50,-32; 50,-40], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(rev.frame_b, rev1.frame_a) 
    annotation (points=[50,-12; 50,10; 60,10], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(rev1.frame_b, b3.frame_a) annotation (points=[80,10; 90,10; 90,30; 38,
        30], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(world.frame_b, j1.frame_a) annotation (points=[-80,-70; -66,-70; -66,
        -30; -54,-30], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(b1.frame_b, j3.frame_a) annotation (points=[-30,12; -30,28; -72,28;
        -72,50; -60,50], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(j3.frame_b, j4.frame_a) annotation (points=[-40,50; -34,50; -42,70;
        -32,70], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(j4.frame_b, j5.frame_a) 
    annotation (points=[-12,70; 0,70; 0,80], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(j5.frame_b, b3.frame_b) annotation (points=[20,80; 30,80; 30,54; 4,54;
        4,30; 18,30], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(b0.frame_a, world.frame_b) 
    annotation (points=[-40,-70; -80,-70], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(b0.frame_b, j2.frame_a) 
    annotation (points=[-20,-70; 10,-70], style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  j1_phi = j1.phi;
  j2_s = j2.s;
  j1_w = j1.w;
  j2_v = j2.v;
end Fourbar1;
