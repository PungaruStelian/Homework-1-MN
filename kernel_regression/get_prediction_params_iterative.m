function [a] = get_prediction_params_iterative(K, y, lambda)
    [m n] = size(K);
    b = zeros(n, 1);
    a = zeros(n, 1);
    % Build the system matrix
    A = lambda * eye(n) + K;
    a = conjugate_gradient(A, y, b, 0.001, 1000);
end
