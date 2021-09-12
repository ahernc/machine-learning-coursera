function J = costFunctionJ(X, y, theta)

% X is the "design matrix" containing our training examples
% y is the class labels

m = size(X,1);						% number of training examples
predictions = X*theta;				% predictions of hypothesis on all m -- compute the predictions on examples
sqrErrors = (predictions-y).^2;		% squared sqrErrors... takes the difference between the y values and predictions and square

J = 1/(2*m) * sum(sqrErrors);		% J is defined as the function on first Line
