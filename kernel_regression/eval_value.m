function pred = eval_value(x, X, f, f_param, a)
    n = size(X, 1);
    pred = 0;
    % calculate the weighted sum of the products between
    % the a coefficients and the kernel values
    for i = 1:n
        kernel_value = f(x, X(i,:), f_param);
        pred = pred + a(i) * kernel_value;
    end
end
