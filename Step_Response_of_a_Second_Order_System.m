% Step Response of a Second-Order System
clc; clear; close all;

% System parameters
K = 1;          % System gain
wn = 2;         % Natural frequency (rad/s)
zeta = 0.5;     % Damping ratio (0 < zeta < 1 for underdamped)

% Define transfer function: G(s) = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2)
s = tf('s');
G = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2);

% Display transfer function
disp('Second-Order Transfer Function:');
disp(G);

% Step response
figure;
step(G);
grid on;
title('Step Response of a Second-Order System');
xlabel('Time (seconds)');
ylabel('Output Response');
