t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t, y1) % Plot x=t, y=y1

y2 = cos(2*pi*4*t);
plot(t, y2) % Plot x=t, y=y2, replaces the previous plot

hold on; % Males Octave to preserve previous plot and plot on top of that
plot(t, y1, "r") % r = red
xlabel("time")
ylabel("values")
legend("sin", "cos")
title("my plot")

print -dpng "myplot.png" % Saves the plot as PNG formatted image

disp("Press enter to continue")
pause
close % Closes the plot

figure(1); plot(t, y1); % Plots two separate plots in separate windows
figure(2); plot(t, y2);

disp("Press enter to continue")
pause
close(1)
close(2)

subplot(1,2,1) % Divides the plot to 1x2 grid, starts from the first element
plot(t, y1);
subplot(1,2,2);
plot(t, y2);
axis([0.5 1 -1 1]) % Change axis scale

disp("Press enter to continue")
pause
clf; % Clears the plot area

A = magic(5);
imagesc(A); % Prints a colour grid where each value is represented by a different colour
disp("Press enter to continue")
pause

imagesc(A), colorbar, colormap gray; % Comma chaining of function calls

a = 1, b = 2, c = 3
a = 1; b = 2; c = 3;
