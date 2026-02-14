% Effect of Pole Location on System Response 
clc; clear; close all;

% Pole locations
p1 = -0.5;   % Slow pole
p2 = -1;     % Medium pole
p3 = -3;     % Fast pole

% Transfer functions with unity DC gain
G1 = tf(-p1, [1 -p1]);
G2 = tf(-p2, [1 -p2]);
G3 = tf(-p3, [1 -p3]);

% Display transfer functions
disp('System with pole at -0.5:');
disp(G1);

disp('System with pole at -1:');
disp(G2);

disp('System with pole at -3:');
disp(G3);

% Step responses
figure;
step(G1, G2, G3)
grid on;
legend('Pole = -0.5', 'Pole = -1', 'Pole = -3');
title('Effect of Pole Location on Step Response');
xlabel('Time (seconds)');
ylabel('Output');
