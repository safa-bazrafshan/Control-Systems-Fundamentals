% Effect of Damping Ratio on Step Response
clc; clear; close all;

K = 1;
wn = 3;                 % Natural frequency (constant)
zetas = [0 0.2 0.5 1];  % Different damping ratios

s = tf('s');
t = 0:0.01:10;          % Time vector

figure;
hold on;

for zeta = zetas
    G = K*wn^2 / (s^2 + 2*zeta*wn*s + wn^2);
    [y, t_out] = step(G, t);
    plot(t_out, y, 'LineWidth', 2);
end

grid on;
title('Effect of Damping Ratio on Step Response (\omega_n = constant)');
xlabel('Time (seconds)');
ylabel('Output');

legend('ζ = 0 (Undamped)', ...
       'ζ = 0.2 (Underdamped)', ...
       'ζ = 0.5 (More Damped)', ...
       'ζ = 1 (Critical Damping)', ...
       'Location', 'Best');
