function echo = target_echo(pulse, Fs)

distance = 300;

c = 3e8;

delay = round((2*distance/c)*Fs);

echo = zeros(size(pulse));

echo(delay+1:end) = 0.8*pulse(1:end-delay);

figure;
plot(echo);
title("Received Echo");
grid on;
drawnow;

save_plot("target_echo");

end
