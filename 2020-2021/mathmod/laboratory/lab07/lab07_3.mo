model lab07_3
parameter Real a1=0.85 "*sin(t) is intensity of the advertising campaign";
parameter Real a2=0.83 "*cos(t) is intensity of information dissemination by clients";
parameter Real N=1024 "number of potential clients";
parameter Real n0=7 "number of clients now";
Real n(start=n0);
equation
der(n)=(a1*Modelica.Math.sin(time)+a2*Modelica.Math.cos(time)*n)*(N-n);
end lab07_3;
