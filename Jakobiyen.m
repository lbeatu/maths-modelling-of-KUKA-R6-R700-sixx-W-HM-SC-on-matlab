%%Jakobiyen Matrisi
     TR_H(1:3,4)
     T06_ja=jacobian(TR_H(1:3,4),[theta1; theta2; theta3; theta4; theta5; theta6])
     A=[0;0;1] 
    J0_1= T0_1(1:3,1:3)*A
    J1_2= T1_2(1:3,1:3)*A
    J2_3= T2_3(1:3,1:3)*A
    J3_4= T3_4(1:3,1:3)*A
    J4_5= T4_5(1:3,1:3)*A
    J5_6= T5_6(1:3,1:3)*A
     J0_6=[J0_1 J1_2 J2_3 J3_4 J4_5 J5_6]
     J=[T06_ja;J0_6]