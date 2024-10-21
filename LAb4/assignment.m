clc
%%first experiment
%setting the input to the equation
a=25e-6;
inp1 = linspace(0, 0.0001, 100);
part1 = inp1 / 2 * a; % Check dimensions here
part2 = acos(part1);
part3 = (inp1/2*a).*sqrt(1 - power(part1, 2));
equ1 = -10 * log((2/pi) * part2 - part3 );

d1=[0 0.000025  0.000050 0.000075 0.0001];
d_after=d1/a;
Loss_in_db1=[0 0.095453 0.545375 0.8134461 1.186897];
figure;



plot(d1,Loss_in_db1,'g','LineWidth', 1);
hold on;
plot(inp1, equ1, 'b', 'LineWidth', 5);
grid on
xlabel('measured distance d/a','FontWeight', 'bold');
ylabel(' measured lateral misplacement loss in dB','FontWeight', 'bold');
title('Lateral Misalignment');
%%Second experiment
NA=0.2;
Ttheta=linspace(0,5,10);
Spart1=2*1*sin(Ttheta);
Spart2=pi*NA;
Sequ=10*log(1-(Spart1/Spart2));
theta=[0 0.5 1 1.5 2];
Loss_in_db2=[0 0.065903 0.187109 0.269834 0.662932];
figure;
plot(theta,'r','LineWidth', 2);
hold on;
plot(Ttheta, Sequ, 'b', 'LineWidth', 2);
grid on
xlabel('measured Theta','FontWeight', 'bold');
ylabel('angular misalignment in dB','FontWeight', 'bold');
title('Angular Misalignment');

%%Third experiment
d2=[0 0.001 0.002 0.003 0.004];
d2_after=d2/a;
Loss_in_db2=[0 0.284885 0.621479 0.8167 1.038588];
figure;
plot(d2_after,Loss_in_db2,'b','LineWidth', 2);
axis([0 165 0 1.5])
grid on
xlabel('measured distance  x/a','FontWeight', 'bold');
ylabel('end separation loss in dB','FontWeight', 'bold');
title('End Separation');
