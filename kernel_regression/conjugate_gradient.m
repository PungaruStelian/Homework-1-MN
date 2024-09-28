function [x] = conjugate_gradient(A, b, x0, tol, max_iter)
    % initialization
    iter = 0;
    d1 = b - A * x0;
    d2 = d1;
    Norm = d1' *d1;
    while Norm > tol^2 && iter < max_iter
        % calculate dot product of A * d and d
        A_d = A * d2;
        abc = d2' * A_d;
        % determine displacement step alpha
        alpha = Norm / abc;
        x0 = x0 + alpha * d2;
        d1 = d1 - alpha * A_d;
        % determine new dot product
        Norm_new = d1' * d1;
        % calculate beta for the next search direction
        beta = Norm_new / Norm;
        d2 = d1 + beta * d2;
        Norm = Norm_new;
        iter = iter + 1;
    end
    x = x0;
end
