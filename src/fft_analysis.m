function fft_analysis(received, filtered, Fs)

% Number of samples
N = length(received);

% Frequency axis
f = (0:N-1) * (Fs/N);

% FFT
R = abs(fft(received));
F = abs(fft(filtered));

% Plot
figure;

subplot(2,1,1);
plot(f, R, "b");
title("FFT Before Filtering");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

subplot(2,1,2);
plot(f, F, "r");
title("FFT After Filtering");
xlabel("Frequency (Hz)");
ylabel("Magnitude");
grid on;

drawnow;

save_plot("fft_analysis");

end
