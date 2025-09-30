% Step Response of a First-Order System with Multiple Time Constants
clc; clear; close all;

% Define system gain
K = 1;

% Define different time constants to compare
taus = [0.5, 1, 2, 5]; % in seconds

% Create Laplace variable 's'
s = tf('s');

% Plot step responses for all time constants
figure; hold on;
for tau = taus
    G = K / (tau*s + 1);   % First-order transfer function
    step(G);               % Plot step response
end

% Add grid, title, labels, and legend
grid on;
title('Step Response of First-Order System for Different Time Constants');
xlabel('Time (seconds)');
ylabel('Output Response');
legend('tau = 0.5','tau = 1','tau = 2','tau = 5');
