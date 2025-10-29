% Impulse Response of a First-Order System (Analytical Comparison)
clc; clear; close all;

% Define system parameters
K = 1;        % System gain
tau = 2;      % Time constant (seconds)

% Define transfer function G(s) = K / (tau*s + 1)
s = tf('s');
G = K / (tau*s + 1);

% Display transfer function
disp('Transfer Function:');
disp(G);

% Time vector for simulation
t = linspace(0, 12, 1000);

% Compute impulse response (numerical)
[y_num, t_num] = impulse(G, t);

% Analytical impulse response: h(t) = (K/tau)*exp(-t/tau)
y_anal = (K/tau) * exp(-t/tau);

% Plot both numerical and analytical responses
figure; hold on;
plot(t_num, y_num, 'LineWidth', 2);
plot(t, y_anal, '--', 'LineWidth', 1.5);
grid on;
title('Impulse Response of G(s) = 1/(2s + 1)');
xlabel('Time (seconds)');
ylabel('h(t)');
legend('impulse(G) numeric','analytical (0.5 e^{-t/2})','Location','northeast');

% Annotate the peak value
[peakVal, idx] = max(y_num);
text(t_num(idx), peakVal, sprintf('  peak = %.2f', peakVal));

xlim([0 12]);
ylim([0 0.55]);