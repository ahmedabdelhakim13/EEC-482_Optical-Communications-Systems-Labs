function figHandle = draw2together(first,second,third,fourth,xtitle,ytitle,name,x,y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
figHandle=figure;
plot(first,second,'b','LineWidth', 3);
hold on;
plot(third, fourth, 'r--', 'LineWidth', 2);
grid on
xlabel(xtitle);
ylabel(ytitle);
title(name);

dim = [0.65 0.75 0.1 0.01]; % [x y width height] in normalized units
str = {'This plot shows', x, y};
annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on', ...
           'BackgroundColor', [0.678 0.847 0.902],...
           'EdgeColor', 'none', ... % No edge color
           'Color', 'white', ... % White text color
           'FontSize', 12);
       
% Draw a square at a specific position
% Specify position: [x, y, width, height]

end
%%annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on', ...
  %%         'BackgroundColor', [0.678 0.847 0.902], ... % Light blue background
    %%       'EdgeColor', 'none', ... % No edge color
      %%     'Color', 'white', ... % White text color
        %%   'FontSize', 12);
