model lab03_1
 Real x,y;
 
initial equation
 x=-1;
 y=-0.1; 
equation
  der(x)=y;
  der(y)=-1.1*x;
end lab03_1;
