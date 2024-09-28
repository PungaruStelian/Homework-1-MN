function B = k_secv(A, k)
    % identify the positions in A that contain consecutive duplicates of characters
    idx = [true; ~strcmp(A(1:end-1), A(2:end))];
    % choose only those elements of A that do not contain consecutive duplicates
    A = A(idx);
    % remove the punctuation characters from A
    A = A(~cellfun(@punctuation, A));
    [m, n] = size(A);
    B = cell(m, 1);
    % I treat only the cases where k is 2 or 3
    if k == 3
        m = m-1;
    end
    for i = 1:(m-1)
        B{i} = [A{i}, ' ', A{i+1}];
        if k == 3
            B{i} = [A{i}, ' ', A{i+1}, ' ' A{i+2}];
        end
    end
    % delete the last empty elements
    for i = 1:m
        if isempty(B{end})
            B = B(1:end-1);
        end
    end
end
