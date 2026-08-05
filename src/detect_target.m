function [firstEcho, range] = detect_target(filtered, Fs)

% Detection threshold
threshold = 0.4;

% Find samples above threshold
location = find(filtered > threshold);

% Check if target was detected
if isempty(location)
    fprintf("No target detected!\n");
    firstEcho = NaN;
    range = NaN;
    return;
end

% First detected echo
firstEcho = location(1);

% Calculate time delay
delay = firstEcho / Fs;

% Speed of light
c = 3e8;

% Calculate target range
range = delay * c / 2;

% Display results
fprintf("Target detected at sample: %d\n", firstEcho);
fprintf("Estimated Target Range: %.2f meters\n", range);

% Plot filtered signal
figure;

plot(filtered);
hold on;

% Mark detected target
plot(firstEcho, filtered(firstEcho), ...
     "ro", "MarkerSize", 10, "LineWidth", 2);

% Draw threshold line
plot([1 length(filtered)], ...
     [threshold threshold], ...
     "--");

title("Radar Target Detection");
xlabel("Sample Number");
ylabel("Amplitude");

legend("Filtered Signal", ...
       "Detected Target", ...
       "Detection Threshold");

grid on;
hold off;

% Make sure figure is rendered
drawnow;

% Save image
save_plot("target_detection");

end
