function G = gradient(X, Y, w, b)
	w_gradient = mean(2 * X .* (predict(X, w, b) - Y));
	b_gradient = mean(2 * (predict(X, w, b) - Y));

	G = [w_gradient, b_gradient];
