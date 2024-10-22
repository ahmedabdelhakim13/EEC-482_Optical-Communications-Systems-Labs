% Sample data
x = 5; % Example value for x
y = 10; % Example value for y

% Create a basic plot
figure;
plot(1:10, rand(1, 10), 'b-'); % Sample data
title('Sample Plot with Annotation');
xlabel('X-axis');
ylabel('Y-axis');

% Define the dimensions of the annotation box in normalized units
dim = [0.65 0.75 0.2 0.1]; % [x y width height]

% Create the string for the annotation
str = {sprintf('This plot shows\nX: %.2f\nY: %.2f', x, y)};

% Add the annotation textbox with specified colors


% Define coordinates for the dashed line
lineX = [0.65, 0.85]; % X-coordinates (normalized)
lineY = [0.75, 0.75]; % Y-coordinates (normalized)

% Add a dashed blue line below the annotation box
hold on; % Keep current plot
line(lineX, lineY, 'Color', 'blue', 'LineStyle', '--', 'LineWidth', 1.5);
hold off; % Release the plot