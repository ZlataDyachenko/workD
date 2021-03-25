model lab07_2
parameter Real a1=0.000085 "intensity of the advertising campaign";
parameter Real a2=0.23 "intensity of information dissemination by clients";
parameter Real N=1024 "number of potential clients";
parameter Real n0=7 "number of clients now";
Real n(start=n0);
equation
der(n)=(a1+a2*n)*(N-n);
end lab07_2;
