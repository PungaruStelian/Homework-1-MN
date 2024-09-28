function [mean_values variances] = estimate_gaussian(X)
    % mean_values = line vector
    [m n] = size(X);
    mean_values = zeros(1, n);
    for i = 1:n
        mean_values(i) = sum(X(:, i)) / m;
    end
    % variances = quadratic matrix
    variances = zeros(n, n);
    for i = 1:m
	    variances = variances + ((X(i, :) - mean_values)' * (X(i, :) - mean_values)) / m;
    end
endfunction
