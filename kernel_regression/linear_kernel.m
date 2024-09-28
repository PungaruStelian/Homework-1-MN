function retval = linear_kernel(x, y, other)
    retval = zeros(1, 1);
    retval = y * x';
end
