function processing_pipeline(t, pulse, echo, received, filtered)

% Create figure
figure('Name', 'Radar Signal Processing Pipeline', ...
       'Position', [100, 100, 1000, 700]);

% ==============================
% 1. Radar Pulse
% ==============================
subplot(2,2,1);
plot(t, pulse, 'b', 'LineWidth', 1.5);
title('1. Transmitted Radar Pulse');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ==============================
% 2. Target Echo
% ==============================
subplot(2,2,2);
plot(t, echo, 'g', 'LineWidth', 1.5);
title('2. Target Echo');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ==============================
% 3. Noisy Signal
% ==============================
subplot(2,2,3);
plot(t, received, 'r');
title('3. Noisy Received Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% ==============================
% 4. Filtered Signal
% ==============================
subplot(2,2,4);
plot(t, filtered, 'k', 'LineWidth', 1.5);
title('4. FIR Filter Output');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

drawnow;

% Save image
save_plot("processing_pipeline");

fprintf("Image saved: ../images/processing_pipeline.png\n");

end
