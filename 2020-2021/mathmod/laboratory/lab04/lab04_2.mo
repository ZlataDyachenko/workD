model lab04_2
 Real x,y;
 
initial equation
 x=-1;
 y=-0.1; 
equation
  der(x)=y;
  der(y)=-11*y-7*x;

end lab04_2;
