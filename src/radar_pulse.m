function [pulse, t, Fs] = radar_pulse()

Fs = 100000;
T = 0.01;

t = 0:1/Fs:T;

pulse = square(2*pi*1000*t);

figure;
plot(t, pulse);
title("Transmitted Radar Pulse");
grid on;

save_plot("radar_pulse");

end
