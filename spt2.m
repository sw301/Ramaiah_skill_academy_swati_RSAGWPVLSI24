% Random Number Sequence Generation and Plotting

% Clear workspace and figures
clear; clc; close all;

% Parameters
n = 100; % Number of random numbers to generate

% Generate a sequence of random numbers
random_numbers = rand(1, n); % Generates 'n' random numbers between 0 and 1

% Create a sequence of indices for x-axis
x = 1:n;

% Plotting the random numbers
figure;
plot(x, random_numbers, 'b-', 'LineWidth', 2);
grid on;

% Labels and title
xlabel('Index');
ylabel('Random Number Value');
title('Sequence of Random Numbers');
axis tight;
