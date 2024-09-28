function [a] = get_prediction_params(K, y, lambda)
    [m n] = size(K);
    a = zeros(n, 1);
    regl = K + lambda * eye(n,n);
    % Computes Cholesky factorization for regularization matrix
    L = cholesky(regl);
    % Computes  inverse for lower triangular matrix L
    P = get_lower_inverse(L);
    a = lambda * P' * P * y;
end
