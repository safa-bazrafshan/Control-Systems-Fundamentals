% Underdamped Second-Order System Step Response
clc; clear; close all;

% System parameters (Underdamped)
K = 1;          % System gain
wn = 3;         % Natural frequency (rad/s)
zeta = 0.2;     % Damping ratio (underdamped: 0 < zeta < 1)

% Transfer function: G(s) = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2)
s = tf('s');
G = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2);

% Display
disp('Underdamped Second-Order Transfer Function:');
disp(G);

% Step response
figure;
step(G)
grid on;
title('Step Response of an Underdamped Second-Order System');
xlabel('Time (seconds)');
ylabel('Output');
