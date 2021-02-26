model lab3_war2
parameter Real a=0.258 "Степень влияния различных факторов на потери x";
   parameter Real b=0.67 "Эфеективность боевых действий со строны x";
   parameter Real c=0.46 "Эффективность боевых действий со стороны y";
   parameter Real h=0.31 "Степень влияния различных факторов на потери y";
   parameter Real x0=66000 "Численность армии x";
   parameter Real y0=77000 "Численность армии y";
   Real x(start=x0);
   Real y(start=y0);
    
equation
  der(x)=-a*x-b*y+Modelica.Math.sin(2*time)"Численность армии x с участием регулярных войск";
  der(y)=-c*x*y-h*y+Modelica.Math.cos(time)+1 "Численность армии y с участием партизанских отрядов";
  

end lab3_war2;
