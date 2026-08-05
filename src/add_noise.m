function received = add_noise(echo)

% Noise power
noisePower = 0.2;

% Generate Gaussian noise
noise = sqrt(noisePower) * randn(size(echo));

% Add noise
received = echo + noise;

% Plot
figure;
plot(received, "b");
title("Received Radar Signal with Gaussian Noise");
xlabel("Sample Number");
ylabel("Amplitude");
grid on;

% Render figure
drawnow;

% Save image
save_plot("noisy_signal");

end
