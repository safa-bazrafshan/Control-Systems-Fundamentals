clc
clear
close all

s = tf('s');

%% Base System
G1 = 1/(s+1)^2;

%% Zero at -0.5 (normalized)
G2 = (s+0.5)/(s+1)^2 * (1/0.5);

%% Zero at -5 (normalized)
G3 = (s+5)/(s+1)^2 * (1/5);

%% Pole-Zero Cancellation (already unity gain)
G4 = (s+1)/(s+1)^2;

figure
step(G1, G2, G3, G4)
grid on
legend('No Zero','Zero at -0.5','Zero at -5','Pole-Zero Cancellation')
title('Pole-Zero Interaction on Time Response (Normalized)')