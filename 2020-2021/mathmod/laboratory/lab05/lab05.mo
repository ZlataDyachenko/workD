model lab05 "Predator-prey equations"
parameter Real a=-0.54 "Reproduction rate of prey";
parameter Real b=-0.031 "Coefficient of change in the prey population";
parameter Real c=-0.62 "Mortality rate of predator";
parameter Real d=-0.07 "Coefficient of change in the predator population";
parameter Real x0=10 "Start value of prey population";
parameter Real y0=30 "Start value of predator population";
Real x(start=x0) "Prey population";
Real y(start=y0) "Predator population";
Real x1;
Real y1;
equation
 der(x)=a*x-b*x*y;
 der(y)=-c*y+d*x*y;
 x1=c/d;
 y1=a/b;
end lab05;
