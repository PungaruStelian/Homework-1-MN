% Computes the probability density function of the multivariate gaussian distribution.
function probabilities = multivariate_gaussian(X, mean_values, variances)

    [m n] = size(X);
    % mean_values = column vector
    probabilities = zeros(m, 1);
    for i = 1:m
        probabilities(i) = 1/(((2 * pi)^(n / 2)) * (det(variances)^(1 / 2)));
    end
    for i = 1:m
        probabilities(i) = probabilities(i) * exp(-0.5 * (X(i, :) - mean_values) * inv(variances) * (X(i, :) - mean_values)');
    end
endfunction
