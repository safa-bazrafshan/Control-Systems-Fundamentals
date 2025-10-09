% Step Response from Transfer Function
clc; clear; close all;

% Define system parameters
K = 2;        % System gain
tau = 3;      % Time constant (seconds)

% Define transfer function G(s) = K / (tau*s + 1)
s = tf('s');   % Create Laplace variable
G = K / (tau*s + 1);

% Display transfer function
disp('Transfer Function:');
disp(G);

% Plot step response
figure;
step(G);
grid on;
title('Step Response from Transfer Function');
xlabel('Time (seconds)');
ylabel('Output Response');