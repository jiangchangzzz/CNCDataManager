package Z_axis

  package Drivers "控制驱动模型"
    model Servo
      parameter Real Udc = 311 "额定电压";
      parameter Real T_PWM = 0.0001 "PWM周期";
      parameter Integer p = 1 "Number of pole pairs";
      parameter Modelica.SIunits.Voltage VCellNominal = 311 "Nominal cell voltage" 
        annotation (Dialog(tab = "Battery"));
      parameter Modelica.SIunits.Current ICellMax = 800 "Maximum admissable cell current" 
        annotation (Dialog(tab = "Battery"));
      parameter Modelica.SIunits.Resistance RsCell = 0.006 "Internal cell resistor" 
        annotation (Dialog(tab = "Battery"));
      parameter Integer nsBatt(min = 1) = 1 "Number of series connected cells" 
        annotation (Dialog(tab = "Battery"));
      parameter Integer npBatt(min = 1) = 1 "Number of parallel connected cells" 
        annotation (Dialog(tab = "Battery"));
      parameter Modelica.SIunits.Current IConverterMax = 400 "Maximum admissible converter DC supply current" 
        annotation (Dialog(tab = "AC/DC converter"));
     parameter Real ks = 60 "位置环增益" 
        annotation (Dialog(group = "PI控制参数"));
      // parameter Real Ts = 100 "位置环积分常数" 
      // annotation (Dialog(group = "PI控制参数"));
      parameter Real kv = 0.5 "速度环增益" 
        annotation (Dialog(group = "PI控制参数"));
      parameter Real Tv = 0.015 "速度环积分常数" 
        annotation (Dialog(group = "PI控制参数"));
      parameter Real kq = kd "q轴电流增益值" 
        annotation (Dialog(group = "PI控制参数"));
      parameter Real Tq = Td "q轴电流积分常数" 
        annotation (Dialog(group = "PI控制参数"));
      parameter Real kd = 2.7432 "d轴电流增益值" 
        annotation (Dialog(group = "PI控制参数"));
      parameter Real Td = 0.004085 "d轴电流积分常数" 
        annotation (Dialog(group = "PI控制参数"));
      parameter Real uMax1 = 200;
      parameter Real uMax2 = 200;
      parameter Real uMax3 = 1000;
      annotation (Icon(graphics = {
        Bitmap(extent = {{-96, 98}, {102, -84}}, fileName = ".\\pictures\\驱动器.jpg"), 
        Rectangle(extent = {{-100, 100}, {100, -100}}, radius = 5, color = {0, 0, 0}, thickness = 0.5), 
        Text(extent = {{-46, -82}, {31.01, -95.42}}, color = {0, 0, 0}, textString = "伺服驱动"), 
        Text(extent = {{-40, 136}, {-40, 116}}, color = {0, 0, 0}, textString = "phi"), 
        Text(extent = {{-144, 26}, {-144, 6}}, color = {0, 0, 0}, textString = "phi_ref")}), 
        Diagram);
      Modelica.Electrical.MultiPhase.Sensors.CurrentSensor currentsensor
        annotation (Placement(transformation(origin = {232, -22}, rotation = -90, extent = {{-22, -22}, {10, 10}})));
      Components.threePhase dcac(
        IConverterMax = IConverterMax)
        annotation (Placement(transformation(extent = {{251, 36}, {220, 70}})));
      Components.Clark clark
        annotation (Placement(transformation(extent = {{146, -190}, {88, -110}})));
      Components.Park park
        annotation (Placement(transformation(extent = {{70, -178}, {9, -90}})));
      Modelica.Blocks.Math.Feedback feedback4
        annotation (Placement(transformation(extent = {{-9.15, -82.4}, {13.85, -54.4}})));
      Modelica.Blocks.Math.Feedback feedback3
        annotation (Placement(transformation(extent = {{-28.5, -19.4}, {-1.5, 6.6}})));
      Modelica.Blocks.Continuous.PI IdPI(k = kd, 
        T = Td)
        annotation (Placement(transformation(extent = {{27, -78}, {56, -48}})));
      Modelica.Blocks.Continuous.PI IqPI(k = kq, 
        T = Tq)
        annotation (Placement(transformation(extent = {{27, -24}, {58, 10}})));
      Components.rPark rPark1
        annotation (Placement(transformation(extent = {{16, 38}, {-61, -64}}, rotation = 180, origin = {-21, 76})));
      Modelica.Blocks.Interfaces.RealInput phi_ref
        annotation (Placement(transformation(extent = {{-110, 8}, {-100, 18}})));
      Modelica.Blocks.Nonlinear.Limiter VqLimiter(uMax = uMax2, 
        uMin = -uMax2)
        annotation (Placement(transformation(extent = {{81, -26}, {108, 12}})));
      Modelica.Blocks.Nonlinear.Limiter VdLimiter(uMax = uMax3, 
        uMin = -uMax3)
        annotation (Placement(transformation(extent = {{80, -84}, {106, -44}})));
      Modelica.Blocks.Math.Gain gain(
        k = p)
        annotation (Placement(transformation(extent = {{-32.5, 145}, {-2.5, 175}})));
      Modelica.Blocks.Continuous.Der der1
        annotation (Placement(transformation(extent = {{10, -12}, {-14, 14}}, rotation = 90, origin = {-113, 82.4})));
      Modelica.Blocks.Sources.Constant id(k = 0)
        annotation (Placement(transformation(extent = {{-99.7, -83}, {-72.7, -53}})));
      Modelica.Blocks.Nonlinear.Limiter IqLimiter(uMax = uMax1, 
        uMin = -uMax1)
        annotation (Placement(transformation(extent = {{-59, -20}, {-38, 8}})));
      Modelica.Blocks.Continuous.PI vPI(k = kv, 
        T = Tv)
        annotation (Placement(transformation(extent = {{-97, -20}, {-74, 8}})));
      Modelica.Blocks.Math.Feedback feedback1
        annotation (Placement(transformation(extent = {{-186, 6}, {-161, -18}})));
      Components.svpwm svpwm1(Udc = Udc, 
        T_PWM = T_PWM)
        annotation (Placement(transformation(extent = {{68, 48}, {144, 134}})));
      Modelica.Blocks.Math.Feedback feedback2
        annotation (Placement(transformation(extent = {{-123, 4}, {-104, -16}})));
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug negativeplug
        annotation (Placement(transformation(extent = {{100, 0}, {110, 10}})));
      Modelica.Blocks.Math.Gain gain1(k = ks)
        annotation (Placement(transformation(extent = {{-150, -16}, {-130, 4}})));
      BatteryIdeal batteryideal(VCellNominal = VCellNominal, 
        ICellMax = ICellMax, 
        RsCell = RsCell)
        annotation (Placement(transformation(extent = {{340, 40}, {320, 60}})));
    protected 
      Modelica.Electrical.Analog.Basic.Ground ground
        annotation (Placement(transformation(extent = {{292, -30}, {324, 0}})));
    public 
      Modelica.Mechanics.Rotational.Sensors.AngleSensor anglesensor
        annotation (Placement(transformation(extent = {{-94, 206}, {-113, 226}})));
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
        annotation (Placement(transformation(extent = {{-50, 100}, {-40, 110}})));
    equation 
      connect(dcac.pLoad, currentsensor.plug_p)
        annotation (Line(points = {{236, 36}, {236, 0}, {226, 0}}));
      connect(feedback3.u2, park.i_q)
        annotation (Line(points = {{-15, -16.8}, {-15, -112}, {12.05, -112}}, color = {0, 0, 127}));
      connect(feedback3.y, IqPI.u)
        annotation (Line(points = {{-2.85, -6.4}, {23.9, -7}}, color = {0, 0, 127}));
      connect(feedback4.y, IdPI.u)
        annotation (Line(points = {{12.7, -68.4}, {24.1, -68.4}, {24.1, -63}}, color = {0, 0, 127}));
      connect(gain.y, park.theta)
        annotation (Line(points = {{-1, 160}, {161, 160}, {161, -107.6}, {70, -107.6}}, color = {0, 0, 127}));
      connect(park.i_alpha, clark.i_alpha)
        annotation (Line(points = {{70, -134}, {90.9, -134}, {90.9, -130}}, color = {0, 0, 127}));
      connect(park.i_beta, clark.i_beta)
        annotation (Line(points = {{70, -160.4}, {90.9, -160.4}, {90.9, -170}}, color = {0, 0, 127}));
      connect(id.y, feedback4.u1)
        annotation (Line(points = {{-71.35, -68}, {-6.85, -68.4}}, color = {0, 0, 127}));
      connect(IqPI.y, VqLimiter.u)
        annotation (Line(points = {{59.55, -7}, {78.3, -7}}, color = {0, 0, 127}));
      connect(IqLimiter.y, feedback3.u1)
        annotation (Line(points = {{-36.95, -6}, {-25.8, -6.4}}, color = {0, 0, 127}));
      connect(vPI.y, IqLimiter.u)
        annotation (Line(points = {{-72.85, -6}, {-61.1, -6}}, color = {0, 0, 127}));
      connect(feedback1.u1, phi_ref)
        annotation (Line(points = {{-184, -6}, {-105, -6}, {-105, 13}}, color = {0, 0, 127}));
      connect(gain.y, rPark1.theta)
        annotation (Line(points = {{-1, 160}, {60, 160}, {60, 140}, {-86, 140}, {-86, 114.5}, 
          {-33.15, 114.5}}, color = {0, 0, 127}));
      connect(IdPI.y, VdLimiter.u)
        annotation (Line(points = {{57.45, -63}, {77.4, -64}}, color = {0, 0, 127}));
      connect(rPark1.V_alpha, svpwm1.U_alpha)
        annotation (Line(points = {{36.15, 114.5}, {71.99, 114.5}, {71.99, 122.2}}, color = {0, 0, 127}));
      connect(rPark1.V_beta, svpwm1.U_beta)
        annotation (Line(points = {{36.15, 63.5}, {71.89, 63.5}, {71.89, 68.75}}, color = {0, 0, 127}));
      connect(VqLimiter.y, rPark1.V_q)
        annotation (Line(points = {{109.4, -7}, {124, -7}, {124, 32}, {-84, 32}, {-84, 63.5}, 
          {-33.15, 63.5}}, color = {0, 0, 127}));
      connect(VdLimiter.y, rPark1.V_d)
        annotation (Line(points = {{107.3, -64}, {130, -64}, {130, 38}, {-88, 38}, {-88, 89}, 
          {-33.15, 89}}, color = {0, 0, 127}));
      connect(feedback2.y, vPI.u)
        annotation (Line(points = {{-105, -6}, {-99.3, -6}}, color = {0, 0, 127}));
      connect(der1.y, feedback2.u2)
        annotation (Line(points = {{-114, 67.2}, {-113.5, 2}}, color = {0, 0, 127}));
      connect(park.i_d, feedback4.u2)
        annotation (Line(points = {{12.05, -156}, {2.35, -156}, {2.35, -79.6}}, color = {0, 0, 127}));
      connect(currentsensor.i[1], clark.i_a)
        annotation (Line(points = {{208, -16}, {180, -16}, {180, -126}, {146, -126}}, color = {0, 0, 127}));
      connect(clark.i_b, currentsensor.i[2])
        annotation (Line(points = {{146, -150}, {180, -150}, {180, -16}, {208, -16}}, color = {0, 0, 127}));
      connect(clark.i_c, currentsensor.i[3])
        annotation (Line(points = {{146, -174}, {180, -174}, {180, -16}, {208, -16}}, color = {0, 0, 127}));
      connect(svpwm1.pulse[:], dcac.u[:])
        annotation (Line(points = {{142, 100}, {190, 100}, {190, 53}, {220, 53}}, color = {255, 0, 255}));
      connect(currentsensor.plug_n, negativeplug)
        annotation (Line(points = {{226, -32}, {226, 5}, {105, 5}}));
      connect(feedback1.y, gain1.u)
        annotation (Line(points = {{-162, -6}, {-152, -6}}, color = {0, 0, 127}));
      connect(gain1.y, feedback2.u1)
        annotation (Line(points = {{-129, -6}, {-121, -6}}, color = {0, 0, 127}));
      connect(batteryideal.p, dcac.pSupply)
        annotation (Line(points = {{320, 56}, {320, 60}, {251, 60}, {251, 63}}));
      connect(batteryideal.n, dcac.nSupply)
        annotation (Line(color = {0, 0, 0}, points = {{320, 44}, {320, 40}, {290, 40}, {290, 43}, {251, 43}}));
      connect(ground.p, batteryideal.n)
        annotation (Line(points = {{308, 0}, {308, 44}, {320, 44}}));
      connect(anglesensor.phi, feedback1.u2)
        annotation (Line(points = {{-114, 216}, {-114, 210}, {-174, 210}, {-174, 4}}, color = {0, 0, 127}));
      connect(der1.u, anglesensor.phi)
        annotation (Line(points = {{-114, 95}, {-114, 216}}, color = {0, 0, 127}));
      connect(gain.u, anglesensor.phi)
        annotation (Line(points = {{-36, 160}, {-114, 160}, {-114, 216}}, color = {0, 0, 127}));
      connect(anglesensor.flange_a, flange_a)
        annotation (Line(color = {0, 0, 0}, points = {{-94, 216}, {-94, 105}, {-45, 105}}));
    end Servo;
    package Icons "Icon definitions"
      extends FolderBlue;

      annotation (
        Documentation(info = "<html><p>This package contains images of components which can be used in further models. The icons can be utilized by implementing them in the desired class using command &quot;<i>extends</i> &quot;.</p></html>", revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"), 
        Coordsys(grid = [1, 1], component = [20, 20]));
      partial model ControlBox "Icon for a control box"

        annotation (
          Icon(
            Rectangle(extent = [-100, 100; 100, -100], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
            Rectangle(extent = [40, 20; 80, -20], style(
              color = 42, 
              rgbcolor = {127, 0, 0}, 
              fillColor = 44, 
              rgbfillColor = {255, 170, 170})), 
            Rectangle(extent = [-20, 20; 20, -20], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 76, 
              rgbfillColor = {170, 170, 255})), 
            Rectangle(extent = [-80, 20; -39, -20], style(
              color = 69, 
              rgbcolor = {0, 128, 255}, 
              fillColor = 68, 
              rgbfillColor = {170, 213, 255})), 
            Line(points = [-39, 0; -20, 0], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillPattern = 1)), 
            Line(points = [20, 0; 40, 0], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillPattern = 1)), 
            Line(points = [-100, 0; -80, 0], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillPattern = 1)), 
            Line(points = [80, 0; 100, 0], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillPattern = 1)), 
            Text(extent = [-150, 150; 150, 110], 
              string = "%name", 
              style(color = 3, rgbcolor = {0, 0, 255}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end ControlBox;

      partial model CurrentController "Icon for a current controller"

        annotation (Diagram, Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 43, 
            rgbfillColor = {255, 85, 85})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 42, 
            rgbcolor = {127, 0, 0}, 
            fillColor = 44, 
            rgbfillColor = {255, 170, 170})), 
          Line(points = [-80, -70; 75, -70], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-70, -80; -70, 80], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 30, 
            rgbfillColor = {215, 215, 215})), 
          Polygon(points = [80, -70; 68, -64; 68, -76; 80, -70], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [-70, 80; -76, 68; -64, 68; -70, 80], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            gradient = 3, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-70, -70; 58, -7], style(
            color = 42, 
            rgbcolor = {127, 0, 0}, 
            fillColor = 42, 
            rgbfillColor = {127, 0, 0}, 
            fillPattern = 1)), 
          Polygon(points = [31, -8; 41, -28; 65, -4; 31, -8], style(
            color = 42, 
            rgbcolor = {127, 0, 0}, 
            fillColor = 42, 
            rgbfillColor = {127, 0, 0})), 
          Line(points = [5, 57; 46, 13], style(
            color = 42, 
            rgbcolor = {211, 0, 0}, 
            fillColor = 1, 
            rgbfillColor = {255, 0, 0})), 
          Polygon(points = [49, 27; 32, 11; 65, -4; 49, 27], style(
            color = 1, 
            rgbcolor = {255, 0, 0}, 
            fillColor = 1, 
            rgbfillColor = {255, 0, 0})), 
          Line(points = [-70, -70; -2, 47], style(
            color = 43, 
            rgbcolor = {255, 85, 85}, 
            fillColor = 44, 
            rgbfillColor = {255, 170, 170})), 
          Polygon(points = [-21, 36; 0, 24; 5, 57; -21, 36], style(
            color = 43, 
            rgbcolor = {255, 85, 85}, 
            fillColor = 43, 
            rgbfillColor = {255, 85, 85}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end CurrentController;

      partial model DecouplingNetwork "Icon for a decoupling network model"

        annotation (Coordsys(grid = [1, 1], component = [20, 20]), Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 51, 
            rgbfillColor = {255, 255, 85})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 51, 
            rgbfillColor = {255, 255, 170})), 
          Line(points = [-90, 0; 0, -40], style(
            color = 79, 
            rgbcolor = {170, 85, 255}, 
            fillColor = 85, 
            rgbfillColor = {255, 0, 128})), 
          Line(points = [-90, 60; 2, -37], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            gradient = 3, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Line(points = [-90, -60; -1, 40], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Line(points = [-90, 0; 0, 40], style(color = 58, rgbcolor = {0, 127, 0})), 
          Line(points = [-90, 0; -15, -44], style(color = 58, rgbcolor = {0, 127, 0})), 
          Line(points = [0, 59; 0, 90], style(color = 74, rgbcolor = {0, 0, 127})), 
          Line(points = [0, 40; 90, 60], style(color = 0, rgbcolor = {0, 0, 0})), 
          Line(points = [0, -40; 90, -60], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Line(points = [0, -90; 0, -60], style(color = 74, rgbcolor = {0, 0, 127})), 
          Ellipse(extent = [-20, 60; 20, 20], style(
            color = 7, 
            rgbcolor = {255, 255, 255}, 
            gradient = 3, 
            fillColor = 51, 
            rgbfillColor = {255, 255, 170})), 
          Ellipse(extent = [-20, -20; 20, -60], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            gradient = 3, 
            fillColor = 51, 
            rgbfillColor = {255, 255, 170}))), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end DecouplingNetwork;

      partial model DiodeBridge "Icon for a diode bridge model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Polygon(points = [90, 90; 90, -90; -90, -90; 90, 90], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 8, 
            rgbfillColor = {210, 210, 210})), 
          Polygon(points = [-90, 90; 90, 90; -90, -90; -90, 90], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Ellipse(extent = [-40, 40; 40, -40], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-5, 25; 25, -5], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Line(points = [40, 0; 40, 0], style(
            color = 5, 
            rgbcolor = {255, 0, 255}, 
            fillColor = 30, 
            rgbfillColor = {215, 215, 215}, 
            fillPattern = 1)), 
          Line(points = [90, 90; -90, -90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Polygon(points = [10, 10; 0, -30; -30, 0; 10, 10], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-28, -28; 28, 28], style(color = 3, rgbcolor = {0, 0, 255}))), 
          Coordsys(grid = [1, 1], component = [20, 
            20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end DiodeBridge;

      partial model Efficiency "Icon for an efficiency model"

        annotation (Icon(
          Polygon(points = [-60, -60; -60, 60; 0, 90; 60, 60; 60, -60; -60, -60], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Line(points = [-90, 60; -80, 60; -80, 40; -60, 40], style(pattern = 0)), 
          Line(points = [-60, -30; -80, -30; -80, -60; -92, -60], style(pattern = 0)), 
          Line(points = [60, -30; 80, -30; 80, -60; 90, -60], style(pattern = 0)), 
          Line(points = [90, 60; 80, 60; 80, 30; 60, 30], style(pattern = 0)), 
          Text(
            extent = [-100, 20; -60, -20], 
            string = "1", 
            style(color = 0, rgbcolor = {0, 0, 0})), 
          Text(
            extent = [60, 20; 100, -20], 
            string = "2", 
            style(color = 0, rgbcolor = {0, 0, 0})), 
          Polygon(points = [-60, 40; -4, 40; -4, 60; -12, 60; 0, 80; 14, 60; 6, 60; 6, 30; 40, 
            30; 60, 0; 40, -30; -60, -30; -60, 40], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
          Text(extent = [-150, -100; 150, -160], string = "%name")), 
          Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end Efficiency;

      partial model Example "Icon for an example model"
        annotation (Coordsys(preserveAspectRatio = false, 
          extent = [-100, -100; 100, 100], 
          grid = [1, 1]), 
          Icon(
            Ellipse(extent = [-80, -80; 80, 80], style(rgbcolor = {95, 95, 95}, rgbfillColor = {255, 255, 255}, fillPattern = 1)), 
            Polygon(points = [-26, 40; 54, 0; -26, -40; -26, 40], style(pattern = 1, rgbcolor = {0, 0, 255}, rgbfillColor = {50, 205, 50}, fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end Example;

      partial model Example_Big_G "Icon for an example model"
        annotation (Coordsys(preserveAspectRatio = false, 
          extent = [-200, -200; 200, 200], 
          grid = [2, 2]), 
          Icon(
            Ellipse(extent = [-160, -160; 160, 160], 
              style(rgbcolor = {95, 95, 95}, rgbfillColor = {255, 255, 255}, fillPattern = 1)), 
            Polygon(points = [-52, 80; 108, 0; -52, -80; -52, 80], style(pattern = 1, rgbcolor = {0, 0, 255}, rgbfillColor = {50, 205, 50}, fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html>  <table border=\"1\" rules=\"groups\">  <thead>  <tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr>  </thead>  <tbody>  <tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr>  </tbody>  </table>  </html>"));
      end Example_Big_G;

      partial model FiringAngle "Icon for a firing angle calculator"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Text(extent = [-150, 150; 150, 110], string = "%name", style(color = 77, rgbcolor = {0, 0, 255})), 
          Line(points = [-70, 16; -54, -29; -54, 61; -48.2, 72.1; -43, 80; -39, 84; 
            -34, 85; -30, 83; -25, 78; -20, 69; -15, 58; -5.98, 32.6; 15, -29; 15, 15; 
            15.1, 60; 20.8, 72.2; 25.7, 80; 30.6, 84.6; 35.5, 86; 40.5, 83.9; 45.4, 
            78.5; 50.3, 70.1; 55.9, 57.3; 63, 37.7; 70, 16], style(color = 3, 
              rgbcolor = {0, 0, 255})), 
          Line(points = [-70, -76; -54, -76; -54, -46; -45, -46; -45, -76; 15, -76; 15, -46; 
            25, -46; 25, -76; 70, -76], style(color = 5, rgbcolor = {255, 0, 255}))), 
          Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end FiringAngle;

      partial model FluxController "Icon for a flux controller model"

        annotation (Diagram, Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 55, 
            rgbfillColor = {170, 255, 85})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 52, 
            rgbfillColor = {213, 255, 170})), 
          Ellipse(extent = [-71, 22; -29, -21], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 55, 
            rgbfillColor = {170, 255, 85})), 
          Line(points = [-72, -34; -59, -34], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Rectangle(extent = [-10, 40; 70, -40], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 55, 
            rgbfillColor = {170, 255, 85})), 
          Line(points = [12, -26; 12, -1; 58, 26], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Line(points = [-50, -90; -50, -60; -50, -60; -50, -21], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 58, 
            rgbfillColor = {0, 127, 0})), 
          Line(points = [-29, 0; -10, 0], style(color = 58, rgbcolor = {0, 127, 0})), 
          Line(points = [70, 0; 90, 0], style(color = 58, rgbcolor = {0, 127, 0})), 
          Polygon(points = [-50, -21; -54, -30; -46, -30; -50, -21], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 58, 
            rgbfillColor = {0, 127, 0})), 
          Line(points = [-90, 0; -71, 0], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0}, 
            fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end FluxController;

      partial model FluxModel "Icon for a flux model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 55, 
            rgbfillColor = {170, 255, 85})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 52, 
            rgbfillColor = {213, 255, 170})), 
          Line(points = [0, -80; 0, 75], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [0, 80; -6, 68; 6, 68; 0, 80], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-80, 0; 80, 0], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [80, 0; 68, 6; 68, -6; 80, 0], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-77, -32; 73, 31], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [77, 33; 63, 34; 68, 22; 77, 33], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [32, -76; -31, 74], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [-32, 76; -32, 62; -21, 67; -32, 76], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [35, 54; 54, 35; 65, 66; 35, 54], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 58, 
            rgbfillColor = {0, 127, 0})), 
          Line(points = [0, 0; 57, 57], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 58, 
            rgbfillColor = {0, 127, 0}))), Diagram, 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end FluxModel;

      partial model FluxWeakening "Icon for a rotor flux weakening model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 55, 
            rgbfillColor = {170, 255, 85})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 58, 
            rgbcolor = {0, 127, 0}, 
            fillColor = 52, 
            rgbfillColor = {213, 255, 170})), 
          Line(points = [-30, 30; 31, 30; 33, 10; 36, 0; 40, -13; 45, -20; 50, -25; 60, -30], 
            style(color = 58, rgbcolor = {0, 127, 0})), 
          Line(points = [-30, 30; -31, 20; -33, 10; -35, 0; -40, -13; -45, -20; -50, -25; 
            -59, -30], style(color = 58, rgbcolor = {0, 127, 0})), 
          Polygon(points = [0, 80; -6, 68; 6, 68; 0, 80], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [0, -80; 0, 77], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-80, -40; 75, -40], 
            style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 10, 
              rgbfillColor = {135, 135, 135})), 
          Polygon(points = [80, -40; 68, -34; 68, -46; 80, -40], 
            style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 10, 
              rgbfillColor = {135, 135, 135}))), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"), Coordsys(grid = [1, 1], component = [20, 20]));

      end FluxWeakening;

      partial model FolderBlue "Icon for a standard package"

        annotation (Icon(Polygon(points = [-100, -100; -100, 40; -88, 46; -80, 80; -40, 
          100; -24, 78; 20, 100; 20, -40; -100, -100], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 71, 
            rgbfillColor = {85, 170, 255}, 
            fillPattern = 1)), Polygon(points = [-100, -100; -24, 20; 
            100, 80; 20, -40; -100, -100], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 76, 
              rgbfillColor = {170, 170, 255}))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end FolderBlue;

      partial model FolderLightBlue "Icon for a folder with transient drives"

        annotation (Icon(Polygon(points = [-100, -100; -100, 40; -88, 46; -80, 80; -40, 100; 
          -24, 78; 20, 100; 20, -40; -100, -100], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 68, 
            rgbfillColor = {170, 213, 255})), Polygon(points = [-100, -100; -24, 20; 100, 
            80; 20, -40; -100, -100], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 68, 
              rgbfillColor = {170, 213, 255}))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end FolderLightBlue;

      partial model FolderYellow "Icon for a SED-package"

        annotation (Icon(Polygon(points = [-100, -100; -100, 40; -88, 46; -80, 80; -40, 
          100; -24, 78; 20, 100; 20, -40; -100, -100], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 51, 
            rgbfillColor = {255, 255, 170})), Polygon(points = [-100, -100; -24, 20; 
            100, 80; 20, -40; -100, -100], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 51, 
              rgbfillColor = {255, 255, 170}))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end FolderYellow;

      partial model Interface "Icon for a bus interface model"

        annotation (Icon(Rectangle(extent = [-50, 100; 50, -100], style(
          color = 0, 
          rgbcolor = {0, 0, 0}, 
          fillColor = 30, 
          rgbfillColor = {241, 241, 241})), 
          Text(extent = [-151, 150; 149, 110], 
            string = "%name", 
            style(color = 3, rgbcolor = {0, 0, 255})), 
          Polygon(points = [40, 10; 40, -10; 40, -20; 10, -20; -10, -40; -40, 
            -40; -40, 40; -10, 40; 10, 20; 40, 20; 40, 10], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215})), 
          Line(points = [40, 0; 50, 0], style(
            color = 6, 
            rgbcolor = {255, 204, 51}, 
            thickness = 2)), 
          Line(points = [-50, 0; -40, 0], style(
            color = 6, 
            rgbcolor = {255, 204, 51}, 
            thickness = 2, 
            fillColor = 30, 
            rgbfillColor = {215, 215, 215}))), 
          Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end Interface;

      partial model Limiter "Icon for a limiter model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 75, 
            rgbfillColor = {85, 85, 255})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Line(points = [-70, -60; -40, -60; 40, 60; 70, 60], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillPattern = 1)), 
          Polygon(points = [0, 80; -6, 68; 6, 68; 0, 80], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [0, -80; 0, 77], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-80, 0; 75, 0], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [80, 0; 68, 6; 68, -6; 80, 0], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135}))), Coordsys(grid = [1, 1], component = [
            20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end Limiter;

      partial model LimiterGray "Icon for a limiter model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 9, 
            rgbfillColor = {175, 175, 175})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 30, 
            rgbfillColor = {215, 215, 215})), 
          Line(points = [-70, -60; -40, -60; 40, 60; 70, 60], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillPattern = 1)), 
          Polygon(points = [0, 80; -6, 68; 6, 68; 0, 80], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Line(points = [0, -80; 0, 77], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Line(points = [-80, 0; 75, 0], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Polygon(points = [80, 0; 68, 6; 68, -6; 80, 0], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0}))), Coordsys(grid = [1, 1], component = [
            20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end LimiterGray;

      partial model MachineLightBlue "Icon for a transient machine model"
        annotation (Coordsys(preserveAspectRatio = false, 
          extent = [-100, -100; 100, 100], 
          grid = [1, 1], 
          scale = 0), 
          Icon(
            Rectangle(extent = [-40, -60; 80, 60], style(rgbcolor = {0, 0, 0}, rgbfillColor = {153, 204, 255}, gradient = 2)), 
            Rectangle(extent = [-60, -60; -40, 60], style(rgbcolor = {0, 0, 0}, rgbfillColor = {128, 128, 128}, gradient = 2)), 
            Rectangle(extent = [80, -10; 100, 10], style(rgbcolor = {0, 0, 0}, rgbfillColor = {95, 95, 95}, gradient = 2)), 
            Rectangle(extent = [-40, 50; 40, 70], style(rgbcolor = {95, 95, 95}, rgbfillColor = {95, 95, 95}, fillPattern = 1)), 
            Polygon(points = [-50, -90; -40, -90; -10, -30; 40, -30; 70, -90; 80, -90; 80, -100; -50, -100; -50, -90], style(
              rgbcolor = {0, 0, 0}, 
              rgbfillColor = {192, 192, 192}, 
              fillPattern = 1)), 
            Rectangle(extent = [-50, -100; 80, -85], style(rgbcolor = {0, 0, 0}, rgbfillColor = {0, 0, 0}, fillPattern = 1))), 
          Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end MachineLightBlue;

      partial model MachineYellow "Icon for a quasi stationary machine model"

        annotation (Icon(
          Rectangle(extent = [-40, 60; 80, -60], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2, 
            fillColor = 6, 
            rgbfillColor = {255, 255, 0})), 
          Rectangle(extent = [-40, 60; -60, -60], style(
            color = 10, 
            gradient = 2, 
            fillColor = 10)), 
          Rectangle(extent = [80, 10; 100, -10], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            gradient = 2, 
            fillColor = 10, 
            rgbfillColor = {95, 95, 95})), 
          Rectangle(extent = [-40, 70; 40, 50], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            fillColor = 10, 
            rgbfillColor = {95, 95, 95})), 
          Polygon(points = [-50, -90; -40, -90; -10, -20; 40, -20; 70, -90; 80, -90; 80, -100; 
            -50, -100; -50, -90], style(
              color = 0, 
              gradient = 0, 
              fillColor = 0, 
              fillPattern = 1))), Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end MachineYellow;

      partial model MBox "Icon for a measuring device"

        annotation (
          Icon(
            Rectangle(extent = [-100, 100; 100, -100], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 84, 
              rgbfillColor = {213, 170, 255})), 
            Rectangle(extent = [-70, 70; 70, -70], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {241, 241, 241})), 
            Polygon(points = [-10, 80; 10, 80; 0, 60; -10, 80], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255}, 
              fillPattern = 1)), 
            Line(points = [0, 100; 0, 80], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [0, 60; 0, -60], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              pattern = 3, 
              fillPattern = 1)), 
            Line(points = [1, 0; 0, 0; 70, 0], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              pattern = 3)), 
            Line(points = [70, -60; 50, -60; 50, 0; 50, 0], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              pattern = 3)), 
            Line(points = [69, 0; 100, 0], style(color = 79, rgbcolor = {170, 85, 255})), 
            Line(points = [70, -60; 100, -60], style(color = 0, rgbcolor = {0, 0, 0})), 
            Polygon(points = [-10, -60; 10, -60; 0, -80; -10, -60], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255}, 
              fillPattern = 1)), 
            Line(points = [0, -79; 0, -100], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [-10, 10; 10, -10], style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
            Rectangle(extent = [-120, -80; -80, -120], style(
              pattern = 0, 
              fillColor = 8, 
              rgbfillColor = {192, 192, 192}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end MBox;

      partial model PI "Icon for a Pi controller model"

        annotation (Icon(
          Rectangle(extent = [-100, -100; 100, 100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-80, 50; -43, 50], style(color = 74, rgbcolor = {0, 0, 127})), 
          Line(points = [-43, 50; -30, 50], style(color = 74, rgbcolor = {0, 0, 127})), 
          Rectangle(extent = [-30, -40; 10, -80], style(color = 10, rgbcolor = {95, 95, 
            95})), 
          Line(points = [-80, 50; -80, 0; -100, 0], style(color = 74, rgbcolor = {0, 0, 
            127})), 
          Line(points = [-80, 0; -80, -50], style(color = 74, rgbcolor = {0, 0, 127})), 
          Line(points = [-80, -49; -80, -60; -30, -60], style(color = 74, rgbcolor = {0, 
            0, 127})), 
          Rectangle(extent = [-30, 70; 10, 30], style(color = 10, rgbcolor = {95, 95, 95})), 
          Text(
            extent = [-30, 70; 10, 30], 
            string = "I", 
            style(color = 0, rgbcolor = {0, 0, 0})), 
          Text(
            extent = [-30, -40; 10, -80], 
            string = "P", 
            style(color = 0, rgbcolor = {0, 0, 0})), 
          Line(points = [10, 50; 30, 50; 30, 10], style(color = 74, rgbcolor = {0, 0, 127})), 
          Ellipse(extent = [20, 10; 40, -10], style(color = 74, rgbcolor = {0, 0, 127})), 
          Line(points = [10, -60; 30, -60; 30, -10], style(color = 74, rgbcolor = {0, 0, 
            127})), 
          Line(points = [40, 0; 100, 0], style(color = 74, rgbcolor = {0, 0, 127})), 
          Line(points = [55, 20; 65, 10; 75, 10; 85, 20], 
            style(color = 74, rgbcolor = {0, 0, 
              127})), 
          Line(points = [-70, 30; -60, 40; -50, 40; -40, 30], 
            style(color = 74, rgbcolor = 
              {0, 0, 127})), 
          Line(points = [70, 10; 70, 90; -55, 90; -55, 60], style(color = 74, rgbcolor = {
            0, 0, 127})), 
          Line(points = [13, -10; 13, -25], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Line(points = [6, -17; 20, -17], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Line(points = [13, 20; 13, 6], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Line(points = [6, 13; 20, 13], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Polygon(points = [22, 26; 30, 10; 38, 26; 30, 26; 22, 26], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Polygon(points = [30, -10; 39, -27; 22, -27; 30, -10], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127})), 
          Line(points = [-70, 70; -60, 60; -50, 60; -40, 70], 
            style(color = 74, rgbcolor = {0, 0, 
              127})), 
          Line(points = [55, -20; 65, -10; 75, -10; 85, -20], 
            style(color = 74, rgbcolor = 
              {0, 0, 127}))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end PI;

      partial model PositionController "Icon for a speed controller model"

        annotation (
          Diagram, 
          Icon(Rectangle(extent = [-100, 100; 100, -100], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
            Ellipse(extent = [-23, 66; 70, -25], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              gradient = 2, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215})), 
            Ellipse(extent = [-32, 58; 61, -33], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Polygon(points = [-45, -20; 2, 27; 7, 29; 11, 30; 15, 30; 19, 29; 24, 27; 29, 
              23; 31, 20; 32, 17; 33, 13; 33, 9; 32, 5; 31, 2; 28, -3; -21, -52; -16, 
              -47; -13, -41; -12, -37; -12, -33; -13, -29; -15, -25; -17, -22; -19, 
              -20; -22, -18; -26, -16; -30, -15; -35, -15; -38, -16; -42, -18; -45, 
              -20], style(
                color = 10, 
                rgbcolor = {95, 95, 95}, 
                gradient = 1, 
                fillColor = 30, 
                rgbfillColor = {215, 215, 215})), 
            Ellipse(extent = [-3, 45; 5, 38], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [-23, 26; -15, 19], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [28, 41; 36, 34], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [43, 11; 51, 4], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [27, -15; 35, -22], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Polygon(points = [21, 8; -1, -14; -6, -31; 15, -8; 21, 8], style(
              color = 7, 
              rgbcolor = {255, 255, 255}, 
              fillColor = 30, 
              rgbfillColor = {239, 239, 239}, 
              fillPattern = 1)), 
            Ellipse(extent = [-52, -55; -12, -15], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              gradient = 3, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175})), 
            Line(points = [-83, 34; -34, -15], style(color = 42, rgbcolor = {127, 0, 0})), 
            Polygon(points = [-53, -8; -40, 5; -34, -15; -53, -8], style(
              color = 42, 
              rgbcolor = {127, 0, 0}, 
              fillColor = 42, 
              rgbfillColor = {127, 0, 0}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end PositionController;

      partial model PowerBalance "Icon for a converter model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Polygon(points = [-90, -90; 90, -90; 90, 90; -90, -90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 8, 
            rgbfillColor = {210, 210, 210})), 
          Polygon(points = [-90, 90; 90, 90; -90, -90; -90, 90], style(
            color = 7, 
            rgbcolor = {255, 255, 255}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Polygon(points = [-90, -90; -90, 90; 90, 90; -90, -90], style(color = 3, rgbcolor = 
            {0, 0, 255}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end PowerBalance;

      partial model PowerLoad "Icon for a power load model"

        annotation (Icon(
          Line(points = [-60, 0; -90, 0], style(color = 3, rgbcolor = {0, 0, 255})), 
          Polygon(points = [-60, -60; -60, 60; 0, 90; 60, 60; 60, -60; -60, -60], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Text(
            extent = [-40, 70; 40, -10], 
            string = "P", 
            style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 8, 
              rgbfillColor = {210, 210, 210})), 
          Text(extent = [-150, -100; 150, -160], string = "%name")), 
          Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end PowerLoad;

      partial model QSMachine "Icon for a quasi stationary machine model"

        annotation (Icon(
          Line(points = [-20, 70; -20, 70], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2)), 
          Line(points = [-50, 100; -20, 100; -20, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2, 
            fillColor = 6, 
            rgbfillColor = {255, 255, 0})), 
          Line(points = [-40, 80; -50, 80; -50, 60], style(color = 3, rgbcolor = {0, 0, 255})), 
          Ellipse(extent = [-30, 90; -10, 70], style(color = 3, rgbcolor = {0, 0, 255})), 
          Polygon(points = [-6, 86; -6, 74; 12, 80; -6, 86], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 3, 
            rgbfillColor = {0, 0, 255})), 
          Line(points = [50, 100; 20, 100; 20, 70], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2, 
            fillColor = 6, 
            rgbfillColor = {255, 255, 0})), 
          Line(points = [-40, 80; -6, 80], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2)), 
          Rectangle(extent = [80, -80; 120, -120], style(color = 8, fillColor = 8)), 
          Rectangle(extent = [-40, 60; 80, -60], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2, 
            fillColor = 6, 
            rgbfillColor = {255, 255, 0})), 
          Rectangle(extent = [-40, 60; -60, -60], style(
            color = 10, 
            gradient = 2, 
            fillColor = 10)), 
          Rectangle(extent = [80, 10; 100, -10], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            gradient = 2, 
            fillColor = 10, 
            rgbfillColor = {95, 95, 95})), 
          Rectangle(extent = [-40, 70; 40, 50], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            fillColor = 10, 
            rgbfillColor = {95, 95, 95})), 
          Polygon(points = [-50, -90; -40, -90; -10, -20; 40, -20; 70, -90; 80, -90; 80, -100; 
            -50, -100; -50, -90], style(
              color = 0, 
              gradient = 0, 
              fillColor = 0, 
              fillPattern = 1))), Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2007-10-21</td>  <td> </td></tr></tbody></table></html>"));

      end QSMachine;

      partial model RefLim "Icon for a reference and limits model"

        annotation (Icon(Rectangle(extent = [-100, 100; 100, -100], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          fillColor = 7, 
          rgbfillColor = {255, 255, 255})), 
          Rectangle(extent = [-60, 80; 0, 20], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Line(points = [-60, -20; -40, -40; -20, -40; 0, -20], style(color = 0, rgbcolor = {
            0, 0, 0})), 
          Line(points = [-60, -80; -40, -60; -20, -60; 0, -80], style(color = 0, rgbcolor = {
            0, 0, 0})), 
          Line(points = [0, 50; 50, 50; 50, 0; 100, 0], style(color = 0, rgbcolor = {0, 0, 0})), 
          Line(points = [-60, -50; 50, -50; 50, 0; 100, 0], style(color = 0, rgbcolor = {0, 0, 
            0})), 
          Polygon(points = [50, 10; 50, -10; 70, 0; 50, 10], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end RefLim;

      partial model RotationalSensor "Icon for a sensor"

        annotation (
          Coordsys(
            extent = [-100, -100; 100, 100], 
            grid = [1, 1], 
            component = [20, 20], 
            scale = 0), 
          Icon(
            Ellipse(extent = [-70, 70; 70, -70], style(color = 0, fillColor = 7)), 
            Line(points = [0, 70; 0, 40], style(color = 0)), 
            Line(points = [22.9, 32.8; 40.2, 57.3], style(color = 0)), 
            Line(points = [-22.9, 32.8; -40.2, 57.3], style(color = 0)), 
            Line(points = [37.6, 13.7; 65.8, 23.9], style(color = 0)), 
            Line(points = [-37.6, 13.7; -65.8, 23.9], style(color = 0)), 
            Line(points = [0, 0; 9.02, 28.6], style(color = 0)), 
            Polygon(points = [-0.48, 31.6; 18, 26; 18, 57.2; -0.48, 31.6], style(
              color = 0, 
              fillColor = 0, 
              fillPattern = 1)), 
            Ellipse(extent = [-5, 5; 5, -5], style(
              color = 0, 
              gradient = 0, 
              fillColor = 0, 
              fillPattern = 1))), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end RotationalSensor;

      partial model RotationalSensorSmall "Small icon for a sensor"

        annotation (Icon(
          Ellipse(extent = [-50, 50; 50, -50], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [0, 47; 0, 30], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillPattern = 1)), 
          Line(points = [-40, 24; -26, 15], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillPattern = 1)), 
          Line(points = [40, 25; 26, 15], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillPattern = 1)), 
          Line(points = [-25, 40; -15, 26], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillPattern = 1)), 
          Line(points = [25, 40; 15, 26], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillPattern = 1)), 
          Ellipse(extent = [-5, 5; 5, -5], style(
            color = 0, 
            gradient = 0, 
            fillColor = 0, 
            fillPattern = 1)), 
          Line(points = [0, 0; 4, 14], style(color = 0)), 
          Polygon(points = [-2, 16; 9.5, 13; 12, 41.5; -2, 16], style(
            color = 0, 
            fillColor = 0, 
            fillPattern = 1))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end RotationalSensorSmall;

      partial model RotationalSensorSmallGray "Icon for a sensor"

        annotation (
          Diagram, 
          Icon(
            Ellipse(extent = [-50, 50; 50, -50], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 30, 
              rgbfillColor = {230, 230, 230})), 
            Line(points = [0, 47; 0, 30], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [-40, 24; -26, 15], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [40, 25; 26, 15], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [-25, 40; -15, 26], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [25, 40; 15, 26], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Ellipse(extent = [-5, 5; 5, -5], style(
              color = 0, 
              gradient = 0, 
              fillColor = 0, 
              fillPattern = 1)), 
            Line(points = [0, 0; 4, 14], style(color = 0)), 
            Polygon(points = [-2, 16; 9.5, 13; 12, 41.5; -2, 16], style(
              color = 0, 
              fillColor = 0, 
              fillPattern = 1)), 
            Line(points = [-90, 0; -50, 0], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillColor = 30, 
              rgbfillColor = {230, 230, 230}, 
              fillPattern = 1)), 
            Line(points = [50, 0; 90, 0], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillColor = 30, 
              rgbfillColor = {230, 230, 230}, 
              fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end RotationalSensorSmallGray;

      partial model SmartElectricDrives
        "Icon for the Smart Electric Drives Library"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 7, 
            rgbcolor = {255, 255, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1)), 
          Rectangle(extent = [-40, 60; 80, -60], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            gradient = 2, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Rectangle(extent = [-40, 60; -60, -60], style(
            color = 10, 
            gradient = 2, 
            fillColor = 10)), 
          Rectangle(extent = [80, 10; 100, -10], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            gradient = 2, 
            fillColor = 10, 
            rgbfillColor = {95, 95, 95})), 
          Rectangle(extent = [-40, 70; 40, 50], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            fillColor = 10, 
            rgbfillColor = {95, 95, 95})), 
          Polygon(points = [-50, -90; -40, -90; -10, -20; 40, -20; 70, -90; 80, -90; 80, -100; 
            -50, -100; -50, -90], style(
              color = 0, 
              gradient = 0, 
              fillColor = 0, 
              fillPattern = 1))), Coordsys(grid = [1, 1], scale = 0), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end SmartElectricDrives;

      partial model SpeedController "Icon for a speed controller model"

        annotation (
          Diagram, 
          Icon(Rectangle(extent = [-100, 100; 100, -100], style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
            Ellipse(extent = [-23, 66; 70, -25], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              gradient = 2, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215})), 
            Ellipse(extent = [-32, 58; 61, -33], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Polygon(points = [-45, -20; 2, 27; 7, 29; 11, 30; 15, 30; 19, 29; 24, 27; 29, 
              23; 31, 20; 32, 17; 33, 13; 33, 9; 32, 5; 31, 2; 28, -3; -21, -52; -16, 
              -47; -13, -41; -12, -37; -12, -33; -13, -29; -15, -25; -17, -22; -19, 
              -20; -22, -18; -26, -16; -30, -15; -35, -15; -38, -16; -42, -18; -45, 
              -20], style(
                color = 10, 
                rgbcolor = {95, 95, 95}, 
                gradient = 1, 
                fillColor = 30, 
                rgbfillColor = {215, 215, 215})), 
            Ellipse(extent = [-3, 45; 5, 38], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [-23, 26; -15, 19], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [28, 41; 36, 34], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [43, 11; 51, 4], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Ellipse(extent = [27, -15; 35, -22], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Polygon(points = [21, 8; -1, -14; -6, -31; 15, -8; 21, 8], style(
              color = 7, 
              rgbcolor = {255, 255, 255}, 
              fillColor = 30, 
              rgbfillColor = {239, 239, 239}, 
              fillPattern = 1)), 
            Ellipse(extent = [-52, -55; -12, -15], style(
              color = 10, 
              rgbcolor = {95, 95, 95}, 
              gradient = 3, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175})), 
            Line(points = [-44, -63; -44, -63; -44, -63; -38, -65; -32, -65; -26, -65; 
              -19, -63; -14, -60; -10, -57; -7, -54; -4, -50; -2, -45; 0, -40; 1, -34; 
              0, -27; -1, -23; -3, -18; -7, -13; -10, -10; -14, -7; -19, -4; -25, -2; 
              -32, -1; -38, -1; -42, -2; -48, -4; -52, -6; -55, -9; -56, -9; -56, -10; 
              -56, -9; -56, -9; -55, -10; -56, -8], style(
                color = 42, 
                rgbcolor = {127, 0, 0}, 
                fillColor = 42, 
                rgbfillColor = {127, 0, 0})), 
            Polygon(points = [-51, 4; -63, -16; -42, -12; -51, 4], style(
              color = 42, 
              rgbcolor = {127, 0, 0}, 
              fillColor = 42, 
              rgbfillColor = {127, 0, 0}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end SpeedController;

      partial model SwitchBridge "Icon for a switch bridge model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Polygon(points = [90, 90; 90, -90; -90, -90; 90, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 8, 
            rgbfillColor = {210, 210, 210})), 
          Polygon(points = [-90, 90; 90, 90; -90, -90; -90, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Line(points = [90, 90; -90, -90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Ellipse(extent = [-40, 40; 40, -40], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-28, -28; -18, -18], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1)), 
          Line(points = [-18, -18; -7, 28], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1)), 
          Line(points = [28, 28; 14, 14], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1)), 
          Line(points = [90, 0; 75, 0; 34, 0; -14, 0], style(
            color = 5, 
            rgbcolor = {255, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1))), Coordsys(grid = [1, 1], component = [20, 
            20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end SwitchBridge;

      partial model SwitchControl "Icon for a switch state command model"

        annotation (
          Icon(
            Rectangle(extent = [-100, 100; 100, -100], style(
              color = 0, 
              fillColor = 30, 
              rgbfillColor = {210, 210, 210}, 
              fillPattern = 11)), 
            Rectangle(extent = [-80, -40; -40, -80], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Rectangle(extent = [-80, 80; -40, 40], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Ellipse(extent = [-47, -55; -34, -67], style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Rectangle(extent = [-20, 20; 20, -20], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Line(points = [-90, -60; -80, -60], style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Line(points = [-90, 60; -80, 60], style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Line(points = [-39, 60; -30, 60; -30, 0; -20, 0], style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Line(points = [-34, -60; -30, -60; -30, 1], style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              fillColor = 9, 
              rgbfillColor = {175, 175, 175}, 
              fillPattern = 1)), 
            Line(points = [30, -30; 40, -30; 40, 30; 60, 30; 60, -30; 70, -30], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [20, -50; 30, -50; 30, 10; 50, 10; 50, -50; 60, -50], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1)), 
            Line(points = [40, -10; 50, -10; 50, 50; 70, 50; 70, -10; 80, -10], style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end SwitchControl;

      partial model SwitchedConverter

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Polygon(points = [90, 90; 90, -90; -90, -90; 90, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 8, 
            rgbfillColor = {210, 210, 210})), 
          Polygon(points = [-90, 90; 90, 90; -90, -90; -90, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Line(points = [90, 90; -90, -90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Ellipse(extent = [-40, 40; 40, -40], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-28, -28; -18, -18], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1)), 
          Line(points = [-18, -18; -7, 28], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1)), 
          Line(points = [28, 28; 14, 14], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255}, 
            fillPattern = 1))));
      end SwitchedConverter;

      partial model ThyristorBridge "Icon for a thyristor bridge model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 76, 
            rgbfillColor = {170, 170, 255})), 
          Polygon(points = [90, 90; 90, -90; -90, -90; 90, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 8, 
            rgbfillColor = {210, 210, 210})), 
          Polygon(points = [-90, 90; 90, 90; -90, -90; -90, 90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Ellipse(extent = [-40, 40; 40, -40], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-5, 25; 25, -5], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Line(points = [40, 0; 40, 0], style(
            color = 5, 
            rgbcolor = {255, 0, 255}, 
            fillColor = 30, 
            rgbfillColor = {215, 215, 215}, 
            fillPattern = 1)), 
          Line(points = [90, 90; -90, -90], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Polygon(points = [10, 10; 0, -30; -30, 0; 10, 10], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-28, -28; 28, 28], style(color = 3, rgbcolor = {0, 0, 255})), 
          Line(points = [6, -8; 22, -24], style(color = 5, rgbcolor = {255, 0, 255}))), 
          Coordsys(grid = [1, 1], component = [20, 
            20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end ThyristorBridge;

      partial model TorqueCurrentGain "Icon for a torque-current gain model"

        annotation (
          Icon(
            Polygon(points = [-100, 100; -100, -100; 100, 0; -100, 100], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 76, 
              rgbfillColor = {170, 170, 255})), 
            Line(points = [-30, -60; -30, 58], style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 10, 
              rgbfillColor = {135, 135, 135})), 
            Polygon(points = [-30, 60; -36, 48; -24, 48; -30, 60], style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 10, 
              rgbfillColor = {135, 135, 135})), 
            Line(points = [-90, 0; 60, 0], style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 10, 
              rgbfillColor = {135, 135, 135})), 
            Polygon(points = [70, 0; 58, 6; 58, -6; 70, 0], style(
              color = 10, 
              rgbcolor = {135, 135, 135}, 
              fillColor = 10, 
              rgbfillColor = {135, 135, 135})), 
            Polygon(points = [-8, 35; 3, 25; 8, 42; -8, 35], style(
              color = 58, 
              rgbcolor = {0, 127, 0}, 
              fillColor = 58, 
              rgbfillColor = {0, 127, 0})), 
            Line(points = [-30, 0; -1, 31], style(
              color = 58, 
              rgbcolor = {0, 127, 0}, 
              fillColor = 58, 
              rgbfillColor = {0, 127, 0}, 
              fillPattern = 1)), 
            Line(points = [-30, 0; -77, 46], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 74, 
              rgbfillColor = {0, 0, 127})), 
            Polygon(points = [-86, 53; -80, 39; -71, 50; -86, 53], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 74, 
              rgbfillColor = {0, 0, 127}))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end TorqueCurrentGain;

      partial model TorqueFluxController
        "Icon for a torque controller model or a torque-and-flux controller model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 69, 
            rgbfillColor = {0, 128, 255})), 
          Rectangle(extent = [-90, 90; 90, -90], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 68, 
            rgbfillColor = {170, 213, 255})), 
          Line(points = [0, 0; 57, 57], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127}, 
            fillPattern = 1)), 
          Line(points = [0, -80; 0, 77], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [0, 80; -6, 68; 6, 68; 0, 80], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Line(points = [-80, 0; 75, 0], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [80, 0; 68, 6; 68, -6; 80, 0], style(
            color = 10, 
            rgbcolor = {135, 135, 135}, 
            fillColor = 10, 
            rgbfillColor = {135, 135, 135})), 
          Polygon(points = [35, 54; 54, 35; 65, 66; 35, 54], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 74, 
            rgbfillColor = {0, 0, 127}))), Diagram, component = [20, 20], 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end TorqueFluxController;

      partial model Transformation "Icon for a transformation model"

        annotation (Coordsys(grid = [1, 1], component = [20, 20]), Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 8, 
            rgbfillColor = {210, 210, 210})), 
          Polygon(points = [-100, 100; 100, 100; -100, -100; -100, 100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 30, 
            rgbfillColor = {241, 241, 241})), 
          Line(points = [100, 100; -100, -100], style(color = 74, rgbcolor = {0, 0, 127}))), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));
      end Transformation;

      partial model Y2D "Icon for a star-delta conversion model"

        annotation (Icon(
          Rectangle(extent = [-100, 100; 100, -100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Line(points = [-60, 60; 0, 0; 60, 60], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1)), 
          Polygon(points = [0, 70; -60, -50; 60, -50; 0, 70], style(color = 3, 
            rgbcolor = {0, 0, 255})), 
          Line(points = [0, 0; 0, -65], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram, 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end Y2D;

      partial model Example_big "Icon for an example model"

        annotation (Icon(Ellipse(extent = [-95, 101; 100, -100], 
          style(
            color = 10, 
            rgbcolor = {95, 95, 95}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Polygon(points = [-38, 53; 75, 0; -38, -60; -38, 53], 
            style(
              pattern = 0, 
              fillColor = 10, 
              rgbfillColor = {95, 95, 95}))), Coordsys(grid = [1, 1], component = [20, 20], 
            extent = [-150, -100; 150, 100], 
            scale = 0.1), 
          Documentation(revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr></tbody></table></html>"));

      end Example_big;

      partial model Battery
        annotation (Diagram, 
          Icon(
            Polygon(points = [-40, 66; -100, 26; 40, 26; 100, 66], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {192, 192, 192}, fillPattern = 1)), 
            Polygon(points = [-100, 26; -100, -74; 40, -74; 40, 26], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {60, 60, 60}, fillPattern = 1)), 
            Polygon(points = [100, 66; 40, 26; 40, -74; 100, -34], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {45, 45, 45}, fillPattern = 1)), 
            Rectangle(extent = [-100, 6; 40, 26], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {192, 192, 192}, fillPattern = 1)), 
            Polygon(points = [40, 26; 40, 6; 100, 46; 100, 66], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {192, 192, 192}, fillPattern = 1)), 
            Ellipse(extent = [-20, 32; -8, 38], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Rectangle(extent = [-20, 35; -8, 44], style(rgbcolor = {45, 45, 45}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [-20, 42; -8, 46], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [26, 32; 38, 38], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Rectangle(extent = [26, 35; 38, 44], style(rgbcolor = {45, 45, 45}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [26, 42; 38, 46], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [-64, 32; -52, 38], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Rectangle(extent = [-64, 35; -52, 44], style(rgbcolor = {45, 45, 45}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [-64, 42; -52, 46], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [16, 54; 28, 60], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Rectangle(extent = [16, 57; 28, 66], style(rgbcolor = {45, 45, 45}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [16, 64; 28, 68], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [62, 54; 74, 60], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Rectangle(extent = [62, 57; 74, 66], style(rgbcolor = {45, 45, 45}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [62, 64; 74, 68], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [-28, 54; -16, 60], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Rectangle(extent = [-28, 57; -16, 66], style(rgbcolor = {45, 45, 45}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1)), 
            Ellipse(extent = [-28, 64; -16, 68], style(rgbcolor = {0, 0, 0}, thickness = 2, rgbfillColor = {165, 42, 0}, fillPattern = 1))));
      end Battery;
      partial model battery "Icon for a battery model"
        // Copyright:
        //   This program is copyright by arsenal research,
        //   Oesterreichisches Forschungs- und Pruefzentrum Arsenal Ges.m.b.H,
        //   Giefinggasse 2, 1210 Vienna, Austria, UID: ATU 46577208
        //   www.arsenal.ac.at, sed@arsenal.ac.at 
        annotation (
          Diagram, 
          Icon(
            Line(points = [0, 60; -50, 60], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillPattern = 1)), 
            Rectangle(extent = [0, 72; 60, 48], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
            Line(points = [60, 60; 100, 60], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillColor = 30, 
              rgbfillColor = {215, 215, 215}, 
              fillPattern = 1)), 
            Line(points = [-50, 60; -50, 10], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillPattern = 1)), 
            Line(points = [-80, 10; -20, 10], 
              style(color = 3, rgbcolor = {0, 0, 255})), 
            Rectangle(extent = [-63, -4; -37, -10], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
            Line(points = [-50, -10; -50, -60; 100, -60], style(
              color = 3, 
              rgbcolor = {0, 0, 255}, 
              fillPattern = 1))), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Documentation(revisions = "<html>
<table border=\"1\" rules=\"groups\">
<thead>
<tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr>
</thead>
<tbody>
<tr><td>1.0.0</td>  <td>2006-03-13</td>  <td> </td></tr>
</tbody>
</table>
</html>"));

      end battery;
      model Rotor "电机转子图标"
        annotation (Icon(graphics = {
          Ellipse(extent = {{-100, 100}, {100, -100}}, fillColor = {0, 204, 255}, fillPattern = FillPattern.Solid), 
          Ellipse(extent = {{-80, 80}, {80, -80}}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), 
          Ellipse(extent = {{-70, 70}, {70, -70}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid), 
          Rectangle(extent = {{-20, 40}, {-10, 20}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Rectangle(extent = {{20, 20}, {10, 40}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Rectangle(extent = {{-20, -20}, {-10, -40}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Rectangle(extent = {{20, -20}, {10, -40}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Text(extent = {{-80, -50}, {80, -210}}, color = {0, 0, 0}, textString = "%name")}));
      end Rotor;
      model Motor "基本电机模型图标"
        annotation (Icon(graphics = {
          Rectangle(extent = {{-60, 60}, {80, -60}}, fillColor = {100, 86, 192}, fillPattern = FillPattern.HorizontalCylinder, color = {40, 40, 40}), 
          Polygon(points = {{-10, -30}, {-30, -80}, {50, -80}, {30, -30}}, color = {40, 40, 40}, fillColor = {102, 102, 102}, fillPattern = FillPattern.Solid), 
          Rectangle(extent = {{80, 10}, {110, -10}}, fillColor = {102, 102, 102}, fillPattern = FillPattern.HorizontalCylinder, color = {0, 0, 0}), 
          Rectangle(extent = {{-40, 70}, {20, 50}}, fillColor = {102, 102, 102}, fillPattern = FillPattern.Solid, color = {40, 40, 40}), 
          Rectangle(extent = {{-60, 60}, {-40, -60}}, color = {40, 40, 40}, fillColor = {102, 102, 102}, fillPattern = FillPattern.HorizontalCylinder), 
          Rectangle(extent = {{-50, -80}, {70, -90}}, color = {40, 40, 40}, fillColor = {0, 0, 0}, fillPattern = FillPattern.Solid), 
          Ellipse(extent = {{-120, 30}, {-60, -30}}, color = {0, 0, 0}), 
          Rectangle(extent = {{69.58, -75.07}, {89.69, -94.88}}, color = {0, 0, 0}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid), 
          Text(extent = {{-80, -50}, {80, -210}}, color = {0, 0, 0}, textString = "%name")}));
      end Motor;
    end Icons;

    package Components
      extends Drivers.Icons.FolderBlue;
      model ThreePhase "Full bridge converter implemented with ideal switches"
        import GTP = EDP;
        extends Icons.SwitchBridge;
        extends Interfaces.SupplyDC;
        extends Interfaces.LoadThreePhase;
        Modelica.Blocks.Interfaces.BooleanInput u[6] "Switch control signals" 
          annotation (extent = [110, -10; 90, 10]);
      protected 
        parameter Modelica.SIunits.Resistance RonSwitch = 1e-5 "Closed switch resistance" 
          annotation (Dialog(tab = "Ideal electrical closers", group = "Parameters"));
        parameter Modelica.SIunits.Conductance GoffSwitch = 1e-5 "Opened switch conductance" 
          annotation (Dialog(tab = "Ideal electrical closers", group = "Parameters"));
        parameter Modelica.SIunits.Resistance RonDiode = 1e-5 "Forward state-on differential resistance (closed diode resistance)" 
          annotation (Dialog(tab = "Ideal diodes", group = "Parameters"));
        parameter Modelica.SIunits.Conductance GoffDiode = 1e-5 "Backward state-off conductance (opened diode conductance)" 
          annotation (Dialog(tab = "Ideal diodes", group = "Parameters"));
        parameter Modelica.SIunits.Voltage VkneeDiode = 0 "Forward threshold voltage" 
          annotation (Dialog(tab = "Ideal diodes", group = "Parameters"));
        annotation (Coordsys(
          preserveAspectRatio = false, 
          extent = [-100, -100; 100, 100], 
          grid = [1, 1]), 
          defaultComponentName = "dcac", 
          Icon(coordinateSystem(preserveAspectRatio = false, 
            extent = {{-100, -100}, {100, 100}}, 
            grid = {1, 1}), 
            graphics = {
            Text(extent = {{-150, 110}, {150, 150}}, color = {0, 0, 255}, textString = "%name"), 
            Text(extent = {{-80, 30}, {-20, 80}}, color = {0, 0, 0}, textString = "DC"), 
            Text(extent = {{23, -90}, {80, -30}}, color = {0, 0, 0}, textString = "AC")}), 
          Documentation(info = "<html><p>This model represents a three phase full bridge as shown in the figure below. Due to the symmetric arrangement (all inverter legs are identical) the output voltages at the AC side are solely dependent on the DC voltage of the supply side and the switch status. Note that one of the two switches in a leg has to be <code>on</code> at any instant. The <a href=\"Modelica.Electrical.Analog.Ideal.IdealDiode\">freewheeling diodes</a> as well as the <a href=\"Modelica.Electrical.Analog.Ideal.IdealClosingSwitch\">switches</a> are implemented as ideal components. Therefore the blanking time is ignored in this model. In order to control the switches a boolean six element signal must be connected to input <code>u</code>. The DC supply voltage (provided by a battery or super cap, for instance) has to be connected to the pins <code>pSupply</code> and <code>nSupply</code> (see at the connector table). The output signal <code>vDC</code> provides the voltage level of the DC circuit.</p> <p><table border=0 cellspacing=0 cellpadding=1>  <tr>    <td> <img src=\"./images/SmartElectricDrives.Converters.IdealSwitching.DCAC.ThreePhase.png\"> </td>  </tr>  <tr>    <td> <b> Fig. 1: </b>Three phase full bridge</td>  </tr></table> </html>", revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-01-17</td>  <td> </td></tr><tr><td>1.0.3</td>  <td>2006-08-31</td>  <td>Updated circuit images</td></tr></tbody></table></html> "), 
          Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram);
      public 
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch1(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-70, 40; -50, 60], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch3(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-10, 40; 10, 60], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch5(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [50, 40; 70, 60], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch4(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-70, -60; -50, -40], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch6(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-10, -60; 10, -40], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch2(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [50, -60; 70, -40], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode1(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [-50, 60; -30, 40], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode3(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [13, 60; 33, 40], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode5(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [70, 60; 90, 40], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode4(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [-50, -40; -30, -60], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode6(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [10, -40; 30, -60], 
            rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode2(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [70, -40; 90, -60], 
            rotation = -90);
      protected 
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor
          annotation (extent = [-80, 0; -100, 20], 
            rotation = -90);
      public 
        Modelica.Blocks.Interfaces.RealOutput Vdc "Voltage between pin p and n (= p.v - n.v) as output signal" 
          annotation (Placement(transformation(extent = {{86, -81}, {106, -61}})));
      equation 
        connect(idealClosingSwitch1.n, idealClosingSwitch4.p)
          annotation (points = [-60, 40; -60, -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch3.n, idealClosingSwitch6.p)
          annotation (points = [6.12323e-16, 40; 6.12323e-16, -40; -6.12323e-16, -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch5.n, idealClosingSwitch2.p)
          annotation (points = [60, 40; 60, -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pSupply, idealClosingSwitch1.p)
          annotation (points = [-100, 60; -60, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch1.p, idealClosingSwitch3.p)
          annotation (points = [-60, 60; -6.12323e-16, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch3.p, idealClosingSwitch5.p)
          annotation (points = [-6.12323e-16, 60; 60, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(nSupply, idealClosingSwitch4.n)
          annotation (points = [-100, -60; -60, 
            -60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch4.n, idealClosingSwitch6.n)
          annotation (points = [-60, -60; 6.12323e-16, -60], 
            style(color = 3, rgbcolor = {0, 0, 
              255}));
        connect(idealClosingSwitch6.n, idealClosingSwitch2.n)
          annotation (points = [6.12323e-16, -60; 60, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode1.n, idealClosingSwitch1.p)
          annotation (points = [-40, 
            60; -60, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode3.n, idealClosingSwitch3.p)
          annotation (points = [23, 60; 
            -6.12323e-16, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode5.n, idealClosingSwitch5.p)
          annotation (points = [80, 60; 
            60, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode4.p, idealClosingSwitch4.n)
          annotation (points = [-40, 
            -60; -60, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode6.p, idealClosingSwitch6.n)
          annotation (points = [20, -60; 
            6.12323e-16, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode2.p, idealClosingSwitch2.n)
          annotation (points = [80, 
            -60; 60, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(voltageSensor.p, pSupply)
          annotation (points = [-90, 20; -90, 60; 
            -100, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(voltageSensor.n, nSupply)
          annotation (points = [-90, 0; -90, -60; 
            -100, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pLoad.pin[1], idealClosingSwitch4.p)
          annotation (points = [0, -100; 
            0, -70; -75, -70; -75, 0; -60, 0; -60, -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pLoad.pin[2], idealClosingSwitch6.p)
          annotation (points = [0, -100; 0, -70; -20, -70; -20, -6; -6.12323e-16, -6; -6.12323e-16, 
            -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pLoad.pin[3], idealClosingSwitch2.p)
          annotation (points = [0, -100; 0, -70; 39, -70; 39, -6; 60, -6; 60, -40], 
            style(
              color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode1.p, idealClosingSwitch1.n)
          annotation (points = [-40, 40; -60, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode3.p, idealClosingSwitch3.n)
          annotation (points = [23, 40; 
            6.12323e-16, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode5.p, idealClosingSwitch5.n)
          annotation (points = [80, 40; 60, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode4.n, idealClosingSwitch4.p)
          annotation (points = [-40, -40; -60, -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode6.n, idealClosingSwitch6.p)
          annotation (points = [20, -40; 
            -6.12323e-16, -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode2.n, idealClosingSwitch2.p)
          annotation (points = [80, -40; 60, 
            -40], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(u[1], idealClosingSwitch1.control)
          annotation (points = [100, 0; -53, 0; -53, 50], 
            style(rgbcolor = {255, 0, 255}));
        connect(u[2], idealClosingSwitch3.control)
          annotation (points = [100, 0; 7, 0; 7, 50], 
            style(rgbcolor = {255, 0, 255}));
        connect(u[3], idealClosingSwitch5.control)
          annotation (points = [100, 0; 67, 0; 67, 50], 
            style(rgbcolor = {255, 0, 255}));
        connect(u[4], idealClosingSwitch4.control)
          annotation (points = [100, 0; -53, 0; -53, -50], 
            style(rgbcolor = {255, 0, 255}));
        connect(u[5], idealClosingSwitch6.control)
          annotation (points = [100, 0; 7, 0; 7, -50], 
            style(rgbcolor = {255, 0, 255}));
        connect(u[6], idealClosingSwitch2.control)
          annotation (points = [100, 0; 67, 0; 67, -50], 
            style(rgbcolor = {255, 0, 255}));
        connect(voltageSensor.v, Vdc)
          annotation (Line(points = {{-80, 10}, {-80, -71.97}, {96.09, -71.97}}, color = {0, 0, 127}));
      end ThreePhase;

      block U_ab
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput Ux annotation (extent = [-110, 50; -90, 70]);
        Modelica.Blocks.Interfaces.RealInput Uy annotation (extent = [-110, -10; -90, 10]);
        Modelica.Blocks.Interfaces.RealInput Uz
          annotation (extent = [-110, -70; -90, -50]);
        Modelica.Blocks.Interfaces.RealOutput U_alpha
          annotation (extent = [90, 40; 110, 60]);
        Modelica.Blocks.Interfaces.RealOutput U_beta
          annotation (extent = [90, -60; 110, -40]);
      equation 
        U_alpha = Ux + Uy * cos(2 * Modelica.Constants.pi / 3) + Uz * cos(4 * Modelica.Constants.pi / 3);
        U_beta = Uy * sin(2 * Modelica.Constants.pi / 3) + Uz * sin(4 * Modelica.Constants.pi / 3);

        annotation (Diagram, Icon(
          Text(
            extent = [-80, 70; -80, 50], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Ux"), 
          Text(
            extent = [-80, 10; -80, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Uy"), 
          Text(
            extent = [-80, -50; -80, -70], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Uz"), 
          Text(
            extent = [80, 60; 80, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "a"), 
          Text(
            extent = [80, -40; 80, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "b")));
      end U_ab;

      block ab_N
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput U_alpha
          annotation (extent = [-110, 40; -90, 60]);
        Modelica.Blocks.Interfaces.RealInput U_beta
          annotation (extent = [-110, -60; -90, -40]);
        Modelica.Blocks.Interfaces.IntegerOutput N annotation (extent = [90, -10; 110, 10]);
      protected 
        Real va;
        Real vb;
        Real vc;
      equation 
        va = U_beta;
        vb = (-U_beta + U_alpha * sqrt(3)) / 2;
        vc = (-U_beta - U_alpha * sqrt(3)) / 2;
        N = (if va > 0 then 1 else 0) + 2 * (if vb > 0 then 1 else 0) + 4 * (if vc > 0 then 1 else 0);
        annotation (Diagram, Icon(
          Text(
            extent = [-80, 60; -80, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "a"), 
          Text(
            extent = [-80, -40; -80, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "b"), 
          Text(
            extent = [80, 10; 80, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "N")));
      end ab_N;

      block abTU_xyz
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput U_alpha
          annotation (extent = [-110, 50; -90, 70]);
        Modelica.Blocks.Interfaces.RealInput U_beta
          annotation (extent = [-110, 10; -90, 30]);
        Modelica.Blocks.Interfaces.RealInput T
          annotation (extent = [-110, -30; -90, -10]);
        Modelica.Blocks.Interfaces.RealInput Ux
          annotation (extent = [-110, -70; -90, -50]);
        Modelica.Blocks.Interfaces.RealOutput X
          annotation (extent = [90, 50; 110, 70]);
        Modelica.Blocks.Interfaces.RealOutput Y
          annotation (extent = [90, -10; 110, 10]);
        Modelica.Blocks.Interfaces.RealOutput Z
          annotation (extent = [90, -70; 110, -50]);
        Modelica.Blocks.Math.Gain gain(k = sqrt(3))
          annotation (extent = [-40, 70; -32, 78]);
        Modelica.Blocks.Math.Gain gain1(k = sqrt(3) / 3)
          annotation (extent = [-40, 36; -32, 44]);
        Modelica.Blocks.Math.Add add annotation (extent = [-10, 24; 10, 44]);
        Modelica.Blocks.Math.Add add1(k2 = -1) annotation (extent = [-10, -16; 10, 4]);
        Modelica.Blocks.Math.Product product annotation (extent = [20, 66; 30, 76]);
        Modelica.Blocks.Math.Division division annotation (extent = [50, 56; 58, 64]);
        Modelica.Blocks.Math.Product product1 annotation (extent = [20, 20; 30, 30]);
        Modelica.Blocks.Math.Division division1 annotation (extent = [48, -4; 56, 4]);
        Modelica.Blocks.Math.Product product2 annotation (extent = [22, -30; 32, -20]);
        Modelica.Blocks.Math.Division division2
          annotation (extent = [48, -64; 56, -56]);
        Modelica.Blocks.Math.Gain gain2(k = 1.5) annotation (extent = [66, -4; 74, 4]);
        Modelica.Blocks.Math.Gain gain3(k = 1.5)
          annotation (extent = [68, -64; 76, -56]);

        annotation (Diagram, Icon(
          Text(
            extent = [-80, 70; -80, 50], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "a"), 
          Text(
            extent = [-80, 30; -80, 10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "b"), 
          Text(
            extent = [-80, -10; -80, -30], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T"), 
          Text(
            extent = [-80, -50; -80, -70], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Ux"), 
          Text(
            extent = [80, 70; 80, 50], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "X"), 
          Text(
            extent = [80, 10; 80, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Y"), 
          Text(
            extent = [80, -50; 80, -70], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Z")));
      equation 
        /*
      X = sqrt(3) * U_beta * T / Ux;
      Y = 0.5 * (sqrt(3) * U_beta + 3 * U_alpha) * T / Ux;
      Z = 0.5 * (sqrt(3) * U_beta - 3 * U_alpha) * T / Ux;
      */
        connect(division.y, X) annotation (points = [58.4, 60; 74, 60; 74, 60; 100, 60], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(division1.y, gain2.u) annotation (points = [56.4, 0; 65.2, 0], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(gain2.y, Y) annotation (points = [74.4, 0; 100, 0], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(division2.y, gain3.u) annotation (points = [56.4, -60; 67.2, -60], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain3.y, Z) annotation (points = [76.4, -60; 100, -60], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(division2.u2, division1.u2) annotation (points = [47.2, -62.4; 44, 
          -62.4; 44, -2.4; 47.2, -2.4], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(division.u2, division1.u2) annotation (points = [49.2, 57.6; 44, 57.6; 
          44, -2.4; 47.2, -2.4], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(product.u2, product1.u2) annotation (points = [19, 68; 16, 68; 16, 22; 
          19, 22], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(product2.u2, product1.u2) annotation (points = [21, -28; 16, -28; 16, 
          22; 19, 22], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain1.u, gain.u) annotation (points = [-40.8, 40; -50, 40; -50, 74; 
          -40.8, 74], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(U_beta, gain1.u) annotation (points = [-100, 20; -50, 20; -50, 40; 
          -40.8, 40], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain.y, product.u1) annotation (points = [-31.6, 74; 19, 74], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(add.y, product1.u1) annotation (points = [11, 34; 14, 34; 14, 28; 19, 
          28], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(product1.y, division1.u1) annotation (points = [30.5, 25; 30.5, 25.5; 
          47.2, 25.5; 47.2, 2.4], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(product.y, division.u1) annotation (points = [30.5, 71; 49.2, 71; 
          49.2, 62.4], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain1.y, add.u1) annotation (points = [-31.6, 40; -12, 40], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(add1.u1, add.u1) annotation (points = [-12, 0; -26, 0; -26, 40; -12, 40], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add1.u2, add.u2) annotation (points = [-12, -12; -20, -12; -20, 28; 
          -12, 28], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(U_alpha, add.u2) annotation (points = [-100, 60; -80, 60; -80, 28; -12, 
          28], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(T, product2.u2) annotation (points = [-100, -20; -50, -20; -50, -28; 
          21, -28], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add1.y, product2.u1) annotation (points = [11, -6; 14, -6; 14, -22; 21, 
          -22], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(Ux, division2.u2) annotation (points = [-100, -60; -28, -60; -28, 
          -62.4; 47.2, -62.4], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(product2.y, division2.u1) annotation (points = [32.5, -25; 32.5, 
          -42.5; 47.2, -42.5; 47.2, -57.6], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
      end abTU_xyz;

      model NXYZ_T1T2
        extends Modelica.Blocks.Interfaces.BlockIcon;
        //  parameter Real T_PWM = 0.0001;
        Modelica.Blocks.Interfaces.IntegerInput N
          annotation (extent = [-110, -90; -90, 
            -70]);
        Modelica.Blocks.Interfaces.RealInput X annotation (extent = [-110, 70; -90, 
          90]);
        Modelica.Blocks.Interfaces.RealInput Y
          annotation (extent = [-110, 30; -90, 50]);
        Modelica.Blocks.Interfaces.RealInput Z
          annotation (extent = [-110, -10; -90, 10]);
        Modelica.Blocks.Interfaces.RealOutput T1
          annotation (extent = [90, 40; 110, 60]);
        Modelica.Blocks.Interfaces.RealOutput T2
          annotation (extent = [90, -60; 110, -40]);

        Modelica.Blocks.Interfaces.RealInput T
          annotation (extent = [-110, -50; -90, -30]);
      protected 
        Real Temp1;
        Real Temp2;
      equation 
        Temp1 = if N == 1 then Z else 
          if N == 2 then Y else 
          if N == 3 then -Z else 
          if N == 4 then -X else 
          if N == 5 then X else 
          -Y;
        Temp2 = if N == 1 then Y else 
          if N == 2 then -X else 
          if N == 3 then X else 
          if N == 4 then Z else 
          if N == 5 then -Y else 
          -Z;

        if (Temp1 + Temp2) > T then           
          T1 = Temp1 / (Temp1 + Temp2) * T;          
          T2 = Temp2 / (Temp1 + Temp2) * T;
        else
          T1 = Temp1;
          T2 = Temp2;
        end if;
        annotation (Diagram, Icon(
          Text(
            extent = [-82, -70; -82, -90], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "N"), 
          Text(
            extent = [-82, 90; -82, 70], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "X"), 
          Text(
            extent = [-80, 46; -80, 26], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Y"), 
          Text(
            extent = [-80, 10; -80, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Z"), 
          Text(
            extent = [80, 60; 80, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T1"), 
          Text(
            extent = [80, -40; 80, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T2"), 
          Text(
            extent = [-80, -28; -80, -48], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T")));
      end NXYZ_T1T2;

      block T1T2_Tabc
        extends Modelica.Blocks.Interfaces.BlockIcon;
        Modelica.Blocks.Interfaces.RealInput T1 annotation (extent = [-110, 40; -90, 60]);
        Modelica.Blocks.Interfaces.RealInput T
          annotation (extent = [-110, -10; -90, 10]);

        Modelica.Blocks.Interfaces.RealInput T2
          annotation (extent = [-110, -60; -90, -40]);
        Modelica.Blocks.Interfaces.RealOutput Ta
          annotation (extent = [90, 40; 110, 60]);
        Modelica.Blocks.Interfaces.RealOutput Tb
          annotation (extent = [90, -10; 110, 10]);
        Modelica.Blocks.Interfaces.RealOutput Tc
          annotation (extent = [90, -60; 110, -40]);
        Modelica.Blocks.Math.Gain gain(k = 0.5) annotation (extent = [-50, 36; -42, 44]);
        Modelica.Blocks.Math.Gain gain1(k = 0.5)
          annotation (extent = [-50, 62; -42, 70]);
        Modelica.Blocks.Math.Add3 add3_1(
          k1 = -1, 
          k2 = -1, 
          k3 = 1) annotation (extent = [-50, -20; -30, 0]);
        Modelica.Blocks.Math.Gain gain2(k = 0.25)
          annotation (extent = [-24, -14; -16, -6]);
        Modelica.Blocks.Math.Add add annotation (extent = [-10, 20; 10, 40]);
        Modelica.Blocks.Math.Add add1 annotation (extent = [20, 50; 40, 70]);
      equation 
        /*
      Ta =  (T - T1 - T2)/4;
      Tb =  (T + T1 - T2)/4;
      Tc =  (T + T1 + T2)/4;
      */
        annotation (Diagram, Icon(
          Text(
            extent = [-80, 60; -80, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T1"), 
          Text(
            extent = [-80, 10; -80, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T"), 
          Text(
            extent = [-80, -40; -80, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "T2"), 
          Text(
            extent = [80, 60; 80, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Ta"), 
          Text(
            extent = [78, 10; 78, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tb"), 
          Text(
            extent = [78, -40; 78, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tc")));
        connect(T1, gain.u) annotation (points = [-100, 50; -75.4, 50; -75.4, 40; 
          -50.8, 40], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(T2, gain1.u) annotation (points = [-100, -50; -70, -50; -70, 66; -50.8, 
          66], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add3_1.u1, gain.u) annotation (points = [-52, -2; -60, -2; -60, 40; 
          -50.8, 40], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(T, add3_1.u3) annotation (points = [-100, 0; -60, 0; -60, -18; -52, -18], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add3_1.u2, gain1.u) annotation (points = [-52, -10; -70, -10; -70, 66; 
          -50.8, 66], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add3_1.y, gain2.u) annotation (points = [-29, -10; -24.8, -10], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(gain2.y, add.u2) annotation (points = [-15.6, -10; -12, -10; -12, 24], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain.y, add.u1) annotation (points = [-41.6, 40; -21.8, 40; -21.8, 36; 
          -12, 36], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain1.y, add1.u1) annotation (points = [-41.6, 66; 18, 66], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(add.y, add1.u2) annotation (points = [11, 30; 14, 30; 14, 54; 18, 54], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain2.y, Ta) annotation (points = [-15.6, -10; 70, -10; 70, 50; 100, 50], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add.y, Tb) annotation (points = [11, 30; 54, 30; 54, 0; 100, 0], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(add1.y, Tc) annotation (points = [41, 60; 66, 60; 66, -50; 100, -50], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
      end T1T2_Tabc;

      block Tabc_Tcm
        extends Modelica.Blocks.Interfaces.BlockIcon;

        Modelica.Blocks.Interfaces.IntegerInput N
          annotation (extent = [-110, -70; -90, 
            -50]);
        Modelica.Blocks.Interfaces.RealInput Ta annotation (extent = [-110, 50; -90, 70]);
        Modelica.Blocks.Interfaces.RealInput Tb
          annotation (extent = [-110, 10; -90, 30]);
        Modelica.Blocks.Interfaces.RealInput Tc
          annotation (extent = [-110, -30; -90, -10]);
        Modelica.Blocks.Interfaces.RealOutput Tcm1
          annotation (extent = [90, 50; 110, 70]);
        Modelica.Blocks.Interfaces.RealOutput Tcm2
          annotation (extent = [90, -10; 110, 10]);
        Modelica.Blocks.Interfaces.RealOutput Tcm3
          annotation (extent = [90, -70; 110, -50]);
      algorithm 
        if N == 1 then           
          Tcm1 := Tb;          
          Tcm2 := Ta;          
          Tcm3 := Tc;
        else
          if N == 2 then             
            Tcm1 := Ta;            
            Tcm2 := Tc;            
            Tcm3 := Tb;
          else
            if N == 3 then               
              Tcm1 := Ta;              
              Tcm2 := Tb;              
              Tcm3 := Tc;
            else
              if N == 4 then                 
                Tcm1 := Tc;                
                Tcm2 := Tb;                
                Tcm3 := Ta;
              else
                if N == 5 then                   
                  Tcm1 := Tc;                  
                  Tcm2 := Ta;                  
                  Tcm3 := Tb;
                else
                  Tcm1 := Tb;
                  Tcm2 := Tc;
                  Tcm3 := Ta;
                end if;
              end if;
            end if;
          end if;
        end if;
        annotation (Diagram, Icon(
          Text(
            extent = [-80, -46; -80, -66], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "N"), 
          Text(
            extent = [-80, 70; -80, 50], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Ta"), 
          Text(
            extent = [-80, 30; -80, 10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tb"), 
          Text(
            extent = [-80, -10; -80, -30], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tc"), 
          Text(
            extent = [80, 60; 80, 40], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tcm1"), 
          Text(
            extent = [80, 10; 80, -10], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tcm2"), 
          Text(
            extent = [80, -40; 80, -60], 
            style(color = 3, rgbcolor = {0, 0, 255}), 
            string = "Tcm3")));
      end Tabc_Tcm;

      model PWM
        parameter Modelica.SIunits.Time T_PWM(final min = Modelica.Constants.small) = 0.0001 "Time for one period";
        Modelica.Blocks.Interfaces.RealInput Tcm1
          annotation (extent = [-110, 50; -90, 70], 
            preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput Tcm2
          annotation (extent = [-110, -10; -90, 10], 
            preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput Tcm3
          annotation (extent = [-110, -70; -90, -50], 
            preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.BooleanOutput On[3]
          annotation (extent = [90, -10; 110, 10]);
        Modelica.Blocks.Sources.Pulse pulse(amplitude = 2, 
          period = T_PWM, 
          offset = -1)
          annotation (extent = [-80, 80; -60, 100]);
        Modelica.Blocks.Continuous.Integrator integrator
          annotation (extent = [-40, 80; -20, 100]);
        annotation (Diagram, 
          Icon(
            Rectangle(extent = [-100, -100; 100, 100], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
            Rectangle(extent = [-60, -72; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
            Rectangle(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1)), 
            Text(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
              string = "PWM"), 
            Text(extent = [-40, -8; -8, 2], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
              string = "sine_Input"), 
            Text(extent = [20, -34; 52, -24], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
              string = "PWM_Out"), 
            Line(points = [-50, -46; 46, 36], style(rgbcolor = {0, 0, 255}, pattern = 1, thickness = 2))));
        Modelica.Blocks.Math.Sum sum1(nin = 2, k = {1, -1})
          annotation (extent = [0, 50; 20, 70]);
        Modelica.Blocks.Math.Sum sum2(nin = 2, k = {1, -1})
          annotation (extent = [0, -10; 20, 10]);
        Modelica.Blocks.Math.Sum sum3(nin = 2, k = {1, -1})
          annotation (extent = [0, -70; 20, -50]);
        Modelica.Blocks.Logical.Hysteresis hysteresis1(
          pre_y_start = false, 
          uLow = Modelica.Constants.eps, 
          uHigh = Modelica.Constants.eps)
          annotation (extent = [42, 50; 62, 70]);
        Modelica.Blocks.Logical.Hysteresis hysteresis2(
          pre_y_start = false, 
          uLow = Modelica.Constants.eps, 
          uHigh = Modelica.Constants.eps)
          annotation (extent = [40, -10; 60, 10]);
        Modelica.Blocks.Logical.Hysteresis hysteresis3(
          pre_y_start = false, 
          uLow = Modelica.Constants.eps, 
          uHigh = Modelica.Constants.eps)
          annotation (extent = [40, -70; 60, -50]);
      equation 
        connect(pulse.y, integrator.u)
          annotation (points = [-59, 90; -42, 90], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(Tcm1, sum1.u[2])
          annotation (points = [-100, 60; -71, 60; -71, 61; -2, 
            61], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(Tcm2, sum2.u[2])
          annotation (points = [-100, 0; -71, 0; -71, 1; -2, 1], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(Tcm3, sum3.u[2])
          annotation (points = [-100, -60; -72, -60; -72, -59; 
            -2, -59], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(integrator.y, sum1.u[1])
          annotation (points = [-19, 90; -10, 90; -10, 
            59; -2, 59], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(integrator.y, sum2.u[1])
          annotation (points = [-19, 90; -10, 90; -10, 
            -1; -2, -1], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(integrator.y, sum3.u[1])
          annotation (points = [-19, 90; -10, 90; -10, 
            -61; -2, -61], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(sum1.y, hysteresis1.u)
          annotation (points = [21, 60; 40, 60], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(sum2.y, hysteresis2.u)
          annotation (points = [21, 0; 38, 0], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(sum3.y, hysteresis3.u)
          annotation (points = [21, -60; 38, -60], 
            style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              smooth = 0));
        connect(hysteresis1.y, On[1])
          annotation (points = [63, 60; 80, 60; 80, 
            -6.66667; 100, -6.66667], 
            style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              smooth = 0));
        connect(hysteresis2.y, On[2])
          annotation (points = [61, 0; 78, 0; 78, 
            4.44089e-16; 100, 4.44089e-16], 
            style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              smooth = 0));
        connect(hysteresis3.y, On[3])
          annotation (points = [61, -60; 72, -60; 72, 8; 
            100, 8; 100, 6.66667], 
            style(
              color = 5, 
              rgbcolor = {255, 0, 255}, 
              smooth = 0));
      end PWM;
      block PulseGenerator
        extends Modelica.Blocks.Interfaces.BlockIcon;

        parameter Modelica.SIunits.Time T_PWM(final min = Modelica.Constants.small) = 0.0001
          "Time for one period";

        Modelica.Blocks.Interfaces.RealInput Tcm1
          annotation (extent = [-110, 50; -90, 70], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput Tcm2
          annotation (extent = [-110, -10; -90, 10], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput Tcm3
          annotation (extent = [-110, -70; -90, -50], preserveAspectRatio = true);

        Modelica.Blocks.Interfaces.BooleanOutput On[3]
          annotation (extent = [90, -10; 110, 10]);
      protected 
        Modelica.SIunits.Time T0;
        Modelica.SIunits.Time T_width[3];
      equation 
        when sample(0, T_PWM) then 
          T0 = time;
          T_width[1] = pre(Tcm1);
          T_width[2] = pre(Tcm2);
          T_width[3] = pre(Tcm3);
        end when;
        for i in 1:3 loop 
          On[i] = time < T0 + T_width[i];
        end for;
        annotation (Icon(
          Rectangle(extent = [-60, -72; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1)), 
          Text(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "PWM"), 
          Text(extent = [-40, -8; -8, 2], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "sine_Input"), 
          Text(extent = [20, -34; 52, -24], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "PWM_Out"), 
          Line(points = [-50, -46; 46, 36], style(rgbcolor = {0, 0, 255}, pattern = 1, thickness = 2))), 
          Diagram);
      end PulseGenerator;

      model sub1

        Modelica.Blocks.Interfaces.RealOutput Tcm1
          annotation (extent = [90, 50; 110, 70]);
        Modelica.Blocks.Interfaces.RealOutput Tcm2
          annotation (extent = [90, -10; 110, 10]);
        Modelica.Blocks.Interfaces.RealOutput Tcm3
          annotation (extent = [90, -70; 110, -50]);
        Modelica.Blocks.Interfaces.RealInput T1
          annotation (extent = [-110, 20; -90, 40]);
        Modelica.Blocks.Interfaces.RealInput T2
          annotation (extent = [-110, -30; -90, -10]);
        Modelica.Blocks.Interfaces.RealInput T
          annotation (extent = [-110, -80; -90, -60]);
        Modelica.Blocks.Interfaces.IntegerInput N
          annotation (extent = [-110, 70; -90, 90]);
        annotation (Diagram, Icon(
          Rectangle(extent = [-100, -100; 100, 100], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            fillColor = 7, 
            rgbfillColor = {255, 255, 255})), 
          Rectangle(extent = [-60, -72; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1)), 
          Text(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "SubSystem"), 
          Text(extent = [-40, -8; -8, 2], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "sine_Input"), 
          Text(extent = [20, -34; 52, -24], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "PWM_Out"), 
          Line(points = [-50, -46; 46, 36], style(rgbcolor = {0, 0, 255}, pattern = 1, thickness = 2))));
        Modelica.Blocks.Math.Gain gain(k = 0.5) annotation (extent = [-60, 26; -52, 34]);
        Modelica.Blocks.Sources.Sine sine(freqHz = 50, amplitude = 310)
          annotation (extent = [-230, -10; -210, 10]);
        Modelica.Blocks.Sources.Sine sine1(
          freqHz = 50, 
          amplitude = 310, 
          phase = 2.0943951023932) annotation (extent = [-230, -30; -210, -10]);
        Modelica.Blocks.Math.Gain gain1(k = 0.5)
          annotation (extent = [-60, 52; -52, 60]);
        Modelica.Blocks.Math.Add3 add3_1(
          k1 = -1, 
          k2 = -1, 
          k3 = +1) annotation (extent = [-60, -30; -40, -10]);
        Modelica.Blocks.Math.Gain gain2(k = 0.25)
          annotation (extent = [-34, -24; -26, -16]);
        Modelica.Blocks.Math.Add add annotation (extent = [-20, 10; 0, 30]);
        Modelica.Blocks.Math.Add add1 annotation (extent = [10, 40; 30, 60]);
        Tabc_Tcm tabc_Tcm annotation (extent = [50, -50; 80, 50]);
      equation 
        connect(T1, gain.u) annotation (points = [-100, 30; -60.8, 30], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(T2, gain1.u) annotation (points = [-100, -20; -80, -20; -80, 56; -60.8, 
          56], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add3_1.u1, gain.u) annotation (points = [-62, -12; -70, -12; -70, 30; 
          -60.8, 30], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(T, add3_1.u3) annotation (points = [-100, -70; -70, -70; -70, -28; -62, 
          -28], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add3_1.u2, gain1.u) annotation (points = [-62, -20; -80, -20; -80, 56; 
          -60.8, 56], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add3_1.y, gain2.u) annotation (points = [-39, -20; -34.8, -20], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(gain2.y, add.u2) annotation (points = [-25.6, -20; -22, -20; -22, 14], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain.y, add.u1) annotation (points = [-51.6, 30; -31.8, 30; -31.8, 26; 
          -22, 26], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(gain1.y, add1.u1) annotation (points = [-51.6, 56; 8, 56], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(add.y, add1.u2) annotation (points = [1, 20; 4, 20; 4, 44; 8, 44], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(tabc_Tcm.Tcm2, Tcm2) annotation (points = [80, 0; 100, 0], style(
          color = 74, 
          rgbcolor = {0, 0, 127}, 
          smooth = 0));
        connect(tabc_Tcm.Tcm1, Tcm1) annotation (points = [80, 30; 88, 30; 88, 60; 100, 
          60], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(tabc_Tcm.Tcm3, Tcm3) annotation (points = [80, -30; 86, -30; 86, -60; 
          100, -60], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(N, tabc_Tcm.N) annotation (points = [-100, 80; 34, 80; 34, -30; 50, -30], 
          style(
            color = 45, 
            rgbcolor = {255, 127, 0}, 
            smooth = 0));
        connect(gain2.y, tabc_Tcm.Ta) annotation (points = [-25.6, -20; 40, -20; 40, 
          30; 50, 30], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add.y, tabc_Tcm.Tb) annotation (points = [1, 20; 26, 20; 26, 10; 50, 10], 
          style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
        connect(add1.y, tabc_Tcm.Tc) annotation (points = [31, 50; 36, 50; 36, -10; 50, 
          -10], style(
            color = 74, 
            rgbcolor = {0, 0, 127}, 
            smooth = 0));
      end sub1;

      model Vol

        Modelica.Blocks.Interfaces.RealInput U
          annotation (extent = [-110, -70; -90, -50]);
        Modelica.Blocks.Interfaces.BooleanInput y
          annotation (extent = [-110, 50; -90, 70]);
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
          annotation (extent = [90, 30; 110, 50], preserveAspectRatio = true);
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
          annotation (extent = [90, -50; 110, -30], preserveAspectRatio = true);
      equation 
        pin_p.v - pin_n.v = if y then U else 0;
        pin_n.i + pin_p.i = 0;

        annotation (Diagram);
      end Vol;

      model Clark

        Modelica.Blocks.Interfaces.RealInput i_a
          annotation (extent = [-110, 50; -90, 70], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput i_b
          annotation (extent = [-110, -10; -90, 10], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput i_c
          annotation (extent = [-110, -70; -90, -50], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput i_alpha
          annotation (extent = [80, 40; 100, 60], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput i_beta
          annotation (extent = [80, -60; 100, -40], preserveAspectRatio = true);
      equation 
        i_alpha = sqrt(0.666666666666667) * (i_a - 0.5 * i_b - 0.5 * i_c);
        i_beta = sqrt(0.5) * (i_b - i_c);
        annotation (Icon(
          Rectangle(extent = [-60, -80; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 60; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {0, 0, 255}, gradient = 3)), 
          Line(points = [-80, 60; -60, 60], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-78, 0; -60, 0], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-80, -60; -62, -60], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, -50; 84, -50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, 50; 84, 50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [-54, 12; 54, 42], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(a b c)"), 
          Text(extent = [-28, -42; 28, -12], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(α β)"), 
          Text(extent = [-60, 60; 60, 80], style(rgbcolor = {255, 104, 32}), string = "Clark"), 
          Text(extent = [-94, 60; -64, 76], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "ia"), 
          Text(extent = [-94, 0; -64, 16], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "ib"), 
          Text(extent = [-92, -60; -62, -44], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "ic"), 
          Text(extent = [56, 48; 86, 64], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "iα"), 
          Text(extent = [56, -44; 86, -28], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "iβ"), 
          Polygon(points = [-110, -50; -110, -70; -90, -60; -110, -50], style(
            color = 3, 
            rgbcolor = {0, 0, 255}, 
            pattern = 2, 
            smooth = 0))), Diagram);
      end Clark;

      //  parameter 
      model Park

        annotation (Icon(
          Rectangle(extent = [-60, -80; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 60; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {0, 0, 255}, gradient = 3)), 
          Line(points = [-80, 60; -60, 60], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-78, 0; -60, 0], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-78, -60; -60, -60], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, -50; 84, -50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, 50; 84, 50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [-54, 12; 54, 42], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(α β θ)"), 
          Text(extent = [-28, -42; 28, -12], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(d q)"), 
          Text(extent = [-60, 60; 60, 80], style(rgbcolor = {255, 104, 32}), string = "Park"), 
          Text(extent = [-94, 58; -64, 74], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "θ"), 
          Text(extent = [-94, 0; -64, 16], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "iα"), 
          Text(extent = [-92, -60; -62, -44], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "iβ"), 
          Text(extent = [56, -52; 86, -36], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "id"), 
          Text(extent = [54, 50; 84, 66], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "iq")), Diagram);
        Modelica.Blocks.Interfaces.RealInput theta
          annotation (extent = [-110, 50; -90, 70], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput i_alpha
          annotation (extent = [-110, -10; -90, 10], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput i_beta
          annotation (extent = [-110, -70; -90, -50], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput i_d
          annotation (extent = [80, -60; 100, -40], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput i_q
          annotation (extent = [80, 40; 100, 60], preserveAspectRatio = true);
      equation 
        i_d = i_alpha * cos(theta) + i_beta * sin(theta);
        i_q = -i_alpha * sin(theta) + i_beta * cos(theta);
      end Park;

      model SPWM
        parameter Real f = 10000.0;
        parameter Real v = 270;
        parameter Real amplitude = 380 "Amplitude of pulse";
        final parameter Modelica.SIunits.Time period(final min = Modelica.Constants.small) = 1 / f
          "Time for one period";
        // parameter Real offset = 0 "Offset of output signals";
        Modelica.Electrical.Analog.Interfaces.PositivePin pin_p1
          annotation (extent = [78, 24; 98, 44], preserveAspectRatio = true);
        Modelica.Electrical.Analog.Interfaces.NegativePin pin_n1
          annotation (extent = [78, -56; 98, -36], preserveAspectRatio = true);
        Modelica.SIunits.Time T0(
          final start = 0) "Start time of current period";
        Modelica.SIunits.Time T_width;
        Real width;
        Real vv;
        Modelica.Blocks.Interfaces.RealInput u
          annotation (extent = [-102, 24; -66, 52], preserveAspectRatio = true);
        annotation (Icon(
          Rectangle(extent = [-60, -72; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 48; 60, 68], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1)), 
          Line(points = [-80, 38; -60, 38], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, -46; 78, -46], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, 34; 78, 34], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [-62, 48; 58, 68], style(rgbcolor = {0, 0, 255}, rgbfillColor = {255, 104, 32}, fillPattern = 1), string = "SPWM"), 
          Bitmap(extent = [-34, -70; 70, -24], name = ".\\.\\WorkingPlatform\\29.北京31所\\jpg图片\\pulse1.jpg"), 
          Bitmap(extent = [-75, -2; 36, 43], name = ".\\.\\WorkingPlatform\\29.北京31所\\jpg图片\\sine1.jpg"), 
          Text(extent = [-40, -8; -8, 2], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "sine_Input"), 
          Text(extent = [20, -34; 52, -24], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {255, 104, 32}, fillPattern = 1), 
            string = "PWM_Out"), 
          Line(points = [-50, -46; 46, 36], style(rgbcolor = {0, 0, 255}, pattern = 1, thickness = 2))));
      equation 
        when sample(0, period) then 
          T0 = time;
          width = abs(u / 380);
        end when;
        T_width = period * width;
        vv = if u > 0 then v else -v;
        pin_p1.v - pin_n1.v = if time >= T0 + T_width then 0 else vv;
        pin_n1.i + pin_p1.i = 0;
      end SPWM;

      model rPark

        annotation (Icon(
          Rectangle(extent = [-60, -60; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 60; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {0, 0, 255}, gradient = 3)), 
          Line(points = [-80, 50; -60, 50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-80, 0; -60, 0], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-80, -50; -60, -50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, -50; 84, -50], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, 46; 84, 46], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [-54, 12; 54, 42], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(d q θ)"), 
          Text(extent = [-28, -42; 28, -12], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(α β )"), 
          Text(extent = [-60, 60; 60, 80], style(rgbcolor = {255, 104, 32}), string = "rPark"), 
          Text(extent = [-94, 58; -64, 74], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "θ"), 
          Text(extent = [-94, 2; -64, 18], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vd"), 
          Text(extent = [-92, -48; -62, -32], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vq"), 
          Text(extent = [56, 48; 86, 64], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vα"), 
          Text(extent = [56, -48; 86, -32], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vβ")), Diagram);
        Modelica.Blocks.Interfaces.RealInput theta
          annotation (extent = [-100, 40; -80, 60], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput V_d
          annotation (extent = [-100, -10; -80, 10], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput V_q
          annotation (extent = [-100, -60; -80, -40], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput V_alpha
          annotation (extent = [80, 40; 100, 60], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput V_beta
          annotation (extent = [80, -60; 100, -40], preserveAspectRatio = true);
      equation 
        V_alpha = V_d * cos(theta) - V_q * sin(theta);
        V_beta = V_d * sin(theta) + V_q * cos(theta);
      end rPark;

      model rClark

        annotation (Icon(
          Rectangle(extent = [-60, -60; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 60; 60, 80], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {0, 0, 255}, gradient = 3)), 
          Line(points = [-80, 44; -60, 44], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-78, -36; -60, -36], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, -40; 84, -40], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, 46; 84, 46], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [-54, 12; 54, 42], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(α β )"), 
          Text(extent = [-40, -46; 44, -10], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(a b c)"), 
          Text(extent = [-60, 60; 60, 80], style(rgbcolor = {255, 104, 32}), string = "rClark"), 
          Text(extent = [56, 6; 86, 22], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "vb"), 
          Text(extent = [56, 50; 86, 66], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "va"), 
          Text(extent = [-90, 50; -60, 66], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vα"), 
          Text(extent = [-90, -30; -60, -14], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vβ"), 
          Line(points = [60, 4; 84, 4], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [56, -36; 86, -20], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "vc")));
        Modelica.Blocks.Interfaces.RealInput V_alpha
          annotation (extent = [-100, 30; -78, 58], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput V_beta
          annotation (extent = [-100, -48; -76, -24], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput v_a
          annotation (extent = [80, 36; 100, 56], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput v_b
          annotation (extent = [80, -6; 100, 14], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput v_c
          annotation (extent = [80, -50; 100, -30], preserveAspectRatio = true);
      equation 
        v_a = V_beta;
        v_b = (-V_beta + V_alpha * 1.732) / 2;
        v_c = (-V_beta - V_alpha * 1.732) / 2;
      end rClark;

      model U_dq

        Modelica.Blocks.Interfaces.RealInput w
          annotation (extent = [-102, -54; -70, -34], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput i_d
          annotation (extent = [-98, 32; -78, 52], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealInput i_q
          annotation (extent = [-98, -12; -76, 8], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput v_d
          annotation (extent = [80, 10; 100, 30], preserveAspectRatio = true);
        Modelica.Blocks.Interfaces.RealOutput v_q
          annotation (extent = [80, -50; 100, -30], preserveAspectRatio = true);
        annotation (Icon(
          Rectangle(extent = [-60, -68; 60, 72], style(rgbcolor = {0, 0, 255}, thickness = 2)), 
          Rectangle(extent = [-60, 52; 60, 72], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {0, 0, 255}, gradient = 3)), 
          Line(points = [-80, 42; -60, 42], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-78, -2; -60, -2], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [-78, -44; -60, -44], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Text(extent = [-54, 4; 54, 34], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(id iq w)"), 
          Text(extent = [-28, -50; 28, -20], style(rgbcolor = {0, 0, 255}, gradient = 3), string = "(vd vq )"), 
          Text(extent = [-60, 52; 60, 72], style(rgbcolor = {255, 104, 32}), string = "U_dq"), 
          Text(extent = [-88, -42; -58, -26], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "w"), 
          Text(extent = [-88, 42; -58, 58], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "id"), 
          Text(extent = [-88, 2; -58, 18], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "iq"), 
          Text(extent = [56, 18; 86, 34], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vd"), 
          Text(extent = [56, -32; 86, -16], style(rgbcolor = {0, 0, 255}, thickness = 2, rgbfillColor = {225, 225, 225}, fillPattern = 1), 
            string = "Vq"), 
          Line(points = [60, 20; 80, 20], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0)), 
          Line(points = [60, -40; 80, -40], style(rgbcolor = {0, 0, 255}, thickness = 2, arrow = 0))));
      end U_dq;

      model svpwm
        parameter Real Udc "额定电压";
        parameter Real T_PWM "PWM周期";
        Drivers.Components.abTU_xyz abtu_xyz
          annotation (Placement(transformation(extent = {{-58, 10}, {-38, 30}})));
        Drivers.Components.NXYZ_T1T2 nxyz_t1t2_1
          annotation (Placement(transformation(extent = {{-27, 9}, {-7, 29}})));
        Drivers.Components.T1T2_Tabc t1t2_tabc
          annotation (Placement(transformation(extent = {{1, 10}, {18, 30}})));
        Drivers.Components.Tabc_Tcm tabc_tcm
          annotation (Placement(transformation(extent = {{26.98, 10.03}, {44, 30}})));
        Drivers.Components.PWM pwm
          annotation (Placement(transformation(extent = {{49.21, 10.08}, {69.21, 30.08}})));
        Drivers.Components.ab_N ab_n
          annotation (Placement(transformation(extent = {{-62, -33}, {-42, -14}})));
        Modelica.Blocks.Sources.Constant Ux(k = Udc)
          annotation (Placement(transformation(extent = {{-88, 0}, {-74, 16}})));
        Modelica.Blocks.Sources.Constant T(k = T_PWM)
          annotation (Placement(transformation(extent = {{-88.11, 39.79}, {-76.11, 53.79}})));
        Modelica.Blocks.Interfaces.RealInput U_alpha
          annotation (Placement(transformation(extent = {{-99, 61}, {-80, 84}})));
        Modelica.Blocks.Interfaces.RealInput U_beta
          annotation (Placement(transformation(extent = {{-99.5, -63.5}, {-80, -40}})));
        Modelica.Blocks.Interfaces.BooleanOutput pulse[6]
          annotation (Placement(transformation(extent = {{86.04, 10.1}, {106, 30.1}})));
        Modelica.Blocks.Logical.Not not1[3]
          annotation (Placement(transformation(extent = {{74.31, -1.689}, {81.08, 5.034}})));
        annotation (Icon(graphics = {
          Rectangle(extent = {{-100, -100}, {100, 100}}, color = {0, 0, 127}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), 
          Rectangle(extent = {{-60, -72}, {60, 68}}, thickness = 0.5, color = {0, 0, 255}), 
          Rectangle(extent = {{-60, 48}, {60, 68}}, thickness = 0.5, color = {0, 0, 255}, fillColor = {225, 225, 225}, fillPattern = FillPattern.Solid), 
          Text(extent = {{-60, 48}, {60, 68}}, color = {0, 0, 255}, fillColor = {255, 104, 32}, fillPattern = FillPattern.Solid, textString = "SVPWM"), 
          Text(extent = {{-40, -8}, {-8, 2}}, thickness = 0.5, color = {0, 0, 255}, fillColor = {255, 104, 32}, fillPattern = FillPattern.Solid, 
          textString = "sine_Input"), 
          Text(extent = {{20, -34}, {52, -24}}, thickness = 0.5, color = {0, 0, 255}, fillColor = {255, 104, 32}, fillPattern = FillPattern.Solid, 
          textString = "PWM_Out"), 
          Line(points = {{-50, -46}, {46, 36}}, pattern = LinePattern.Solid, thickness = 0.5, color = {0, 0, 255})}));
      equation 
        connect(Ux.y, abtu_xyz.Ux)
          annotation (Line(points = {{-73.3, 8}, {-64, 8}, {-64, 14}, {-58, 14}}, color = {0, 0, 127}));
        connect(ab_n.U_alpha, U_alpha)
          annotation (Line(points = {{-62, -18.75}, {-70, -18.75}, {-70, 72.5}, {-89.5, 72.5}}, color = {0, 0, 127}));
        connect(ab_n.U_beta, U_beta)
          annotation (Line(points = {{-62, -28.25}, {-70, -28.25}, {-70, -51.75}, {-89.75, -51.75}}, color = {0, 0, 127}));
        connect(T.y, abtu_xyz.T)
          annotation (Line(points = {{-75.51, 46.79}, {-64, 46.79}, {-64, 18}, {-58, 18}}, color = {0, 0, 127}));
        connect(abtu_xyz.U_alpha, U_alpha)
          annotation (Line(points = {{-58, 26}, {-70, 26}, {-70, 72.5}, {-89.5, 72.5}}, color = {0, 0, 127}));
        connect(abtu_xyz.U_beta, U_beta)
          annotation (Line(points = {{-58, 22}, {-70, 22}, {-70, -51.75}, {-89.75, -51.75}}, color = {0, 0, 127}));
        connect(abtu_xyz.Y, nxyz_t1t2_1.Y)
          annotation (Line(points = {{-38, 20}, {-34, 20}, {-34, 23}, {-27, 23}}, color = {0, 0, 127}));
        connect(abtu_xyz.X, nxyz_t1t2_1.X)
          annotation (Line(points = {{-38, 26}, {-38, 27}, {-27, 27}}, color = {0, 0, 127}));
        connect(abtu_xyz.Z, nxyz_t1t2_1.Z)
          annotation (Line(points = {{-38, 14}, {-32, 14}, {-32, 19}, {-27, 19}}, color = {0, 0, 127}));
        connect(nxyz_t1t2_1.T, T.y)
          annotation (Line(points = {{-27, 15}, {-30, 15}, {-30, 46.79}, {-75.51, 46.79}}, color = {0, 0, 127}));
        connect(nxyz_t1t2_1.T1, t1t2_tabc.T1)
          annotation (Line(points = {{-7, 24}, {1, 25}}, color = {0, 0, 127}));
        connect(nxyz_t1t2_1.T2, t1t2_tabc.T2)
          annotation (Line(points = {{-7, 14}, {1, 15}}, color = {0, 0, 127}));
        connect(t1t2_tabc.T, T.y)
          annotation (Line(points = {{1, 20}, {1, 46.79}, {-75.51, 46.79}}, color = {0, 0, 127}));
        connect(t1t2_tabc.Ta, tabc_tcm.Ta)
          annotation (Line(points = {{18, 25}, {26.98, 25}, {26.98, 26.01}}, color = {0, 0, 127}));
        connect(t1t2_tabc.Tb, tabc_tcm.Tb)
          annotation (Line(points = {{18, 20}, {21, 20}, {21, 22}, {24, 22.01}, {26.98, 22.01}}, color = {0, 0, 127}));
        connect(t1t2_tabc.Tc, tabc_tcm.Tc)
          annotation (Line(points = {{18, 15}, {22, 15}, {22, 18.02}, {26.98, 18.02}}, color = {0, 0, 127}));
        connect(tabc_tcm.N, ab_n.N)
          annotation (Line(points = {{26.98, 14.02}, {24, 14.02}, {24, -23.5}, {-42, -23.5}}, color = {255, 127, 0}));
        connect(nxyz_t1t2_1.N, ab_n.N)
          annotation (Line(points = {{-27, 11}, {-31, 11}, {-31, -23.5}, {-42, -23.5}}, color = {255, 127, 0}));
        connect(tabc_tcm.Tcm1, pwm.Tcm1)
          annotation (Line(points = {{44, 26.01}, {49.21, 26.08}}, color = {0, 0, 127}));
        connect(tabc_tcm.Tcm2, pwm.Tcm2)
          annotation (Line(points = {{44, 20.02}, {49.21, 20.08}}, color = {0, 0, 127}));
        connect(tabc_tcm.Tcm3, pwm.Tcm3)
          annotation (Line(points = {{44, 14.02}, {49.21, 14.08}}, color = {0, 0, 127}));
        connect(pwm.On[1], pulse[1])
          annotation (Line(points = {{69.21, 20.08}, {96.02, 20.1}}, color = {255, 0, 255}));
        connect(pwm.On[2], pulse[3])
          annotation (Line(points = {{69.21, 20.08}, {96.02, 20.1}}, color = {255, 0, 255}));
        connect(pwm.On[3], pulse[5])
          annotation (Line(points = {{69.21, 20.08}, {96.02, 20.1}}, color = {255, 0, 255}));
        connect(pwm.On[:], not1[:].u)
          annotation (Line(points = {{69.21, 20.08}, {69.21, 1.672}, {73.63, 1.672}}, color = {255, 0, 255}));
        connect(not1[1].y, pulse[4])
          annotation (Line(points = {{81.42, 1.672}, {96.02, 1.672}, {96.02, 20.1}}, color = {255, 0, 255}));
        connect(not1[2].y, pulse[6])
          annotation (Line(points = {{81.42, 1.672}, {96.02, 1.672}, {96.02, 20.1}}, color = {255, 0, 255}));
        connect(not1[3].y, pulse[2])
          annotation (Line(points = {{81.42, 1.672}, {96.02, 1.672}, {96.02, 20.1}}, color = {255, 0, 255}));
      end svpwm;
      model threePhase
        "Full bridge converter implemented with ideal switches"
        extends Drivers.Icons.SwitchBridge;
        extends Drivers.Interfaces.SupplyDC;
        extends Drivers.Interfaces.LoadThreePhase;

        Modelica.Blocks.Interfaces.BooleanInput u[6] "Switch control signals" 
          annotation (extent = [110, -10; 90, 10]);
        Modelica.Blocks.Interfaces.RealOutput vDC
          "Voltage of the (supply) DC link" 
          annotation (extent = [90, -70; 110, -50]);
      protected 
        parameter Modelica.SIunits.Resistance RonSwitch = 1e-5
          "Closed switch resistance" annotation (Dialog(tab = "Ideal electrical closers", group = "Parameters"));
        parameter Modelica.SIunits.Conductance GoffSwitch = 1e-5
          "Opened switch conductance" annotation (Dialog(tab = "Ideal electrical closers", group = "Parameters"));

        parameter Modelica.SIunits.Resistance RonDiode = 1e-5
          "Forward state-on differential resistance (closed diode resistance)" 
          annotation (Dialog(tab = "Ideal diodes", group = "Parameters"));
        parameter Modelica.SIunits.Conductance GoffDiode = 1e-5
          "Backward state-off conductance (opened diode conductance)" annotation (Dialog(tab = "Ideal diodes", group = "Parameters"));
        parameter Modelica.SIunits.Voltage VkneeDiode = 0
          "Forward threshold voltage" annotation (Dialog(tab = "Ideal diodes", group = "Parameters"));
        annotation (defaultComponentName = "dcac", Icon(
          Text(extent = [-150, 150; 150, 110], 
            string = "%name", 
            style(color = 3, rgbcolor = {0, 0, 255})), 
          Text(
            extent = [-80, 80; -20, 30], 
            string = "DC", 
            style(color = 0, rgbcolor = {0, 0, 0})), 
          Text(
            extent = [20, -30; 80, -80], 
            string = "AC", 
            style(color = 0, rgbcolor = {0, 0, 0}))), 
          Documentation(info = "<html>
<p>
This model represents a three phase full bridge as shown in the figure below. Due to the symmetric arrangement (all inverter legs are identical) the output voltages at the AC side are solely dependent on the DC voltage of the supply side and the switch status. Note that one of the two switches in a leg has to be <code>on</code> at any instant. The <a href=\"Modelica.Electrical.Analog.Ideal.IdealDiode\">freewheeling diodes</a> as well as the <a href=\"Modelica.Electrical.Analog.Ideal.IdealClosingSwitch\">switches</a> are implemented as ideal components. Therefore the blanking time is ignored in this model. In order to control the switches a boolean six element signal must be connected to input <code>u</code>. The DC supply voltage (provided by a battery or super cap, for instance) has to be connected to the pins <code>pSupply</code> and <code>nSupply</code> (see at the connector table). The output signal <code>vDC</code> provides the voltage level of the DC circuit.
</p>
 
<p>
<table border=0 cellspacing=0 cellpadding=1>
  <tr>
    <td> <img src=\"../images/SmartElectricDrives.Converters.IdealSwitching.DCAC.ThreePhase.png\"> </td>
  </tr>
  <tr>
    <td> <b> Fig. 1: </b>Three phase full bridge</td>
  </tr>
</table>
 
</html>", revisions = "<html>
<table border=\"1\" rules=\"groups\">
<thead>
<tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr>
</thead>
<tbody>
<tr><td>1.0.0</td>  <td>2006-01-17</td>  <td> </td></tr>
<tr><td>1.0.3</td>  <td>2006-08-31</td>  <td>Updated circuit images</td></tr>
</tbody>
</table>
</html>
 "), Coordsys(grid = [1, 1], component = [20, 20]), 
          Diagram);
      public 
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch1(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-70, 40; -50, 60], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch3(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-10, 40; 10, 60], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch5(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [50, 40; 70, 60], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch4(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-70, -60; -50, -40], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch6(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [-10, -60; 10, -40], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealClosingSwitch idealClosingSwitch2(
          final Goff = GoffSwitch, final Ron = RonSwitch)
          annotation (extent = [50, -60; 70, -40], rotation = -90);

        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode1(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [-50, 60; -30, 40], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode3(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [13, 60; 33, 40], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode5(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [70, 60; 90, 40], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode4(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [-50, -40; -30, -60], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode6(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [10, -40; 30, -60], rotation = -90);
        Modelica.Electrical.Analog.Ideal.IdealDiode idealDiode2(
          final Ron = RonDiode, 
          final Goff = GoffDiode, 
          final Vknee = VkneeDiode)
          annotation (extent = [70, -40; 90, -60], rotation = -90);
      protected 
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor
          annotation (extent = [-80, 0; -100, 20], rotation = -90);
      equation 
        connect(idealClosingSwitch1.n, idealClosingSwitch4.p) annotation (
          points = [-60, 40; -60, -40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch3.n, idealClosingSwitch6.p) annotation (
          points = [6.12323e-16, 40; 6.12323e-16, -40; -6.12323e-16, -40], 
          style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch5.n, idealClosingSwitch2.p) annotation (
          points = [60, 40; 60, -40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pSupply, idealClosingSwitch1.p)
          annotation (points = [-100, 60; -60, 60], 
            style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch1.p, idealClosingSwitch3.p) annotation (
          points = [-60, 60; -6.12323e-16, 60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch3.p, idealClosingSwitch5.p) annotation (
          points = [-6.12323e-16, 60; 60, 60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(nSupply, idealClosingSwitch4.n)
          annotation (points = [-100, -60; -60, 
            -60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch4.n, idealClosingSwitch6.n) annotation (
          points = [-60, -60; 6.12323e-16, -60], style(color = 3, rgbcolor = {0, 0, 
            255}));
        connect(idealClosingSwitch6.n, idealClosingSwitch2.n) annotation (
          points = [6.12323e-16, -60; 60, -60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode1.n, idealClosingSwitch1.p) annotation (points = [-40, 
          60; -60, 60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode3.n, idealClosingSwitch3.p) annotation (points = [23, 60; 
          -6.12323e-16, 60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode5.n, idealClosingSwitch5.p) annotation (points = [80, 60; 
          60, 60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode4.p, idealClosingSwitch4.n) annotation (points = [-40, 
          -60; -60, -60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode6.p, idealClosingSwitch6.n) annotation (points = [20, -60; 
          6.12323e-16, -60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode2.p, idealClosingSwitch2.n) annotation (points = [80, 
          -60; 60, -60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(voltageSensor.p, pSupply)
          annotation (points = [-90, 20; -90, 60; 
            -100, 60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(voltageSensor.n, nSupply)
          annotation (points = [-90, 0; -90, -60; 
            -100, -60], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pLoad.pin[1], idealClosingSwitch4.p) annotation (points = [0, 
          -100.667; 0, -70; -75, -70; -75, 0; -60, 0; -60, -40], 
          style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pLoad.pin[2], idealClosingSwitch6.p) annotation (
          points = [0, -100; 0, -70; -20, -70; -20, -6; -6.12303e-16, -6; -6.12303e-16, 
          -40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(pLoad.pin[3], idealClosingSwitch2.p) annotation (
          points = [0, -99.3333; 0, -70; 39, -70; 39, -6; 60, -6; 60, -40], 
          style(
            color = 3, rgbcolor = {0, 0, 255}));
        connect(vDC, voltageSensor.v) annotation (points = [100, -60; 84, -60; 84, -80; 
          -80, -80; -80, 10], style(color = 74, rgbcolor = {0, 0, 127}));
        connect(u[1], idealClosingSwitch1.control) annotation (points = [100, -8.33333; 
          -45, -8.33333; -45, 50; -53, 50], style(color = 5, rgbcolor = {255, 0, 255}));
        connect(u[3], idealClosingSwitch3.control) annotation (points = [100, -1.66667; 
          15, -1.66667; 15, 50; 7, 50], style(color = 5, rgbcolor = {255, 0, 255}));
        connect(u[5], idealClosingSwitch5.control) annotation (points = [100, 5; 74, 5; 
          74, 50; 67, 50], style(color = 5, rgbcolor = {255, 0, 255}));
        connect(u[2], idealClosingSwitch2.control) annotation (points = [100, -5; 74, -5; 
          74, -50; 67, -50], style(color = 5, rgbcolor = {255, 0, 255}));
        connect(idealDiode1.p, idealClosingSwitch1.n)
          annotation (points = [-40, 40; -60, 40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode3.p, idealClosingSwitch3.n) annotation (points = [23, 40; 
          6.12323e-16, 40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode5.p, idealClosingSwitch5.n)
          annotation (points = [80, 40; 60, 40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode4.n, idealClosingSwitch4.p)
          annotation (points = [-40, -40; -60, -40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode6.n, idealClosingSwitch6.p) annotation (points = [20, -40; 
          -6.12323e-16, -40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealDiode2.n, idealClosingSwitch2.p) annotation (points = [80, -40; 60, 
          -40], style(color = 3, rgbcolor = {0, 0, 255}));
        connect(idealClosingSwitch6.control, u[6]) annotation (points = [7, -50; 12, -50; 
          12, 8.33333; 100, 8.33333], style(color = 5, rgbcolor = {255, 0, 255}));
        connect(idealClosingSwitch4.control, u[4]) annotation (points = [-53, -50; -48, 
          -50; -48, 1.66667; 100, 1.66667], style(color = 5, rgbcolor = {255, 0, 255}));
      end threePhase;
      model Rotor_PMSM "永磁同步电机转子模型"
        extends Icons.Rotor;
        extends Interfaces.Electric_OnePort;
        parameter Integer p "极对数";
        constant Real pi = Modelica.Constants.pi;
        parameter Modelica.SIunits.Voltage E0 "空载相电动势有效值";
        parameter Modelica.SIunits.Conductance Lmd "d轴电感";
        parameter Modelica.SIunits.Conductance Lmq "q轴电感";
        parameter Modelica.SIunits.Frequency f_nominal "额定频率";
        parameter Real TransformationMatrix[2,m] = sqrt(2 / m) * 
          {{cos(+(k - 1) / m * 2 * pi) for k in 1:m}, {+sin(+(k - 1) / m * 2 * pi) for k in 1:m}} "三相到两相变换矩阵";
        Real RotationMatrix[2,2] "定子到转子变换矩阵";
        Modelica.SIunits.Angle gamma "电角度";
        Modelica.SIunits.MagneticFlux psi_mr[2] "旋转坐标系下的磁链";
        Modelica.SIunits.MagneticFlux psi_ms[m] "三相静止坐标系下的磁链";
        Modelica.SIunits.Current i_r[2] "旋转坐标系下的电流";
        Modelica.SIunits.Current i_f "等效励磁电流";
        output Modelica.SIunits.Torque tau_electrical = -flange_a.tau;
        Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
          annotation (Placement(transformation(extent = {{48, -10}, {68, 10}})));
        Modelica.Mechanics.Rotational.Interfaces.Flange_a Support
          annotation (Placement(transformation(extent = {{-101, -10}, {-81, 10}})));
        annotation (Icon(graphics = {
          Ellipse(extent = {{-20, 60}, {20, 20}}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, color = {255, 104, 32}), 
          Ellipse(extent = {{20, -60}, {-20, -20}}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Solid, color = {0, 255, 0}), 
          Rectangle(extent = {{-10, 40}, {10, -40}}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Solid, color = {102, 102, 102}), 
          Rectangle(extent = {{-10, 40}, {10, 0}}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, color = {102, 102, 102}), 
          Rectangle(extent = {{-20, 40}, {-10, 20}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Rectangle(extent = {{20, 20}, {10, 40}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Rectangle(extent = {{-20, -20}, {-10, -40}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127}), 
          Rectangle(extent = {{20, -20}, {10, -40}}, fillColor = {127, 127, 127}, fillPattern = FillPattern.Solid, color = {127, 127, 127})}));
      equation 
        gamma = p * (flange_a.phi - Support.phi);
        RotationMatrix = {{+cos(gamma), +sin(gamma)}, {-sin(gamma), +cos(gamma)}};
        0 = 1 / m * sum(v);
        i_f = sqrt(3) * E0 / (2 * pi * f_nominal * Lmd);
        i_r = RotationMatrix * TransformationMatrix * i;
        psi_mr[1] = Lmd * (i_r[1] + i_f);
        psi_mr[2] = Lmq * i_r[2];
        psi_mr = RotationMatrix * TransformationMatrix * psi_ms;
        v = der(psi_ms);
        tau_electrical = p * (Lmd * i_f * i_r[2] + (Lmd - Lmq) * i_r[1] * i_r[2]);
        Support.tau = tau_electrical;
      end Rotor_PMSM;



      model PMSM "永磁同步电机模型"
        extends Icons.Motor;
        extends Interfaces.Mechanical_port;
        extends Interfaces.Electric_Port;
        parameter Integer p "极对数";
        parameter Integer m = 3 "相数";
        parameter Modelica.SIunits.Resistance Rs "定子绕组每相电阻";
        parameter Modelica.SIunits.Inductance Lssigma "定子绕组每相漏电感";
        parameter Modelica.SIunits.Voltage E0 "空载相电动势有效值";
        parameter Modelica.SIunits.Inductance Lmd "d轴电感";
        parameter Modelica.SIunits.Inductance Lmq "q轴电感";
        parameter Modelica.SIunits.Frequency f_nominal "额定频率";
        annotation (defaultComponentName = "PMSM", Icon(graphics = {
          Rectangle(extent = {{-4.21, 14.01}, {4.21, -14.01}}, color = {0, 0, 0}, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, rotation = 90, 
          origin = {-103.8, -0.00697}), 
          Rectangle(extent = {{-4.215, 14.18}, {4.215, -14.18}}, color = {0, 0, 0}, fillColor = {0, 255, 0}, fillPattern = FillPattern.Solid, rotation = 90, 
          origin = {-76.26, -0.2596}), 
          Line(points = {{-20, 70}, {-20, 100}, {-40, 100}}), 
          Line(points = {{0, 70}, {0, 100}, {20, 100}})}));
        Modelica.Electrical.MultiPhase.Basic.Resistor rs(R = fill(Rs, 3)) "定子绕组每相电阻" 
          annotation (Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {39.74, 36.36})));
        Modelica.Electrical.MultiPhase.Basic.Inductor lssigma(L = fill(Lssigma, 3)) "定子绕组相漏电感" 
          annotation (Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = -90, origin = {39.92, 64.48})));
        Components.Rotor_PMSM rotor_pmsm(p = p, 
          m = m, 
          E0 = E0, 
          Lmd = Lmd, 
          Lmq = Lmq, 
          f_nominal = f_nominal)
          annotation (Placement(transformation(extent = {{7.819, -16.18}, {40.18, 16.18}})));
      equation 
        connect(rotor_pmsm.flange_a, inertiaRotor.flange_a)
          annotation (Line(color = {0, 0, 0}, points = {{33, 0}, {60, 0}}));
        connect(rotor_pmsm.Support, internalSupport)
          annotation (Line(color = {0, 0, 0}, points = {{9, 0}, {-68, 0}, {-68, -100}, {20, -100}}));
        connect(plug_p, lssigma.plug_p)
          annotation (Line(points = {{20, 100}, {40, 100}, {40, 74}}));
        connect(lssigma.plug_n, rs.plug_p)
          annotation (Line(points = {{40, 54}, {40, 46}}));
        connect(rs.plug_n, rotor_pmsm.plug_p)
          annotation (Line(points = {{40, 26}, {40, 10}, {34, 10}}));
        connect(rotor_pmsm.plug_n, plug_n)
          annotation (Line(points = {{14, 10}, {-68, 10}, {-68, 100}, {-40, 100}}));
      end PMSM;
    end Components;

    package Interfaces
      extends Drivers.Icons.FolderBlue;
      partial model LoadThreePhase "Base model of a three phase load plug"

        annotation (Coordsys(grid = [1, 1], scale = 0), Documentation(info = "<html><p>Contains the basic connectors for the converter three phase load side.</p></html>", revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-02-20</td>  <td> </td></tr></tbody></table></html>"));

        Modelica.Electrical.MultiPhase.Interfaces.PositivePlug pLoad
          "Plug of the load circuit" 
          annotation (extent = [-10, -110; 10, -90]);

        Modelica.SIunits.Current iLoad[3] "Current of the load plug";
        Modelica.SIunits.Voltage vLoad[3] "Voltage of the load plug";
        Modelica.SIunits.Power powerLoad "Power of the load plug";
      equation 
        iLoad = pLoad.pin.i;
        vLoad = pLoad.pin.v;
        powerLoad = vLoad * iLoad;

      end LoadThreePhase;

      partial model SupplyDC "Base model of the converter DC-supply port"

        Modelica.Electrical.Analog.Interfaces.PositivePin pSupply(final v(start = 0))
          "Positive pin of the supply circuit" 
          annotation (extent = [-110, 50; -90, 70]);
        Modelica.Electrical.Analog.Interfaces.NegativePin nSupply(final v(start = 0))
          "Negative pin of the supply circuit" 
          annotation (extent = [-110, -70; -90, -50]);

        parameter Modelica.SIunits.Current IConverterMax(min = 0)
          "Maximum admissible converter DC supply current" 
          annotation (Dialog(tab = "Reference values and limits"));

        Modelica.SIunits.Voltage vSupply "Voltage of the supply port";
        Modelica.SIunits.Current iSupply "Current of the supply port";
        Modelica.SIunits.Power powerSupply "Power of the supply port";
      equation 
        vSupply = pSupply.v - nSupply.v;
        iSupply = pSupply.i;
        powerSupply = iSupply * vSupply;
        assert(iSupply <= IConverterMax, "Converter current exceeded maximum admissible current of the supply port (IConverterMax = " + String(IConverterMax) + "A)");
        assert(vSupply >= 0, "The voltage of the supply port must be greater than zero! (vSupply = " + String(vSupply) + "V)");

        annotation (Coordsys(grid = [1, 1], scale = 0), Documentation(info = "<html><p>Contains the basic connectors, parameters and asserts for the converter DC supply side.</p></html>", revisions = "<html><table border=\"1\" rules=\"groups\"><thead><tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr></thead><tbody><tr><td>1.0.0</td>  <td>2006-02-20</td>  <td> </td></tr><tr><td>1.0.3</td>  <td>2006-03-29</td>  <td> Redefined some start values </td></tr><tr><td>     </td>  <td>2006-05-02</td>  <td> Changed vSupply &gt; 0 to vSupply &gt;= 0 </td></tr><tr><td>     </td>  <td>2006-08-31</td>  <td> Improved assert statements </td></tr></tbody></table></html>"), Diagram(
          Line(points = [-100, 40; -100, -40], style(color = 0, rgbcolor = {0, 0, 0})), 
          Polygon(points = [-100, -41; -102, -33; -98, -33; -100, -41], style(
            color = 0, 
            rgbcolor = {0, 0, 0}, 
            fillColor = 0, 
            rgbfillColor = {0, 0, 0})), 
          Text(
            extent = [-96, 10; -76, 0], 
            style(
              color = 0, 
              rgbcolor = {0, 0, 0}, 
              fillColor = 0, 
              rgbfillColor = {0, 0, 0}, 
              fillPattern = 1), 
            string = "vSupply")));
      end SupplyDC;

      partial block SO "Single Output continuous control block"
        // extends BlockIcon;

        Modelica.Blocks.Interfaces.RealOutput y
          "Connector of Real output signal" 
          annotation (extent = [100, -10; 120, 10]);
        annotation (
          Coordsys(
            extent = [-100, -100; 100, 100], 
            grid = [2, 2], 
            component = [20, 20]), 
          Window(
            x = 0.25, 
            y = 0.02, 
            width = 0.6, 
            height = 0.6), 
          Diagram, 
          Documentation(info = "<html><p>Block has one continuous Real output signal.</p></html>"));

      end SO;
      partial model Source "Base model for the energy sources "

        Modelica.Electrical.Analog.Interfaces.PositivePin p
          "Positive pin of the electric source" 
          annotation (extent = [90, 50; 110, 70]);
        Modelica.Electrical.Analog.Interfaces.NegativePin n
          "Negative pin of the electric source" 
          annotation (extent = [90, -70; 110, -50]);
        annotation (Coordsys(grid = [1, 1], scale = 0), Diagram, 
          Documentation(info = "<html>
<p>
Contains the basic connectors for energy sources.
</p>
</html>", revisions = "<html>
<table border=\"1\" rules=\"groups\">
<thead>
<tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr>
</thead>
<tbody>
<tr><td>1.0.0</td>  <td>2006-02-20</td>  <td> </td></tr>
</tbody>
</table>
</html>"), Icon(
            Rectangle(extent = [-100, 100; 100, -100], style(
              color = 74, 
              rgbcolor = {0, 0, 127}, 
              fillColor = 7, 
              rgbfillColor = {255, 255, 255})), 
            Text(extent = [-150, 150; 150, 110], string = 
              "%name")));

        parameter Integer ns(min = 1) = 1 "Number of serial connected cells" 
          annotation (Dialog(group = "Size of the package"));
        parameter Integer np(min = 1) = 1 "Number of parallel connected cells" annotation (Dialog(group = "Size of the package"));

        Modelica.SIunits.Voltage vCell "Cell voltage";
        Modelica.SIunits.Current iCell "Cell current";
        Modelica.SIunits.Power powerCell "Cell power";
        Modelica.SIunits.Voltage vPackage "Package voltage";
        Modelica.SIunits.Current iPackage "Package current";
        Modelica.SIunits.Power powerPackage "Package power";
      equation 
        vPackage = p.v - n.v;
        iPackage = p.i;
        powerPackage = vPackage * iPackage;

        vCell = vPackage / ns;
        iCell = iPackage / np;
        powerCell = vCell * iCell;

      end Source;
      partial model Electric_Port "电气接口"
        Modelica.SIunits.Voltage vs[m] "定子端电压";
        Modelica.SIunits.Current is[m] "定子端电流";
        parameter Integer m = 3 "相数";
        Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m = m)
          annotation (Placement(transformation(extent = {{10, 90}, {30, 110}})));
        Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m = m)
          annotation (Placement(transformation(extent = {{-50, 90}, {-30, 110}})));
        annotation (Icon(graphics = {
          Line(points = {{-20, 70}, {-20, 100}, {-40, 100}}), 
          Line(points = {{0, 70}, {0, 100}, {20, 100}})}));
      equation 
        vs = plug_p.pin.v - plug_n.pin.v;
        is = plug_p.pin.i;
      end Electric_Port;
      partial model Electric_OnePort "多相电端口"
        parameter Integer m = 3 "相数";
        Modelica.SIunits.Voltage v[m] "电气两接口之间的电压";
        Modelica.SIunits.Current i[m] "流过两接口的电流";
        Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(
          final m = m)
          annotation (Placement(transformation(extent = {{50, 50}, {70, 70}})));
        Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(
          final m = m)
          annotation (Placement(transformation(extent = {{-70, 50}, {-50, 70}})));
      equation 
        v = plug_p.pin.v - plug_n.pin.v;
        i = plug_p.pin.i;
        i = -plug_n.pin.i;
      end Electric_OnePort;
      model Mechanical_port "电机机械端口"
        parameter Modelica.SIunits.Inertia J_Rotor = 0.05 "转子转动惯量";
        parameter Boolean useSupport = false "是否使用固定支撑" 
          annotation (Evaluate = true);
        parameter Modelica.SIunits.Inertia J_Stator = J_Rotor "定子转动惯量" 
          annotation (Dialog(enable = useSupport));
        output Modelica.SIunits.Angle phi_mechanical = flange_a.phi - internalSupport.phi "转子相对于定子转过的机械角度";
        output Modelica.SIunits.AngularVelocity w_mechanical = der(phi_mechanical) "转子相对于定子的旋转速度";
        output Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm rpm_mechanical = Modelica.SIunits.Conversions.to_rpm(w_mechanical) "转子相对于定子的旋转速度，单位：[rpm]";
        output Modelica.SIunits.Torque tau_electrical = inertiaRotor.flange_a.tau "电磁转矩";
        output Modelica.SIunits.Torque tau_shaft = -flange_a.tau "轴端转矩";
        Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
          annotation (Placement(transformation(extent = {{98, -10}, {118, 10}})));
        Modelica.Mechanics.Rotational.Inertia inertiaRotor(
          final J = J_Rotor)
          annotation (extent = [80, 10; 60, -10], 
            rotation = -180);
        Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport
          annotation (Placement(transformation(extent = {{69.62, -94.96}, {89.62, -74.96}})));
        Modelica.Mechanics.Rotational.Inertia inertiaStator(
          final J = J_Stator) if useSupport
          annotation (extent = [80, -90; 60, -110], 
            rotation = -180);
        Modelica.Mechanics.Rotational.Fixed fixed if (not useSupport)
          annotation (Placement(transformation(extent = {{24.56, -110.5}, {44.56, -90.53}})));
      protected 
        Modelica.Mechanics.Rotational.Interfaces.Flange_b internalSupport
          annotation (extent = [19, -101; 21, -99]);
      equation 
        connect(inertiaRotor.flange_b, flange_a)
          annotation (Line(color = {0, 0, 0}, points = {{80, 0}, {108, 0}}));
        connect(internalSupport, fixed.flange_b)
          annotation (Line(color = {0, 0, 0}, points = {{20, -100}, {35, -100}, {35, -101}}));
        connect(inertiaStator.flange_b, support)
          annotation (Line(color = {0, 0, 0}, points = {{80, -100}, {80, -85}}));
        connect(internalSupport, inertiaStator.flange_a)
          annotation (Line(color = {0, 0, 0}, points = {{20, -100}, {20, -94}, {60, -94}, {60, -100}}));
      end Mechanical_port;
    end Interfaces;
    annotation (Icon(
      Polygon(points = [-80, -20; -40, 20; 72, 20; 32, -20], style(rgbcolor = {0, 0, 0})), 
      Rectangle(extent = [-80, -40; 32, -20], style(rgbcolor = {0, 0, 0}, rgbfillColor = {102, 102, 102}, fillPattern = 0)), 
      Polygon(points = [-28, -16; -8, -16; 24, 16; 4, 16], style(rgbcolor = {0, 0, 0}, rgbfillColor = {102, 102, 102})), 
      Ellipse(extent = [-12, -5; 6, 3], style(rgbcolor = {255, 255, 255}, rgbfillColor = {102, 102, 102}, gradient = 1)), 
      Rectangle(extent = [-12, -2; 6, 46], style(rgbfillColor = {102, 102, 102}, gradient = 1, rgbcolor = {192, 192, 192})), 
      Ellipse(extent = [-12, 42; 6, 50], style(rgbcolor = {255, 255, 255}, rgbfillColor = {102, 102, 102}, gradient = 1)), 
      Ellipse(extent = [-16, 46; 10, 72], style(gradient = 3, rgbcolor = {127, 127, 127}, rgbfillColor = {0, 0, 0})), 
      Polygon(points = [32, -20; 72, 20; 72, 0; 32, -40], style(rgbcolor = {0, 0, 0}, rgbfillColor = {102, 102, 102}))));
    model BatteryIdeal
      "Battery package with serial inner resistance"

      annotation (Icon, 
        Coordsys(grid = [1, 1], component = [20, 20]), 
        Documentation(info = "<html>
<p>
This battery model consists of a constant voltage source and a constant internal resistor. By chosing the parameters <code>ns</code> and <code>np</code> a battery package with series and parallel connected cells can be simulated. Since the whole battery is made up of <code>ns</code> series connected cells and <code>np</code> parallel connected cells the total internal resistance of the battery is <code>RsPackage = Rs * ns / np</code>.
</p>
 
<p>
The cell currents must not exceed the maximum current <code>ICellMax</code>. Consequently, the simulation gets aborted if the total current of the package <code>iPackage</code> exceeds <code>np * ICellMax</code>.
</p>
 
<p>
The potential difference between the connectors <code>p</code> and <code>n</code> represents the terminal voltage <code>vPackage</code> whereas the flow variables in these connectors refer to the terminal current <code>iPackage</code>.
</p>
</html>", revisions = "<html><table border=\"1\" rules=\"groups\">
<thead>
<tr><td>Version</td>  <td>Date</td>  <td>Comment</td></tr>
</thead>
<tbody>
<tr><td>1.0.0</td>  <td>2006-01-12</td>  <td> </td></tr>
<tr><td>1.0.3</td>  <td>2006-08-31</td>  <td> Improved assert statements </td></tr>
</tbody>
</table>
</html>"), Diagram);

      parameter Modelica.SIunits.Voltage VCellNominal(min = 0)
        "Nominal cell voltage" annotation (Dialog(group = "Parameters of the battery cell"));
      parameter Modelica.SIunits.Current ICellMax(min = 0)
        "Maximum admissible cell current" annotation (Dialog(group = "Parameters of the battery cell"));
      parameter Modelica.SIunits.Resistance RsCell(min = 0)
        "Serial cell resistance of the equivalent circuit" annotation (Dialog(group = "Parameters related to losses"));
      parameter Integer ns(min = 1) = 1 "Number of serial connected cells" 
        annotation (Dialog(group = "Size of battery package"));
      parameter Integer np(min = 1) = 1 "Number of parallel connected cells" 
        annotation (Dialog(group = "Size of battery package"));

      extends Drivers.Interfaces.Source;
      extends Drivers.Icons.battery;
    protected 
      parameter Modelica.SIunits.Resistance RsPackage = RsCell * ns / np
        "Serial inner resistance of cell package" annotation (Dialog(group = "Parameters of the battery cell"));


      Modelica.Electrical.Analog.Basic.Resistor rsPackage(
        final R = RsPackage)
        annotation (extent = [0, 50; 20, 70]);
      Modelica.Electrical.Analog.Sources.ConstantVoltage VoltageSource(
        final V = ns * VCellNominal)
        annotation (extent = [-70, -10; -50, 10], rotation = 270);
    equation 
      assert(abs(iPackage) <= ICellMax * np, "Battery current exceeded maximum admissible current (=" + String(ICellMax) + "A)");

      connect(rsPackage.n, p)
        annotation (points = [20, 60; 100, 60], style(color = 3, rgbcolor = {0, 0, 255}));
      connect(VoltageSource.p, rsPackage.p) annotation (points = [-60, 10; -60, 60; 0, 60], 
        style(color = 3, rgbcolor = {0, 0, 255}));
      connect(VoltageSource.n, n) annotation (points = [-60, -10; -60, -60; 100, -60], 
        style(color = 3, rgbcolor = {0, 0, 255}));
    end BatteryIdeal;
    model DC "直流电源"
      parameter Modelica.SIunits.Voltage VCellNominal(
        min = 0) "Nominal cell voltage" 
        annotation (Dialog(group = "Parameters of the battery cell"));
      parameter Modelica.SIunits.Current ICellMax(
        min = 0) "Maximum admissible cell current" 
        annotation (Dialog(group = "Parameters of the battery cell"));
      parameter Modelica.SIunits.Resistance RsCell(
        min = 0) "Serial cell resistance of the equivalent circuit" 
        annotation (Dialog(group = "Parameters related to losses"));
      parameter Integer ns(min = 1) = 1 "Number of serial connected cells" 
        annotation (Dialog(group = "Size of battery package"));
      parameter Integer np(min = 1) = 1 "Number of parallel connected cells" 
        annotation (Dialog(group = "Size of battery package"));
    protected 
      parameter Modelica.SIunits.Resistance RsPackage = RsCell * ns / np "Serial inner resistance of cell package" 
        annotation (Dialog(group = "Parameters of the battery cell"));
      BatteryIdeal batteryideal(VCellNominal = VCellNominal, 
        ICellMax = ICellMax, 
        RsCell = RsCell)
        annotation (Placement(transformation(extent = {{-20, 20}, {0, 40}})));
      BatteryIdeal batteryideal1(
        VCellNominal = VCellNominal, 
        ICellMax = ICellMax, 
        RsCell = RsCell)
        annotation (Placement(transformation(extent = {{-20, -20}, {0, 0}})));
      Modelica.Electrical.Analog.Basic.Ground ground
        annotation (Placement(transformation(extent = {{12, -60}, {44, -30}})));
      annotation (Icon(coordinateSystem(preserveAspectRatio = false, 
        extent = {{-100, -100}, {100, 100}}, 
        grid = {1, 1}, 
        initialScale = 0), 
        graphics = {
        Rectangle(extent = {{-60, 70}, {60, -90}}, thickness = 0.25, fillColor = {204, 153, 255}, fillPattern = FillPattern.VerticalCylinder, color = {0, 0, 0}), 
        Rectangle(extent = {{-18, 92}, {16, 70}}, thickness = 0.25, fillColor = {255, 104, 32}, fillPattern = FillPattern.VerticalCylinder, color = {0, 0, 0})}));
    public 
      Modelica.Electrical.Analog.Interfaces.PositivePin p "Positive pin of the electric source" 
        annotation (extent = [90, 50; 110, 70]);
      Modelica.Electrical.Analog.Interfaces.NegativePin n "Negative pin of the electric source" 
        annotation (extent = [90, -70; 110, -50]);
    equation 
      connect(batteryideal.n, ground.p)
        annotation (Line(color = {0, 0, 0}, points = {{0, 24}, {0, 23}, {28, 23}, {28, -30}}));
      connect(batteryideal1.p, ground.p)
        annotation (Line(points = {{0, -4}, {0, -3}, {28, -3}, {28, -30}}));
      connect(batteryideal.p, p)
        annotation (Line(points = {{0, 36}, {80, 36}, {80, 60}, {100, 60}}));
      connect(batteryideal1.n, n)
        annotation (Line(color = {0, 0, 0}, points = {{0, -16}, {80, -16}, {80, -60}, {100, -60}}));
    end DC;
  end Drivers;
  model PMSM
    //极对数
    parameter Integer p = 1 "Number of pole pairs" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    //反电动势
    parameter Modelica.SIunits.Voltage V0 = 110 "No load RMS voltage @ fNominal" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    parameter Modelica.SIunits.Current INominal = 6 "Nominal phase current" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    parameter Modelica.SIunits.Frequency fNominal = 50 "Nominal frequency" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    //转子转动惯量
    parameter Modelica.SIunits.Inertia Jr = 0.915 "Rotor's moment of inertia" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    //parameter Modelica.SIunits.Voltage VNominal = 85 "Nominal stator voltage" 
    //annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    parameter Real nNominal(unit = "rpm") = 3000 "Nominal arotor rotation speed" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    parameter Modelica.SIunits.Torque tauNominal = 5 "Nominal torque" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    parameter Modelica.SIunits.Time Tm = 0.00224 "mechanical time constant" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    parameter Modelica.SIunits.Time Ti = 0.004085 "Electrical time constant" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine"));
    //定子相电阻
    parameter Modelica.SIunits.Resistance Rs = 0.3567 "Warm stator resistance" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine", group = "Nominal resistances and inductances per phase of the permanent magnet synchronous induction machine"));
    //定子绕组每相漏电感
    parameter Modelica.SIunits.Inductance Lssigma = 0.000106 "Stator stray inductance" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine", group = "Nominal resistances and inductances per phase of the permanent magnet synchronous induction machine"));
    //d轴励磁电感
    parameter Modelica.SIunits.Inductance Lmd = 0.002316 "Main field inductance d-axis" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine", group = "Nominal resistances and inductances per phase of the permanent magnet synchronous induction machine"));
    //q轴励磁电感
    parameter Modelica.SIunits.Inductance Lmq = 0.002316 "Main field inductance q-axis" 
      annotation (Dialog(tab = "Permanent magnet synchronous induction machine", group = "Nominal resistances and inductances per phase of the permanent magnet synchronous induction machine"));
    Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetDamperCage PMSM(
      J_Rotor = Jr, 
      p = p, 
      fNominal = fNominal, 
      Rs = Rs, 
      Lssigma = Lssigma, 
      V0 = V0, 
      Lmd = Lmd, 
      Lmq = Lmq, 
      final DamperCage = false) "永磁交流同步电机" 
      annotation (Placement(transformation(extent = {{-20, -20}, {24, 26}})));
    Modelica.Electrical.Machines.Examples.Utilities.TerminalBox terminalBox(
      StarDelta = "Y")
      annotation (Placement(transformation(extent = {{-10.82, 40.02}, {9.18, 60.02}})));
    Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a
      annotation (Placement(transformation(extent = {{61.53, -32.47}, {82.47, -11.53}}), 
        iconTransformation(extent = {{70, -26}, {98, 2}})));
    Modelica.Electrical.MultiPhase.Interfaces.PositivePlug positiveplug
      annotation (Placement(transformation(extent = {{-80.85, -20.85}, {-65.15, -5.145}}), 
        iconTransformation(extent = {{-85.7, -25.7}, {-58, 2}})));
    annotation (Icon(graphics = {
      Bitmap(extent = {{-100, 108}, {100, -112}}, fileName = ".\\pictures\\伺服电机.jpg"), 
      Rectangle(extent = {{-100, 100}, {100, -100}}, radius = 5, color = {0, 0, 0}, thickness = 0.5), 
      Text(extent = {{-46, -72}, {46.87, -93.74}}, color = {0, 0, 0}, textString = "PMSM")}));
  equation 
    connect(terminalBox.positiveMachinePlug, PMSM.plug_sp)
      annotation (Line(points = {{5, 40}, {15, 40}, {15, 26}}));
    connect(PMSM.plug_sn, terminalBox.negativeMachinePlug)
      annotation (Line(points = {{-11, 26}, {-7, 26}, {-7, 40}}));
    connect(PMSM.flange_a, flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{24, 3}, {72, 3}, {72, -22}}));
    connect(terminalBox.plugToGrid, positiveplug)
      annotation (Line(points = {{-1, 42}, {-1, 60}, {-40, 60}, {-40, 19}, {-73, 19}, 
        {-73, -13}}));
  end PMSM;
  model Coupling "coupling"
    Modelica.Mechanics.Rotational.Spring spring(
      c = 96389.8)
      annotation (Placement(transformation(extent = {{-2, -12}, {18, 8}})));
    Modelica.Mechanics.Rotational.Inertia inertia(
      J = 4e-5)
      annotation (Placement(transformation(extent = {{-22, -10}, {-2, 10}})));
    Modelica.Mechanics.Rotational.Inertia inertia1(
      J = 4e-5)
      annotation (Placement(transformation(extent = {{32, -12}, {52, 8}})));
    annotation (Icon(graphics = {
      Text(extent = {{-44.68, 41.31}, {53.12, -28.38}}, textString = "Coupling"), 
      Bitmap(extent = {{-90, 50}, {96, -38}}, fileName = ".\\pictures\\联轴器.jpg"), 
      Line(points = {{-50, 50}, {57, 50}, {57, -38}, {-50, -38}, {-50, 50}}, color = {0, 0, 0}, thickness = 0.5)}));
    Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a "(left) driving flange (flange axis directed in to cut plane)" 
      annotation (Placement(transformation(extent = {{-38, -14}, {-26, 0}}), 
        iconTransformation(extent = {{-46, -34}, {-28, -16}})));
    Modelica.Mechanics.Rotational.Interfaces.Flange_b flange_b "(right) driven flange (flange axis directed out of cut plane)" 
      annotation (Placement(transformation(extent = {{38, 22}, {48, 32}}), 
        iconTransformation(extent = {{36.91, 30.91}, {53.09, 47.09}})));
  equation 
    connect(inertia.flange_b, spring.flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{-2, 0}, {-2, -2}}));
    connect(spring.flange_b, inertia1.flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{18, -2}, {32, -2}}));
    connect(flange_a, inertia.flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{-32, -7}, {-22, -7}, {-22, 0}}));
    connect(inertia1.flange_b, flange_b)
      annotation (Line(color = {0, 0, 0}, points = {{52, -2}, {52, 27}, {43, 27}}));
  end Coupling;
  model Z_axis_ScrewSimple "Z轴滚珠丝杠(简单）"
    Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a "(left) driving flange (flange axis directed in to cut plane)" 
      annotation (Placement(transformation(extent = {{-81.57, -11.57}, {-40.43, 29.57}}), 
        iconTransformation(extent = {{-92.85, -46.86}, {-77.15, -31.15}})));
    Modelica.Blocks.Interfaces.RealOutput phix "丝杠螺母处的角位移" 
      annotation (Placement(transformation(origin = {3, 85}, rotation = 90, extent = {{-34.28, -34.28}, {-6.856, -6.856}}), 
        iconTransformation(origin = {33, 67}, rotation = 90, extent = {{-27, -27}, {-6.854, -6.854}})));
    annotation (Icon(graphics = {
      Text(extent = {{32.83, 39.03}, {68.97, 22.75}}, textString = "phix"), 
      Text(extent = {{-72.4, -34.51}, {-38.66, -45.8}}, textString = "flange_a"), 
      Text(extent = {{-79.2, 27.03}, {-43, 10.75}}, textString = "Ts"), 
      Text(extent = {{-51.17, -42.97}, {-15.03, -59.25}}, textString = "Tf1"), 
      Bitmap(extent = {{-66, 40}, {60, -46}}, fileName = ".\\pictures\\滚珠丝杠.jpg"), 
      Line(points = {{76, 39}, {76, -58}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{76, -58}, {-77, -58}, {-77, -57}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{-77, -57}, {-77, 40}, {-76, 40}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{-76, 40}, {76, 40}, {76, 39}}, color = {0, 0, 0}, thickness = 0.5), 
      Text(extent = {{-56, 8}, {50, -22}}, textString = "Screw"), 
      Text(extent = {{18.83, -42.97}, {54.97, -59.25}}, textString = "Tf2")}));
    annotation (Placement(transformation(extent = {{-79.57, -51.57}, {-38.43, -10.43}}), 
      iconTransformation(extent = {{-86.85, -38.85}, {-71.15, -23.15}})));
    Modelica.Blocks.Interfaces.RealInput Tf1 "轴承的摩擦力矩" 
      annotation (Placement(transformation(origin = {19, -36}, rotation = 90, extent = {{-66.55, -77.65}, {-22.18, -33.28}}), 
        iconTransformation(origin = {-49, -50}, rotation = 90, extent = {{-24, -29}, {-8.474, -12.71}})));
    Modelica.Blocks.Interfaces.RealInput Ts "负载转矩" 
      annotation (Placement(transformation(origin = {-73, 20}, rotation = 0, extent = {{-66.55, -77.65}, {-22.18, -33.28}}), 
        iconTransformation(origin = {-71, 34}, rotation = 0, extent = {{-18, -21}, {-5.237, -7.855}})));
    parameter Modelica.SIunits.Height ds = 0.04 "丝杠的直径";
    parameter Modelica.SIunits.Area As = Modelica.Constants.pi * (ds ^ 2) / 4 "丝杠的截面积";
    constant Real E = 2.1e11 "丝杠材料的弹性模量，对于钢材E=2.1e5MPa";
    parameter Modelica.SIunits.Length Lsg = 0.8 "两双推轴承之间的距离";
    //Real Ksa "丝杠的轴向刚度";
    //parameter Real KB = 1.12e8 "支撑轴承轴向刚度";
    //Real Kz "进给系统轴向刚度";
    parameter Modelica.SIunits.Length h = 0.012 "丝杠的导程";
    parameter Modelica.SIunits.Length L6 = 0.766 "丝杠总长";
    parameter Modelica.SIunits.Density midu = 7850 "丝杠的密度，材料为钢";
    parameter Modelica.SIunits.Inertia J0 = Modelica.Constants.pi * midu * L * (ds ^ 4) / 32 "丝杠的转动惯量";
    constant Real G = 8.2e10 "剪切弹性模量，对钢G=8.2e10（N/m2）";
    parameter Real i = h / (2 * Modelica.Constants.pi);
    parameter Modelica.SIunits.Length Ls = 1.2 "丝杠的有效长度";
    parameter Modelica.SIunits.Damping Bta1 = 0.09 "丝杠与螺母结合面径向阻尼系数";
    //Real Kst "负载部分扭转刚度";
    parameter Real Ksn = Modelica.Constants.pi * (ds ^ 4) * G / (32 * L) "丝杠扭转刚度";
    //parameter Real Kzn = 6000 "轴承扭转刚度";
  protected 
    Modelica.SIunits.AngularVelocity w1;
  public 
    parameter Modelica.SIunits.Mass M = 100 "工作台质量";
    parameter Modelica.SIunits.Inertia Jw = M * h * h / (4 * (Modelica.Constants.pi) * (Modelica.Constants.pi));
    Modelica.Blocks.Interfaces.RealInput Tf2 "轴承的摩擦力矩" 
      annotation (Placement(transformation(origin = {-69, -28}, rotation = 90, extent = {{-66.55, -77.65}, {-22.18, -33.28}}), 
        iconTransformation(origin = {17, -50}, rotation = 90, extent = {{-24, -29}, {-8.474, -12.71}})));
  equation 
    phix = flange_a.phi;
    w1 = der(flange_a.phi);
    //w2 = der(phix);
    //Kst = Ksn;
    //Ksa = As * E * Lsg / ((Z + 0.02) * (Lsg - Z - 0.02));
    //if KB <> 0 then     
    //  Kz = 1 / (1 / Ksa + 1 / (2 * KB) + 1 / KN);
    //else
    // Kz = 1 / (1 / Ksa + 1 / KN);
    //end if;
    //s1 = F / Kz;
    //s2 = F * h * h / (4 * (Modelica.Constants.pi) * (Modelica.Constants.pi) * Kst);
    //flange_a.tau = (J0 + Jw) * der(w1) + Bta1 * w2 + Ts + Tf;
    flange_a.tau = (J0 + Jw) * der(w1) + Bta1 * w1 + Ts + Tf1 + Tf2;
    //flange_a.tau = Ksn * (flange_a.phi - phix);
  end Z_axis_ScrewSimple;
  model Z_axis_RollingGuide "滚动导轨"
    parameter Modelica.SIunits.Mass M = 100 "工作台质量";
    parameter Real ugf = 0.01 "导轨副的摩擦系数,普通导轨0.05~0.1，直线滚动导轨0.01~0.02";
    parameter Real B(unit = "N/m/s") = 56.6223 "粘滞摩擦因子";
    Modelica.Blocks.Interfaces.RealInput Fy "法向切削力" 
      annotation (Placement(transformation(origin = {45, 48}, rotation = -90, extent = {{-21.18, -33.89}, {-8.474, -12.71}}), 
        iconTransformation(origin = {21, -70}, rotation = -90, extent = {{-13.09, -20.95}, {-3.257e-6, -7}})));
    Modelica.Blocks.Interfaces.RealInput v "工作台的移动速度" 
      annotation (Placement(transformation(extent = {{83.53, -12.47}, {100.5, 4.474}}), 
        iconTransformation(extent = {{89.53, -20.47}, {106.5, -3.526}})));
    Modelica.Blocks.Interfaces.RealOutput Fg "导轨的摩擦力" 
      annotation (Placement(transformation(origin = {-90, -9}, rotation = 180, extent = {{-33.89, -29.66}, {-16.95, -12.71}}), 
        iconTransformation(origin = {-96, -33}, rotation = 180, extent = {{-33.89, -29.66}, {-16.95, -12.71}})));
    annotation (Icon(graphics = {
      Text(extent = {{-10, 34}, {-3.34, 27.13}}, textString = ""), 
      Text(extent = {{-2.39, -73.43}, {20, -88}}, textString = "Fy"), 
      Text(extent = {{85.21, 17.14}, {118.7, -17.26}}, textString = "v"), 
      Text(extent = {{-110.3, 0.29}, {-83.4, -26.65}}, textString = "Fg"), 
      Bitmap(extent = {{-78, 44}, {92, -76}}, fileName = ".\\pictures\\滚动导轨.jpg"), 
      Line(points = {{-76, 48}, {90, 48}, {90, 50}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{90, 50}, {90, -70}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{90, -70}, {-80, -70}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{-80, -70}, {-80, 48}, {-76, 48}}, color = {0, 0, 0}, thickness = 0.5), 
      Text(extent = {{-54, 2}, {80, -24}}, textString = "RollingGuide")}));
  equation 
    Fg = (ugf * Fy + M * Modelica.Constants.g_n + B * abs(v)) * sign(v);
  end Z_axis_RollingGuide;
  model SimpleHeadStock "主轴箱"
    Modelica.Blocks.Interfaces.RealOutput Ts "负载转矩" 
      annotation (Placement(transformation(extent = {{91.91, -82.09}, {118.1, -55.91}}), 
        iconTransformation(extent = {{-100, -76}, {-90, -66}})));
    Modelica.Blocks.Interfaces.RealInput Fg "导轨的摩擦力" 
      annotation (Placement(iconTransformation(extent = {{-112, 58}, {-100, 70}}), 
        transformation(extent = {{-121.7, 48.29}, {-90.29, 79.71}})));
    Modelica.Blocks.Interfaces.RealInput Fz "进给力" 
      annotation (Placement(iconTransformation(origin = {-60, 106}, rotation = -90, extent = {{-6, -6}, {6, 6}}), 
        transformation(origin = {-60, 106}, rotation = -90, extent = {{-15.71, -15.71}, {15.71, 15.71}})));
    Modelica.Blocks.Interfaces.RealInput phz "丝杠螺母处的角位移" 
      annotation (Placement(iconTransformation(origin = {56, -106}, rotation = 90, extent = {{-6, -6}, {6, 6}}), 
        transformation(origin = {56, -106}, rotation = 90, extent = {{-15.71, -15.71}, {15.71, 15.71}})));
    Modelica.Blocks.Interfaces.RealOutput az "主轴箱的加速度" 
      annotation (Placement(iconTransformation(extent = {{100, 54}, {110, 64}}), 
        transformation(extent = {{91.91, 45.91}, {118.1, 72.09}})));
    Modelica.Blocks.Interfaces.RealOutput z "主轴箱的位移" 
      annotation (Placement(transformation(extent = {{91.91, 7.908}, {118.1, 34.09}}), 
        iconTransformation(extent = {{100, -74}, {110, -64}})));
    Modelica.Blocks.Interfaces.RealOutput vz "主轴箱的速度" 
      annotation (Placement(transformation(extent = {{91.75, -33.1}, {118, -6.918}}), 
        iconTransformation(extent = {{99.87, 18.99}, {109.9, 28.99}})));
    Modelica.Blocks.Continuous.Derivative derivative
      annotation (Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 0, origin = {26, 4})));
    Modelica.Blocks.Continuous.Derivative derivative1
      annotation (Placement(transformation(origin = {20, 60}, extent = {{-10, -10}, {10, 10}})));
    annotation (Icon(graphics = {
      Rectangle(extent = {{-100, 100}, {100, -100}}, radius = 5), 
      Bitmap(extent = {{-100, 96}, {100, -74}}, fileName = ".\\pictures\\主轴箱.jpg"), 
      Text(extent = {{-90, -70}, {94, -96}}, textString = "HeadStock"), 
      Text(extent = {{62, 114}, {72.44, 103.3}}, textString = "Fy"), 
      Text(extent = {{-48, 114}, {-37.56, 103.3}}, textString = "Fz"), 
      Text(extent = {{-98, 38}, {-111.6, 55.27}}, textString = "Fg"), 
      Text(extent = {{80, -120}, {60, -100}}, textString = "phz"), 
      Text(extent = {{120, 70}, {100, 90}}, textString = "az"), 
      Text(extent = {{120, -60}, {100, -40}}, textString = "z"), 
      Text(extent = {{120, 24}, {100, 44}}, textString = "vz"), 
      Text(extent = {{-80, -62}, {-100, -42}}, textString = "Ts")}));
    parameter Modelica.SIunits.Mass M = 0.01 "主轴箱质量";
  parameter Modelica.SIunits.Length h = 0.01 "丝杠的导程";
  parameter Real i = h / (2 * Modelica.Constants.pi);
  parameter Modelica.SIunits.Force Cn0 = 25988 "双螺母预紧方式额定动载荷";
  parameter Real Kn0 = 1.15e9 "产品样本尺寸表中给的接触刚度";
  Modelica.SIunits.Torque Tx "切削负载力矩";
  Modelica.SIunits.Torque Tgf "导轨摩擦力矩";
  Modelica.SIunits.Torque Tbf "丝杠预紧产生的的摩擦力矩";
  constant Real n = 0.952 "预紧滚珠丝杠的效率";
    Modelica.SIunits.Force Fp = 0.1 * Cn0;
    Modelica.Blocks.Interfaces.RealInput Fy "法向切削载荷" 
      annotation (Placement(iconTransformation(origin = {40, 106}, rotation = -90, extent = {{-6, -6}, {6, 6}}), 
        transformation(origin = {40, 106}, rotation = -90, extent = {{-15.71, -15.71}, {15.71, 15.71}})));
  equation 
    connect(z, derivative.u)
      annotation (Line(points = {{105, 21}, {0, 21}, {0, 4}, {14, 4}}, color = {0, 0, 127}));
    connect(derivative.y, vz)
      annotation (Line(points = {{37, 4}, {52, 4}, {52, -20}, {105, -20}}, color = {0, 0, 127}));
    connect(derivative.y, derivative1.u)
      annotation (Line(points = {{37, 4}, {52, 4}, {52, -20}, {-20, -20}, {-20, 60}, 
        {8, 60}}, color = {0, 0, 127}));
    connect(derivative1.y, az)
      annotation (Line(points = {{31, 60}, {100, 60}, {100, 59}, {105, 59}}, color = {0, 0, 127}));
    //F = M * az + Fg + Fz;
    z = i * phz;
    // v = der(X);
    // a = der(v);
    //if Fp <> 0.1 * Cn0 then     
    //KN = 0.8 * Kn0 * (Fp / (0.1 * Cn0)) ^ (1 / 3);
    //else
    // KN = 0.8 * Kn0;
    //end if;
    Tx = h * Fz / (2 * Modelica.Constants.pi * n);
    Tgf = h * Fg / (2 * Modelica.Constants.pi * n);
    Tbf = h * Fp / (2 * Modelica.Constants.pi * n);
    Ts = Tx + Tgf + Tbf;
  end SimpleHeadStock;

  model FixedBearing "轴承"
    Modelica.Blocks.Interfaces.RealOutput KB1(unit = "N/m") "轴承轴向刚度" 
      annotation (Placement(transformation(extent = {{60.29, 14.29}, {90, 52}}), 
        iconTransformation(extent = {{71.15, 13.15}, {90, 34}})));
    Modelica.Blocks.Interfaces.RealOutput Tf1(unit = "Nm") "轴承启动力矩（摩擦力矩）" 
      annotation (Placement(transformation(extent = {{60.29, -32.95}, {88, 4}}), 
        iconTransformation(extent = {{71.15, -38.47}, {90, -14}})));
    annotation (Icon(graphics = {
      Text(extent = {{73.53, 47.71}, {86.47, 28.29}}, textString = "KB1"), 
      Text(extent = {{73.53, -0.291}, {86.47, -19.71}}, textString = "Tf1"), 
      Bitmap(extent = {{-50, 40}, {70, -50}}, fileName = ".\\pictures\\轴承.jpg"), 
      Line(points = {{-54, 50}, {70, 50}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{70, 50}, {70, -50}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{70, -50}, {-54, -50}, {-54, -49}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{-54, -49}, {-54, 50}}, color = {0, 0, 0}, thickness = 0.5)}));
  equation 
   KB1 = 7.6e8;
   Tf1 = 0.15;
  end FixedBearing;
  model OppositeFixedEndBearing "轴承"
    Modelica.Blocks.Interfaces.RealOutput KB2(unit = "N/m") "轴承轴向刚度" 
      annotation (Placement(transformation(extent = {{52.43, 6.433}, {93.57, 47.57}}), 
        iconTransformation(extent = {{-52.85, 11.15}, {-37.15, 26.85}})));
    Modelica.Blocks.Interfaces.RealOutput Tf2(unit = "Nm") "轴承启动力矩（摩擦力矩）" 
      annotation (Placement(transformation(extent = {{48.43, -67.42}, {89.57, -12.58}}), 
        iconTransformation(extent = {{-52.85, -30.47}, {-37.15, -9.527}})));
    annotation (Icon(graphics = {
      Text(extent = {{-50.47, 43.71}, {-34, 22}}, textString = "KB2"), 
      Text(extent = {{-48.47, 3.709}, {-35.53, -15.71}}, textString = "Tf2"), 
      Bitmap(extent = {{-40, 36}, {54, -38}}, fileName = ".\\pictures\\轴承.jpg"), 
      Line(points = {{-54, 50}, {70, 50}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{70, 50}, {70, -50}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{70, -50}, {-54, -50}, {-54, -49}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{-54, -49}, {-54, 50}}, color = {0, 0, 0}, thickness = 0.5)}));
  equation 
   KB2 = 7.6e8;
   Tf2 = 0.15;
  end OppositeFixedEndBearing;
  model SupportedEndBearing "支撑端轴承"
    Modelica.Blocks.Interfaces.RealOutput KB2(unit = "N/m") "轴承轴向刚度" 
      annotation (Placement(transformation(extent = {{60.29, 14.29}, {85.71, 39.71}}), 
        iconTransformation(extent = {{66.15, 12.15}, {75.85, 21.85}})));
    Modelica.Blocks.Interfaces.RealOutput Tf2(unit = "Nm") "轴承启动力矩（摩擦力矩）" 
      annotation (Placement(transformation(extent = {{60.29, -32.95}, {85.71, 0.9471}}), 
        iconTransformation(extent = {{66.15, -22.47}, {75.85, -9.528}})));
    annotation (Icon(graphics = {
      Text(extent = {{68, 30}, {76, 18}}, textString = "KB2"), 
      Text(extent = {{68, 0}, {76, -12}}, textString = "Tf2"), 
      Line(points = {{-10.77, 31}, {65.86, 31}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{66, 30.9}, {66, -30.9}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{65.84, -30.71}, {-10.79, -30.71}, {-10.79, -30.1}}, color = {0, 0, 0}, thickness = 0.5), 
      Line(points = {{-10.76, -30.51}, {-10.76, 30.68}}, color = {0, 0, 0}, thickness = 0.5), 
      Text(extent = {{-6, 10}, {66, -18}}, textString = "Bearing")}));
  equation 
   KB2 = 7.6e8;
   Tf2 = 0.15;
  end SupportedEndBearing;
  model Z_axis_Mechnical_model
    annotation (Diagram(coordinateSystem(preserveAspectRatio = false, 
      extent = {{-540, -300}, {780, 480}})), 
      Icon(coordinateSystem(preserveAspectRatio = false, 
        extent = {{-180, -100}, {220, 120}}), 
        graphics = {
        Rectangle(extent = {{-90, 50}, {90, -50}}, radius = 5, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.5), 
        Text(extent = {{-81.74, 47.04}, {-11.38, 30.73}}, textString = "Fz"), 
        Text(extent = {{26.26, 47.04}, {64, 32}}, textString = "Fy"), 
        Text(extent = {{48.26, 7.04}, {118.6, -9.27}}, textString = "vz"), 
        Text(extent = {{48.26, 43.04}, {118.6, 26.73}}, textString = "az"), 
        Text(extent = {{44.26, -26.96}, {114.6, -43.27}}, textString = "Z"), 
        Text(extent = {{-76, 28}, {70, -50}}, textString = "Z_axis_mechnical_model"), 
        Bitmap(extent = {{-64, 30}, {56, -50}}, fileName = "..\\pictures\\传动机构.bmp")}));
    Modelica.Mechanics.Rotational.Interfaces.Flange_a flange_a "(left) driving flange (flange axis directed in to cut plane)" 
      annotation (Placement(transformation(extent = {{-232, -98}, {-212, -78}}), 
        iconTransformation(extent = {{-88, -46}, {-72, -28}})));
    Coupling coupling
      annotation (Placement(transformation(extent = {{-198.4, -122.4}, {-113.6, -37.63}})));
    Z_axis_RollingGuide z_axis_rollingguide
      annotation (Placement(iconTransformation(extent = {{155.4, -192.6}, {292.6, -55.44}}), 
        transformation(extent = {{225.4, -232.6}, {362.6, -95.4}})));
    FixedBearing fixedbearing
      annotation (Placement(iconTransformation(extent = {{-40, -140}, {-20, -120}}), 
        transformation(extent = {{-86.37, -170.4}, {-1.63, -85.63}})));
    OppositeFixedEndBearing oppositefixedendbearing
      annotation (Placement(iconTransformation(extent = {{160, -140}, {180, -120}}), 
        transformation(extent = {{83.6, -87.63}, {168.4, -172.4}})));
    Z_axis_ScrewSimple z_axis_screwsimple
      annotation (Placement(iconTransformation(extent = {{-60, 10}, {-40, 30}}), 
        transformation(extent = {{-90.93, -100.9}, {130.9, 120.9}})));
    SimpleHeadStock simpleheadstock
      annotation (Placement(iconTransformation(extent = {{250, 60}, {270, 80}}), 
        transformation(extent = {{89.07, 139.1}, {310.9, 360.9}})));
    Modelica.Blocks.Interfaces.RealInput Fz "进给力" 
      annotation (Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = -90, origin = {140, 440}), 
        iconTransformation(extent = {{-60.36, 47.64}, {-35.64, 72.36}})));
    Modelica.Blocks.Interfaces.RealInput Fy "法向切削载荷" 
      annotation (Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = -90, origin = {240, 450}), 
        iconTransformation(extent = {{31.64, 51.64}, {56.36, 76.36}})));
    Modelica.Blocks.Interfaces.RealOutput az "主轴箱的加速度" 
      annotation (Placement(transformation(extent = {{393.8, 303.8}, {426.2, 336.2}}), 
        iconTransformation(extent = {{90, 22}, {110, 42}})));
    Modelica.Blocks.Interfaces.RealOutput vz "主轴箱的速度" 
      annotation (Placement(transformation(extent = {{473.8, 263.8}, {506.2, 296.2}}), 
        iconTransformation(extent = {{90, -16}, {110, 4}})));
    Modelica.Blocks.Interfaces.RealOutput z "主轴箱的位移" 
      annotation (Placement(transformation(extent = {{399.8, 159.8}, {432.2, 192.2}}), 
        iconTransformation(extent = {{90, -44}, {110, -24}})));
  equation 
    connect(coupling.flange_a, flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{-172, -91}, {-172, -88}, {-222, -88}}));
    connect(fixedbearing.Tf1, z_axis_screwsimple.Tf1)
      annotation (Line(points = {{-10, -139}, {20, -139}, {20, -63}, {-11, -63}}, color = {0, 0, 127}));
    connect(oppositefixedendbearing.Tf2, z_axis_screwsimple.Tf2)
      annotation (Line(points = {{107, -122}, {62, -122}, {62, -63}}, color = {0, 0, 127}));
    connect(coupling.flange_b, z_axis_screwsimple.flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{-137, -63}, {-137, -33}, {-74, -33}}));
    connect(z_axis_rollingguide.Fg, simpleheadstock.Fg)
      annotation (Line(points = {{246, -172}, {-422, -172}, {-422, 321}, {82, 321}}, color = {0, 0, 127}));
    connect(z_axis_rollingguide.v, simpleheadstock.vz)
      annotation (Line(points = {{361, -172}, {457, -172}, {457, 277}, {316, 277}}, color = {0, 0, 127}));
    connect(z_axis_screwsimple.phix, simpleheadstock.phz)
      annotation (Line(points = {{75, 66}, {75, 92}, {271, 92}, {271, 132}, {262, 132}}, color = {0, 0, 127}));
    connect(z_axis_screwsimple.Ts, simpleheadstock.Ts)
      annotation (Line(points = {{-72, 32}, {-72, 171}, {95, 171}}, color = {0, 0, 127}));
    connect(simpleheadstock.Fz, Fz)
      annotation (Line(points = {{133, 368}, {133, 440}, {140, 440}}, color = {0, 0, 127}));
    connect(simpleheadstock.Fy, Fy)
      annotation (Line(points = {{244, 368}, {244, 450}, {240, 450}}, color = {0, 0, 127}));
    connect(z_axis_rollingguide.Fy, Fy)
      annotation (Line(points = {{299, -208}, {636, -208}, {636, 430}, {240, 430}, {240, 450}}, color = {0, 0, 127}));
    connect(simpleheadstock.az, az)
      annotation (Line(points = {{316, 315}, {410, 315}, {410, 320}}, color = {0, 0, 127}));
    connect(simpleheadstock.vz, vz)
      annotation (Line(points = {{316, 277}, {316, 280}, {490, 280}}, color = {0, 0, 127}));
    connect(simpleheadstock.z, z)
      annotation (Line(points = {{316, 173}, {316, 176}, {416, 176}}, color = {0, 0, 127}));
  end Z_axis_Mechnical_model;
  model Z_axis_model
    annotation (Diagram(coordinateSystem(preserveAspectRatio = false, 
      extent = {{-100, -100}, {260, 120}})), 
      Icon(coordinateSystem(preserveAspectRatio = false, 
        extent = {{-180, -100}, {220, 120}}), 
        graphics = {
        Rectangle(extent = {{-90, 50}, {90, -50}}, radius = 5, color = {0, 0, 0}, pattern = LinePattern.Solid, thickness = 0.5), 
        Text(extent = {{-77.74, 73.04}, {-7.38, 56.73}}, textString = "Fz"), 
        Text(extent = {{26.26, 67.04}, {64, 52}}, textString = "Fy"), 
        Text(extent = {{88.3, 5.04}, {158.6, -11.27}}, textString = "vz"), 
        Text(extent = {{86.3, 45.04}, {156.6, 28.73}}, textString = "az"), 
        Text(extent = {{86.3, -28.96}, {156.6, -45.27}}, textString = "Z"), 
        Text(extent = {{-68, -36}, {74, -102}}, textString = "Z_axis_model"), 
        Text(extent = {{-155.4, 7.688}, {-94.34, -16.65}}, textString = "phi_ref")}));
    Drivers.Servo servo
      annotation (Placement(transformation(extent = {{-138.6, -58.56}, {-1.444, 78.56}})));
    PMSM pmsm
      annotation (Placement(transformation(extent = {{97.63, -32.37}, {182.4, 52.37}})));
    Z_axis_Mechnical_model z_axis_mechnical_model
      annotation (Placement(iconTransformation(extent = {{176, -87.69}, {560, 131.7}}), 
        transformation(extent = {{156, -87.69}, {540, 131.7}})));
   
    Modelica.Blocks.Interfaces.RealInput Fz "进给力" 
      annotation (Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = -90, origin = {320, 130}), 
        iconTransformation(origin = {-38, 36}, rotation = -90, extent = {{-12.36, -12.36}, {12.36, 12.36}})));
    Modelica.Blocks.Interfaces.RealInput Fy "法向切削载荷" 
      annotation (Placement(transformation(extent = {{-20, -20}, {20, 20}}, rotation = -90, origin = {400, 130}), 
        iconTransformation(origin = {42, 36}, rotation = -90, extent = {{-12.36, -12.36}, {12.36, 12.36}})));
    Modelica.Blocks.Interfaces.RealOutput az "主轴箱的加速度" 
      annotation (Placement(transformation(extent = {{503.8, 33.82}, {536.2, 66.18}}), 
        iconTransformation(extent = {{89.99, 20}, {110, 40}})));
    Modelica.Blocks.Interfaces.RealOutput vz "主轴箱的速度" 
      annotation (Placement(transformation(extent = {{503.8, -6.181}, {536.2, 26.18}}), 
        iconTransformation(extent = {{89.99, -10}, {110, 9.999}})));
    Modelica.Blocks.Interfaces.RealOutput z "主轴箱的位移" 
      annotation (Placement(transformation(extent = {{493.8, -36.18}, {526.2, -3.819}}), 
        iconTransformation(extent = {{91.99, -46}, {112, -26}})));
Modelica.Blocks.Sources.Sine sine   
      annotation (Placement(transformation(extent = {{-440, 30}, {-350, 110}})));
  equation 
    connect(pmsm.flange_a, z_axis_mechnical_model.flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{176, 5}, {176, -25}, {252, -25}}));
    connect(pmsm.positiveplug, servo.negativeplug)
      annotation (Line(points = {{110, 5}, {2, 5}, {2, 13}}));
    connect(servo.flange_a, pmsm.flange_a)
      annotation (Line(color = {0, 0, 0}, points = {{-101, 82}, {-101, 120}, {218, 120}, {218, 5}, {176, 5}}));
   
    connect(z_axis_mechnical_model.Fz, Fz)
      annotation (Line(points = {{283, 72}, {283, 130}, {320, 130}}, color = {0, 0, 127}));
    connect(z_axis_mechnical_model.Fy, Fy)
      annotation (Line(points = {{371, 76}, {371, 120}, {400, 120}, {400, 130}}, color = {0, 0, 127}));
    connect(z_axis_mechnical_model.az, az)
      annotation (Line(points = {{425, 44}, {445, 44}, {445, 50}, {520, 50}}, color = {0, 0, 127}));
    connect(z_axis_mechnical_model.vz, vz)
      annotation (Line(points = {{425, 6}, {520, 6}, {520, 10}}, color = {0, 0, 127}));
    connect(z_axis_mechnical_model.z, z)
      annotation (Line(points = {{425, -22}, {425, -20}, {510, -20}}, color = {0, 0, 127}));
connect(sine.y, servo.phi_ref) 
      annotation (Line(points = {{-346, 70}, {-116, 70}, {-116, 79}}, color = {0, 0, 127}));  
  end Z_axis_model;
end Z_axis;

