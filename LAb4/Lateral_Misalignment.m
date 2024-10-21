function [equ1] = Lateral_Misalignment(a,inp1)
%F Summary of this function goes here
%   Detailed explanation goes here
part1 = inp1 / 2 * a; % Check dimensions here
part2 = acos(part1);
part3 = (inp1/2*a).*sqrt(1 - power(part1, 2));
equ1 = -10 * log((2/pi) * part2 - part3 );
%%outputArg1 = inputArg1;
%%outputArg2 = inputArg2;
end

