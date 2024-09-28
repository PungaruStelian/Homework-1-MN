function tokens = split_input (filePath)
    % read from file
    in = fopen(filePath, 'r');
    init_tokens = textscan(in, '%s'){1,1};
    tokens = {};
    % size(init_tokens)(1) = number of lines
    % size(tok)(2) = number of columns
    for i = 1:size(init_tokens)(1)
        % Extracts the current line from the file contents
        tok = init_tokens{i};
        if size(tok)(2) == 0
            i = i+1;
        endif
        if size(tok)(2) == 1
            tokens{end+1} = tok;
            i = i+1;
        endif
        % Checks if the first character of the line is a punctuation mark
        if punctuation(tok(1))
            tokens{end+1} = tok(1:1);
            tokens{end+1} = tok(2:end);
        % Checks if the last character of the line is a punctuation mark
        elseif punctuation(tok(end))
            tokens{end+1} = tok(1:end-1);
            tokens{end+1} = tok(end:end);
        else
            tokens{end+1} = tok;
        endif
    endfor
    tokens = tokens';
endfunction
