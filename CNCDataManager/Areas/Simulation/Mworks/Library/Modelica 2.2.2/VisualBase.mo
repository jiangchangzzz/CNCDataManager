model VisualBase
  //constant Real VisualObject = 987000;
  Real ObjectType;
  output Real Form = 987000 + ObjectType  annotation(Hide=false);
  annotation (
    Coordsys(extent=[-100, -100; 100, 100]));
end VisualBase;
