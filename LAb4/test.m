
% Add an annotation box
dim = [0.15 0.6 0.3 0.2]; % [x y width height] in normalized units
str = {'This plot shows', 'the sine and cosine', 'functions over the interval', '[0, 10].'};
annotation('textbox', dim, 'String', str, 'FitBoxToText', 'on', ...
           'BackgroundColor', 'white', 'EdgeColor', 'black');