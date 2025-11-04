% Effect of Time Constant on First-Order System
clc; clear; close all;

% System gain (same for all systems)
K = 1;

% Define different time constants
tau_values = [1, 2, 5];

% Define time vector for simulation
t = linspace(0, 20, 1000);

figure; hold on;
for i = 1:length(tau_values)
    tau = tau_values(i);
    s = tf('s');
    G = K / (tau*s + 1);
    [y, t_out] = step(G, t);
    plot(t_out, y, 'LineWidth', 2, 'DisplayName', sprintf('\\tau = %d', tau));
end

% Add labels and legend
grid on;
title('Effect of Time Constant on First-Order Step Response');
xlabel('Time (seconds)');
ylabel('Output y(t)');
legend('Location','southeast');

% Annotate and finalize
text(10, 0.9, 'Larger \\tau = Slower Response', 'FontSize', 10);
text(2, 0.4, 'Smaller \\tau = Faster Response', 'FontSize', 10);
