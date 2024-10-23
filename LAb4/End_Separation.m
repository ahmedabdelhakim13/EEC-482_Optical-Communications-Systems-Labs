function [Lsep] = End_Separation(x,NA)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Tpart1=x*NA;
Tpart2=25e-6;
Tpart3=log(1+(Tpart1/Tpart2));
Lsep=-10*power(Tpart3,-2);
end

