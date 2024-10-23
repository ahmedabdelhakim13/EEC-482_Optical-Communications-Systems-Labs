function [Lang)] = Angular_Misalignment (NA,Ttheta)
%ANGULAR_MISALIGNMENT  Summary of this function goes here
%   Detailed explanation goes here
part1=2*1*sin(Ttheta);
part2=pi*NA;
Lang)=-10*log(1-(part1/part2));

end
