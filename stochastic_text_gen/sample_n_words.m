function retval = sample_n_words(text, widx, kscvidx, k, stoch, word_set, n)
    for i = 1:n
        % extract the last k elements from the text (sequence k)
        k_sequence = text(end - k + 1:end);
        % select the next word using the sample_next_word function
        next_word = sample_next_word(k_sequence, widx, kscvidx, stoch, word_set);
        % add the following word at the end of the text
        text = [text, next_word];
    end
    retval = text;
end
