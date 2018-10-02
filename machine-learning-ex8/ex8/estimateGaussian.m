function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

for i = 1:n

%mu(i) = mean(X(:,i));
%sigma2(i) = var(X(:,i)); 
% var() uses 1/(m-1) by default so it cannot be used here;

end

sum1=0;

for i = 1:n

    sum1=0;

    for j = 1:m

        sum1 = sum1 + X(j,i);

    end

    mu(i) = 1/m * sum1;

    sigma2(i) = 1/m * sum((X(:,i) - mu(i)).^2);

end

% =============================================================


end
