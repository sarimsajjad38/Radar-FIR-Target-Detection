clear;
clc;
close all;

pkg load signal;

% Generate radar pulse
[pulse, t, Fs] = radar_pulse();

% Simulate target echo
echo = target_echo(pulse, Fs);

% Add Gaussian noise
received = add_noise(echo);

% Design FIR filter
b = fir_filter_design();

% Filter signal
filtered = filter(b, 1, received);

% Processing pipeline (4-subplot figure)
processing_pipeline(t, pulse, echo, received, filtered);

% Separate filtered signal figure
figure;

subplot(2,1,1);
plot(received);
title("Received Noisy Signal");
xlabel("Sample Number");
ylabel("Amplitude");
grid on;

subplot(2,1,2);
plot(filtered);
title("Filtered Signal");
xlabel("Sample Number");
ylabel("Amplitude");
grid on;

drawnow;
save_plot("filtered_signal");

% Detect target
[firstEcho, range] = detect_target(filtered, Fs);

% FFT Analysis
fft_analysis(received, filtered, Fs);

% SNR Analysis
snr_analysis(echo, received, filtered);

fprintf("\n====================================\n");
fprintf("RADAR SIMULATION COMPLETED\n");
fprintf("====================================\n");
fprintf("Target detected at sample : %d\n", firstEcho);
fprintf("Estimated Target Range    : %.2f meters\n", range);
fprintf("====================================\n");
