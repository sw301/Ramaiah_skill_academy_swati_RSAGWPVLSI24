% Projectile Motion Simulation

% Clear workspace and figures
clear; clc; close all;

% Constants
g = 9.81; % Gravitational acceleration (m/s^2)

% Inputs
initial_velocity = 50; % Initial velocity (m/s)
launch_angle = 45; % Launch angle (degrees)

% Convert angle to radians
theta = deg2rad(launch_angle);

% Calculate time of flight
t_flight = (2 * initial_velocity * sin(theta)) / g;

% Time vector
t = linspace(0, t_flight, 100);

% Calculate projectile motion equations
x = initial_velocity * cos(theta) * t; % Horizontal position
y = initial_velocity * sin(theta) * t - 0.5 * g * t.^2; % Vertical position

% Calculate range and maximum height
range = initial_velocity^2 * sin(2*theta) / g; % Range
max_height = (initial_velocity^2 * sin(theta)^2) / (2 * g); % Maximum height

% Plotting the trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 2);
hold on;

% Mark the range and maximum height
plot(range, 0, 'ro', 'MarkerSize', 10, 'DisplayName', 'Range');
plot(range / 2, max_height, 'go', 'MarkerSize', 10, 'DisplayName', 'Max Height');

% Annotations
text(range, 1, 'Range', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'Color', 'r');
text(range / 2, max_height + 1, 'Max Height', 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center', 'Color', 'g');

% Labels and title
xlabel('Distance (m)');
ylabel('Height (m)');
title('Projectile Motion Trajectory');
grid on;
axis equal;
legend show;

% Display results
disp(['Range: ', num2str(range), ' m']);
disp(['Maximum Height: ', num2str(max_height), ' m']);
s