function snr_analysis(echo, received, filtered)

% Signal power
signalPower = mean(echo.^2);

% Noise power before filtering
noiseBefore = received - echo;
noisePowerBefore = mean(noiseBefore.^2);

% Noise power after filtering
noiseAfter = filtered - echo;
noisePowerAfter = mean(noiseAfter.^2);

% SNR
snrBefore = 10 * log10(signalPower / noisePowerBefore);
snrAfter = 10 * log10(signalPower / noisePowerAfter);

% Print results
fprintf("\n========== SNR REPORT ==========\n");
fprintf("SNR Before Filtering : %.2f dB\n", snrBefore);
fprintf("SNR After Filtering  : %.2f dB\n", snrAfter);
fprintf("Improvement          : %.2f dB\n", snrAfter - snrBefore);

% Plot
figure;
bar([snrBefore snrAfter]);

set(gca, "XTickLabel", {"Before", "After"});
ylabel("SNR (dB)");
title("SNR Comparison");
grid on;

drawnow;

save_plot("snr_comparison");

end
