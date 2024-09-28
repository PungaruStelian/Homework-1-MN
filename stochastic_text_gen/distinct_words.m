function retval = distinct_words(tokens)
    % Returnează un cell array cu cuvintele distincte din tokens
    
    % Verificăm dacă inputul este un cell array de stringuri
    if ~iscell(tokens) || ~all(cellfun(@ischar, tokens))
        error('Inputul trebuie să fie un cell array de stringuri.');
    end
    
    % Verificăm dacă tokens este gol
    if isempty(tokens)
        retval = {};  % Returnează un cell array gol
        return;
    end
    
    % Obținem cuvintele unice
    retval = unique(tokens);
end