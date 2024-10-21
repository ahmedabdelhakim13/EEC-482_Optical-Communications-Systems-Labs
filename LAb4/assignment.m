clc
%%first experiment
%setting the diameter of the optical fiber
a=25e-6;
inp1 = linspace(0, 150e-6, 6);
equ1=Lateral_Misalignment(a,inp1);
d1=[0 0.000025  0.000050 0.000075 0.0001];
Loss_in_db1=[0 0.095453 0.545375 0.8134461 1.186897];
draw2together(d1,Loss_in_db1,inp1,equ1,"d/a","measured lateral misplacement loss in dB","LateralMisalignment","the parctical in blue","The therotical in red")

%%
%%Second experiment
NA=0.2;
Ttheta=linspace(0,2,1000);
Sequ2=Angular_Misalignment (NA,Ttheta);
theta=[0 0.5 1 1.5 2];
Loss_in_db2=[0 0.065903 0.187109 0.269834 0.662932];
draw2together(theta,Loss_in_db2,Ttheta,Sequ2,"Theta","angular misalignment in dB","Angular Misalignment","the parctical in straight  blue","The therotical in dashed red")

%%
%%Third experiment
d2=[0 0.001 0.002 0.003 0.004];
d2_after=d2/a;
Loss_in_db2=[0 0.284885 0.621479 0.8167 1.038588];
x=linspace(0,0.005,20);
Tequ=End_Separation(x,NA);
figure;
plot(d2,Loss_in_db2,'b','LineWidth', 2);
hold on;
plot(x, Tequ, 'k', 'LineWidth', 2);
grid on
xlabel('measured distance  x/a','FontWeight', 'bold');
ylabel('end separation loss in dB','FontWeight', 'bold');
title('End Separation');

