function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


%   带有正则项的逻辑回归
h = (X * theta - y);
%   theta0 不包含在正则项内
J = (1/(2 * m)) * (h' * h) + (lambda / (2 * m)) * (theta(2:end)' * theta(2:end));

theta_temp = theta;
theta_temp(1) = 0;
grad = (1 / m) * (X' * h + lambda * theta_temp);









% =========================================================================

grad = grad(:);

end
