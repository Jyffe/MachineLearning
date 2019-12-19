clear;

% Use the dlmread instead of load to skip the first row with headers
file = dlmread("pizza.txt", "", 1, 0); % Filename, delimiter, start row, start column

X = file(:,1:size(file)(2)-1); % Separate training data to matrix X (last column has the labels) 
y = file(:,2); % Separate labels to vector y

m = length(X); % Number of training examples

plot(X, y, "bx")
hold on
plot(X, predict(X, 1.2, 12), "r");

params = gradientDescentTrain(X, y, 10000, 0.001);
plot(X, predict(X, params(1), params(2), "g"));
plot(params(3))

set(gca, "fontsize", 12)
xlabel("Reservations")
ylabel("Pizzas")
axis([0, 30, 0, 50])
legend("Learning data", "Guess", "Optimized")
title(sprintf("Loss = %f", params(3)))

reservations = 42;
predict(reservations, params(1), params(2))
