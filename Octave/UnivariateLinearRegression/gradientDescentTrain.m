function P = gradientDescentTrain(X, Y, iterations, lr)
	w = b = 0;
	
	for i = 1:iterations,
		current_loss = loss(X, Y, w, b);
		%disp(sprintf("Iteration %d => Loss: %f", i, current_loss))
		G = gradient(X, Y, w, b);
		w -= G(1,1) * lr;
		b -= G(1,2) * lr;
	end;

	P = [w, b, current_loss];
