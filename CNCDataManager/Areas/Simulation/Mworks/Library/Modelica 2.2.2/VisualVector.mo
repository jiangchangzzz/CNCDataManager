model VisualVector
  annotation(Dymola(checkSum="297349889:1716946689"));
  parameter Real r0[3] = {0, 0, 0} "Origin of vector object.";
  input Boolean pushing=false;
  input Real Size[3] "Size of vector in local coordinate system.";
  constant String Shape = "vector" "Name of shape";
  parameter Real Material[4] = {1, 0, 0, 0.5} "Color and specular coefficient.";
  parameter String category = "force" "force, torque, velocity, acceleration, angular velocity, angular acceleration";
  input Real S[3,3] "3 x 3 transformation matrix.";
  input Real r[3] "Position of visual object.";
  output Real Form annotation(Hide=false);
  output Real rxvisobj[3] annotation(Hide=false);
  output Real ryvisobj[3] annotation(Hide=false);
  output Real rvisobj[3] annotation(Hide=false);
  output Real size[3] annotation(Hide=false);
  output Real material annotation(Hide=false);
  output Real extra annotation(Hide=false);
  annotation (
    Coordsys(extent=[-100, -100; 100, 100]),
    Icon(
      Rectangle(extent=[-100, -100; 80, 60], style(color=3 , fillColor=7 )),
      Polygon(points=[-100, 60; -80, 100; 100, 100; 80, 60; -100, 60], style(color=3 , fillColor=8 )),
      Polygon(points=[100, 100; 100, -60; 80, -100; 80, 60; 100, 100], style(color=3 , fillColor=9 )),
      Text(extent=[-100, -100; 80, 60], string="%category", style(color=0 ))));
equation
  /* Outputs to file. */
  Form = (987000 + PackShape(Shape))*1E20;
  rxvisobj = {1,0,0};
  ryvisobj = {0,1,0};
  rvisobj  = r + S*r0;
  size = S*Size;

  material = PackMaterial(Material[1], Material[2], Material[3], Material[4]);

  extra = (if pushing then 10 else 0) +(if category=="force" then 0 
     else if category=="torque" then 1 
     else if category=="velocity" then 2
     else if category=="acceleration" then 3
     else if category=="angular velocity" or category=="angular_velocity" then 4
     else if category=="angular acceleration" or category=="angular_acceleration" then 5 else -1);
end VisualVector;
