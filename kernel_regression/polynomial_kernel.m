function retval = polynomial_kernel (x, y, d)
    retval = zeros(1, 1);
    retval = (1 + y * x') ^ d;
endfunction
