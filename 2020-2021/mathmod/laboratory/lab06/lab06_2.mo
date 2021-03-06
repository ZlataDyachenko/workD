model lab06 "The epidemic model"
parameter Real alpha=0.01 "Morbidity rate";
parameter Real betha=0.02 "Recovery rate";
parameter Real R0=37 "Number of healthy people with immunity at the beginning of epidemic";
parameter Real I0=97"Number of ill people at the beginning of epidemic";
parameter Real N=11456 "Number of people";
Real R(start=R0) "Number of healthy people with immunity";
Real I(start=I0) "Number of ill people";
Real S(start=N-I0-R0) "Number of healthy peoply without immunity"; 
equation
der(S)=-alpha*S;
der(I)=alpha*S-betha*I;
der(R)=betha*I;

end lab06;
