function P = get_lower_inverse(L)
    n = size(L, 1);
    P = zeros(n);
    for j = 1:n
        P(j, j) = 1 / L(j, j);
        % sum of the products of the elements on row i with
        % their equivalents on column j and their inverse
        for i = j+1:n
            P(i, j) = -L(i, j:i-1) * P(j:i-1, j);
            % Set the element P(i, j) using the formula
            P(i, j) = P(i, j) / L(i, i);
        end
    end
end
