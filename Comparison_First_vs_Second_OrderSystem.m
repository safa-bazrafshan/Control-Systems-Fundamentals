% Step Response Comparison: First-Order vs Second-Order System
clc; clear; close all;

% First-Order System
tau = 1;                % Time constant
G1 = tf(1, [tau 1]);    % G1(s) = 1 / (tau*s + 1)

% Second-Order System
wn = 3;                 % Natural frequency (rad/s)
zeta = 0.4;             % Damping ratio (underdamped)
G2 = tf(wn^2, [1 2*zeta*wn wn^2]);

% Display transfer functions
disp('First-Order System Transfer Function:');
disp(G1);

disp('Second-Order System Transfer Function:');
disp(G2);

% Step responses
figure;
step(G1, G2)
grid on;
legend('First-Order System', 'Second-Order System');
title('Step Response Comparison: First vs Second Order');
xlabel('Time (seconds)');
ylabel('Output');
