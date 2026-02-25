% Effect of Zeros on Step Response 
clc; clear; close all;

% Base denominator (same poles for all systems)
den = [1 2 1];

% System without zero
G_no_zero = tf(1, den);

% System with zero at -2 (normalized)
G_zero_2 = tf([1 2], den) * (1/2);

% System with zero at -5 (normalized)
G_zero_5 = tf([1 5], den) * (1/5);

% Display transfer functions
disp('System without zero:'); disp(G_no_zero);
disp('System with zero at -2:'); disp(G_zero_2);
disp('System with zero at -5:'); disp(G_zero_5);

% Step responses
figure;
step(G_no_zero, G_zero_2, G_zero_5)
grid on;
legend('No Zero', 'Zero = -2', 'Zero = -5');
title('Effect of Zeros on Step Response');
xlabel('Time (seconds)');
ylabel('Output');