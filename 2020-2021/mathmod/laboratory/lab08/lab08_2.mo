model lab08_2
parameter Real p_cr=28 "критическая стоимость продукта";
parameter Real N=30 "число потребителей производимого продукта";
parameter Real q=1 "максимальная потребность одного человека в продукте в единицу времени";
parameter Real t1=10 "длительность производственного цикла";
parameter Real t2=12 "длительность производственного цикла";
parameter Real p1=10 "себестоимость продукта 1";
parameter Real p2=8.2 "себестоимость продукта 2";
parameter Real a1=p_cr/(t1*t1*p1*p1*N*q);
parameter Real a2=p_cr/(t2*t2*p2*p2*N*q);
parameter Real b=p_cr/(t1*t1*p1*p1*t2*t2*p2*p2*N*q);
parameter Real c2=(p_cr-p2)/(t2*p2);
parameter Real c1=(p_cr-p1)/(t1*p1);
Real M1(start=5.5) "оборотные средства предприятия 1";
Real M2(start=3.5) "оборотные средства предприятия 2";
Real tetha1, tetha2 "безразмерное время";
equation
der(M1)=c1*M1-(b+0.00061*c1)*M1*M2-a1*M1*M1;
der(M2)=c2*M2-b*M1*M2-a2*M2*M2;
der(tetha1)=1/c1;
der(tetha2)=1/c1;
end lab08_2;
