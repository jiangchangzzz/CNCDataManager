within Modelica.Mechanics.MultiBody.Examples.Elementary;
model PointGravityWithPointMasses 
  "Two point masses in a point gravity field (rotation of bodies is neglected)" 
  import SI = Modelica.SIunits;
  extends Modelica.Icons.Example;
  inner Modelica.Mechanics.MultiBody.World world(
    gravityType=2,
    mue=1,
    gravitySphereDiameter=0.1) annotation (extent=[-20, -20; 0, 0]);
  Modelica.Mechanics.MultiBody.Parts.PointMass body1(
    m=1,
    v_0_start={1,0,0},
    r_0_start={0,0.6,0},
    sphereDiameter=0.1,
    initType=Modelica.Mechanics.MultiBody.Types.Init.PositionVelocity) 
    annotation (extent=[-20, 20; 0, 40]);
  Modelica.Mechanics.MultiBody.Parts.PointMass body2(
    m=1,
    r_0_start={0.6,0.6,0},
    v_0_start={0.6,0,0},
    sphereDiameter=0.1,
    initType=Modelica.Mechanics.MultiBody.Types.Init.PositionVelocity) 
    annotation (extent=[20, 20; 40, 40]);
  Modelica.Mechanics.MultiBody.Parts.PointMass body3(
    m=1,
    v_0_start={0.6,0,0},
    sphereDiameter=0.1,
    initType=Modelica.Mechanics.MultiBody.Types.Init.PositionVelocity,
    r_0_start={0,0.8,0}) 
    annotation (extent=[-20,60; 0,80]);
  Modelica.Mechanics.MultiBody.Parts.PointMass body4(
    m=1,
    v_0_start={0.6,0,0},
    sphereDiameter=0.1,
    initType=Modelica.Mechanics.MultiBody.Types.Init.PositionVelocity,
    r_0_start={0.3,0.8,0}) 
    annotation (extent=[20,60; 40,80]);
  Forces.Spring spring(showMass=false, c=10) annotation (extent=[0,60; 20,80]);
equation 
  
  annotation (
    Diagram,
    experiment(StopTime=2),
    Documentation(info="<HTML>
<p>
This model demonstrates the usage of model Parts.PointMass in a 
point gravity field. The PointMass model has the feature that
that rotation is not taken into account and can therefore also not be
calculated. This example demonstrates two cases where this does not matter:
If a PointMass is not connected (body1, body2), the orientation object in
these point masses is set to a unit rotation.
If a PointMass is connected by a line force element, such as
the used Forces.LineForceWithMass component, then the orientation object
is set to a unit rotation within the line force element.
These are the two cases where the rotation is automatically set to
a default value, when the physical system does not provide the equations.
</p>
<p align=\"center\">
<IMG SRC=\"./Images/MultiBody/Examples/Elementary/PointGravityWithPointMasses.png\">
</p>
</HTML>"),
    experimentSetupOutput);
  connect(spring.frame_a, body3.frame_a) annotation (points=[0,70; -10,70],
      style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
  connect(spring.frame_b, body4.frame_a) annotation (points=[20,70; 30,70],
      style(
      color=10,
      rgbcolor={95,95,95},
      thickness=2));
end PointGravityWithPointMasses;
