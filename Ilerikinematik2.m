syms  theta1 theta2 theta3 theta4 theta5 theta6 
   
d1=.675;
        d4=.670;
        d6=.115;
         a1=.260;
         a2=.680;
          a3=0.035;
      

T0_1=[cos(theta1)  -sin(theta1) 0 a1 ; 0  0 1 d1 ;
      -sin(theta1) -cos(theta1) 0 0  ; 0 0 0 1]
   
T1_2=[cos(theta2)  -sin(theta2) 0 a2 ;
      sin(theta2)  cos(theta2)  0 0 ;
       0 0 1 0  ; 0 0 0 1];
   
T2_3=[cos(theta3)  -sin(theta3) 0 a3;   0 0 -1 0 ;
      sin(theta3)   cos(theta3) 0 0 ;   0 0 0 1]
   
T3_4=[cos(theta4)  -sin(theta4) 0 0;   0  0 1 d4 ;
      -sin(theta4)   -cos(theta4) 0 0;   0 0 0 1];
   
T4_5=[cos(theta5)  -sin(theta5) 0 0 ;
      sin(theta5)  cos(theta5)  0 0 ;
       0 0 1 0  ; 0 0 0 1];
   
T5_6=[cos(theta6)  -sin(theta6) 0 0 ;
      sin(theta6)   cos(theta6) 0 0 ;
       0 0 1 0  ; 0 0 0 1];  
TR_H=T0_1*T1_2*T2_3*T3_4*T4_5*T5_6