function [X_train, y_train, X_pred, y_pred] = split_dataset(X, y, percentage)
    [n m] = size(X);
    percent = round(n * percentage);
    % applied formula
    for i = 1:percent
        X_train(i, :) = X(i, :);
        y_train(i, :) = y(i, :);
    end
    for i = 1:(n - percent)
        X_pred(i, :) = X(percent + i, :);
        y_pred(i, :) = y(percent + i, :);
    end
end