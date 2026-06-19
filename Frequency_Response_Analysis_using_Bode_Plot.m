clc;
clear;
close all;

%% Frequency Response Analysis using Bode Plot

% Transfer Function
num = [100];
den = [1 10 100];

G = tf(num,den);

disp('Transfer Function:')
G

%% Step Response

figure;

step(G);

grid on;

title('Step Response');

xlabel('Time (seconds)');
ylabel('Amplitude');

%% Bode Plot

figure;

bode(G);

grid on;

title('Bode Plot');

%% Magnitude and Phase Responses

w = logspace(-1,3,500);

[mag,phase] = bode(G,w);

mag = squeeze(mag);
phase = squeeze(phase);

figure;

subplot(2,1,1)

semilogx(w,20*log10(mag),'LineWidth',2)

grid on

title('Magnitude Response')

ylabel('Magnitude (dB)')

subplot(2,1,2)

semilogx(w,phase,'LineWidth',2)

grid on

title('Phase Response')

xlabel('Frequency (rad/s)')

ylabel('Phase (deg)')