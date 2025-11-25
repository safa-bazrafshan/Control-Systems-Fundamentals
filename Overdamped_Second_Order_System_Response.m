% Overdamped Second-Order System Response
clc; clear; close all;

% System parameters (Overdamped)
K = 1;          % System gain
wn = 3;         % Natural frequency (rad/s)
zeta = 1.5;     % Damping ratio (overdamped: zeta > 1)

% Transfer function: G(s) = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2)
s = tf('s');
G = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2);

% Display
disp('Overdamped Second-Order Transfer Function:');
disp(G);

% Step response
figure;
step(G)
grid on;
title('Step Response of an Overdamped Second-Order System');
xlabel('Time (seconds)');
ylabel('Output');
