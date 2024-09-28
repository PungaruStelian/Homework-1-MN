function retval = gaussian_kernel (x, y, sigma)
    retval = zeros(1, 1);
    [n m] = size(x);
    Norm = 0;
    % calculation of the Euclidean norm
    for i = 1:m
        Norm = Norm + (x(1,i)-y(1,i))^2;
    end
    % formula
    retval = exp( - Norm / (2 * sigma ^ 2));
endfunction
