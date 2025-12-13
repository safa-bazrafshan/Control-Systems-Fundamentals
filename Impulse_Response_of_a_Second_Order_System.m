% Impulse Response of a Second-Order System
clc; clear; close all;

% System parameters (Underdamped example)
K = 1;          % System gain
wn = 3;         % Natural frequency (rad/s)
zeta = 0.3;     % Damping ratio (0 < zeta < 1) -> underdamped

% Transfer function: G(s) = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2)
s = tf('s');
G = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2);

% Display transfer function
disp('Second-Order System Transfer Function:');
disp(G);

% Impulse response
figure;
impulse(G)
grid on;
title('Impulse Response of a Second-Order System');
xlabel('Time (seconds)');
ylabel('Output');
