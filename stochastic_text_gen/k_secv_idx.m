function retval = k_secv_idx(distinct_k_sec)
    k_sec_idx_map = containers.Map();
    % extract the length of the array of k distinct sequences
    num_distinct_k_sec = numel(distinct_k_sec);
    % initialize a cell array containing indices for each element in distinct_k_sec
    idx_cell_array = num2cell(1:num_distinct_k_sec);
    k_sec_idx_map = containers.Map(distinct_k_sec, idx_cell_array);
    retval = k_sec_idx_map;
end
