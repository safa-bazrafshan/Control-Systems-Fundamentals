% Critically Damped Second-Order System Response
clc; clear; close all;

% System parameters (Critically Damped)
K = 1;          % System gain
wn = 3;         % Natural frequency (rad/s)
zeta = 1;       % Critical damping ratio (zeta = 1)

% Transfer function: G(s) = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2)
s = tf('s');
G = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2);

% Display
disp('Critically Damped Second-Order Transfer Function:');
disp(G);

% Step response
figure;
step(G)
grid on;
title('Step Response of a Critically Damped Second-Order System');
xlabel('Time (seconds)');
ylabel('Output');
