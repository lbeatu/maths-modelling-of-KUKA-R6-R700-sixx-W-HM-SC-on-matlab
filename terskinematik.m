%% Ters kinematik
syms theta1 theta2 theta3 theta4 theta5 theta6  ...
    r11 r12 r13 r21 r22 r23 r31 r32 r33;
px = 742.3;
py = 428.6;
pz = 774.4;
a1=1;
a2=1;
a3=1;
d1=1;
d4=1;
d6=1;
T1_6 = T1_2*T2_3*T3_4*T4_5*T5_6;
T1_6 = simplify(T1_6);
T2_6 = T2_3*T3_4*T4_5*T5_6;
T2_6 = simplify(T2_6);
T0_6s = [ r11 r12 r13 px;   r21 r22 r23 py; ...
          r31 r32 r33 pz;   0 0 0 1];
T_eqv1 = inv(T0_1)*T0_6s;
T_eqv2 = inv(T1_2)*T_eqv1;

alfa=pi;
beta=pi;
gama=pi;
RX_Z=[ cos(alfa)*cos(beta) cos(alfa)*sin(beta)*sin(gama)-sin(alfa)*cos(gama) cos(alfa)*sin(beta)*cos(gama)+sin(alfa)*sin(gama); ...
       sin(alfa)*cos(beta) sin(alfa)*sin(beta)*sin(gama)+cos(alfa)*cos(gama) sin(alfa)*sin(beta)*cos(gama)-cos(alfa)*sin(gama); ...
       -sin(beta) cos(beta)*sin(gama) cos(beta)*cos(gama)]
 
R0_6 =T4_5(1:3,1:3)*T5_6(1:3,1:3)
R0_4=T0_1(1:3,1:3)*T1_2(1:3,1:3)*T2_3(1:3,1:3)*T3_4(1:3,1:3)
R1_6 = simplify(R0_6)
R_eqv4=inv(R0_4)*RX_Z
R_eqv4=simplify(R_eqv4)

eqv1 = simplify(T1_6(1,4)-T_eqv1(1,4));
eqv2 = simplify(T1_6(2,4)-T_eqv1(2,4));
eqv3 = simplify(T1_6(3,4)-T_eqv1(3,4));
eqv4 = simplify(T2_6(1,4)-T_eqv2(1,4));
eqv5 = simplify(T2_6(2,4)-T_eqv2(2,4));
eqv6 = simplify(T2_6(3,4)-T_eqv2(3,4));
theta3=(solve(eqv3,theta3));
eqv11= subs(eqv1,{'theta3'},{theta3});
eqv22= subs(eqv2,{'theta3'},{theta3});
[theta1, theta2] = solve(eqv11, theta1, theta2);
theta1=double(abs(theta1));
theta2=double(abs(theta2));
theta3=double(abs(theta3));

%beta=atan()

 R_eqv1 = simplify(R1_6(1,3)-R_eqv4(1,3))
 R_eqv2 = simplify(R1_6(1,2)-R_eqv4(1,2))
 R_eqv3 = simplify(R1_6(2,1)-R_eqv4(2,1))
% 
 theta4=angle(abs(solve(R_eqv1,theta4)))
% 
  R_eqv22= subs(R_eqv2,{'theta4'},{theta4})
 
% %
 [theta5, theta6] = solve(R_eqv22, theta5, theta6)
% theta4=(abs(theta4)*180/pi)
% theta5=(abs(theta5)*180/pi)
% theta6=(abs(theta6)*180/pi)
thetas=[theta1 theta2 theta3 theta4 theta5 theta6]