function probs = sample_next_word(text, words_idx, k_secv_idx, k, stoch)
    % extract the last k elements from the text (sequence k)
    k_sequence = text(end - k + 1:end);
    % check if sequence k is in the index of sequences k
    if isKey(k_secv_idx, k_sequence)
        k_sequence_idx = k_secv_idx(k_sequence);
        probs = stoch(k_sequence_idx, :);
    else
        % sequence k is not found in sequence k index, we return a uniform distribution
        probs = ones(1, length(words_idx)) / length(words_idx);
    end
end
