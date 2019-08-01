%plots of discrete and continuous versions of impulse, unitstep, ramp, exponential, sine & cosine functions
x = -2:0.001:2; %for better plot resolution
y_data = [x==0; x>=0; x.*(x>=0); exp(x); sin(x); cos(x)];
titles = ["impulse", "unitstep", "ramp", "e^x", "sin(x)", "cos(x)"]
for i = 1:length(titles)
    y = y_data(i, :)
    subplot(6, 2, (i*2 -1))
    plot(x, y)
    xlabel("t"); ylabel("amplitude")
    title(titles(i) + " - continuous")
    subplot(6, 2, i*2)
    stem(x(1:100:end), y(1:100:end)) %reduce resolution for discrete function plot
    xlabel("n"); ylabel("amplitude")
    title(titles(i) + " - discrete")
end
