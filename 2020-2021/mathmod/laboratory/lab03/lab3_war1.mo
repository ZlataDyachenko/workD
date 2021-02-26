model lab3_war
   parameter Real a=0.35 "Степень влияния различных факторов на потери x";
   parameter Real b=0.79 "Эфеективность боевых действий со строны x";
   parameter Real c=0.49 "Эффективность боевых действий со стороны y";
   parameter Real h=0.14 "Степень влияния различных факторов на потери y";
   parameter Real x0=66000 "Изначальная численность армии x";
   parameter Real y0=77000 "Изначальная численность армии y";
   Real x(start=x0)"Численность армии x";
   Real y(start=y0)"Численность армии y";

equation
  der(x)=-a*x-b*y+Modelica.Math.sin(time+1)+2 "Численность армии x с учетом только регулярных войск";
  der(y)=-c*x-h*y+Modelica.Math.cos(time+2)+1 "Численность армии y с учетом только регулярных войск";

end lab3_war;
