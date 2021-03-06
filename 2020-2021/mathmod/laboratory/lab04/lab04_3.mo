model lab04_3
Real x,y;
 
initial equation
 x=-1;
 y=-0.1; 
equation
  der(x)=y;
  der(y)=-12*y-8*x+4*Modelica.Math.cos(2*time);

end lab04_3;
