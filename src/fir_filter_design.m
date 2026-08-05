function b = fir_filter_design()

pkg load signal;

N = 40;
Wn = 0.2;

b = fir1(N, Wn, "low");

% Compute frequency response
[H, W] = freqz(b, 1, 1024);

figure;
plot(W/pi, abs(H), "LineWidth", 2);

title("FIR Filter Magnitude Response");
xlabel("Normalized Frequency (\times\pi rad/sample)");
ylabel("Magnitude");
grid on;

drawnow;

save_plot("fir_response");

end
