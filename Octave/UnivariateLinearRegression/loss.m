function l = loss(X, y, w, b)
	predictions = predict(X, w, b);
	l = mean((predictions - y).^2) / 2;
