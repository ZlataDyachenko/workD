model lab2
 type Distance=Real(unit="cm");
 type Angle=Real(unit="rad",max=2*pi);
 final constant Real pi=2*Modelica.Math.asin(1.0);
 parameter Distance k=20.5*1000*100 "Distance between boat and speedboat";

 Real x,y, x1, y1; 
 
 Angle tetha;
 Angle tetha1;
 Distance rr "Radius in the second case";
 Distance r "Radius in the first case";
 Real l1, l2, l3, l4;

  
  function PolarToRectangular
  input Real radius;
  input Real angle;
  output Real x;
  output Real y;
  algorithm
  x:=radius*cos(angle);
  y:=radius*sin(angle);
end PolarToRectangular;  

initial equation
//tetha=tetha0;
//tetha1=-pi;
r=k/6.5 "Specify initial value for r";
rr=k/4.5 "Specify initial value for rr";

equation
  der(r)/der(tetha)=r/sqrt(29.25) "Main equation in first case";
  tetha=0+time;
  //r=exp(tetha/sqrt(29.25));
  der(rr)/der(tetha1)=r/sqrt(29.25) "Main equation in second case";
  (x,y)=PolarToRectangular(r, tetha) "Coordinates for trajectory of speedboat in first case";
  tetha1=-pi+time;
  (x1,y1)=PolarToRectangular(rr, tetha1) "Coordinates for trajectory of speedboat in second case";
   (l1,l2)=PolarToRectangular(x,0) "Coordinates for trajectory of boat in first case";
   (l3,l4)=PolarToRectangular(x,3*pi/4) "Coordinates for trajectory of boat in second case";
end lab2;

  
