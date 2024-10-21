function figHandle = draw2together(first,second,third,fourth,xtitle,ytitle,name,x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
figHandle=figure;
plot(first,second,'b','LineWidth', 2);
hold on;
plot(third, fourth, 'r--', 'LineWidth', 2);
grid on
xlabel(xtitle);
ylabel(ytitle);
title(name);

dim = [0.4 0.8 0.4 0.1]; % [x y width height] in normalized units
str = {'This plot shows', x, y};
annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on', ...
           'BackgroundColor', 'white', 'EdgeColor', 'black');
% Draw a square at a specific position
% Specify position: [x, y, width, height]

end


