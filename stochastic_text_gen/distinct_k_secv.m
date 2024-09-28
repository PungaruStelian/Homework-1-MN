function unique_string = distinct_k_secv(cell_array)
    % Returnează un string format din elementele distincte ale cell_array,
    % separate prin spații.

    % Verificăm dacă inputul este un cell array de stringuri
    if ~iscell(cell_array) || ~all(cellfun(@ischar, cell_array))
        error('Inputul trebuie să fie un cell array de stringuri.');
    end
    
    % Verificăm dacă cell_array este gol
    if isempty(cell_array)
        unique_string = '';  % Returnează un string gol
        return;
    end
    
    % Obținem elementele unice
    unique_cells = unique(cell_array);
    
    % Îmbinăm elementele unice într-un string
    unique_string = strjoin(unique_cells, ' ');
end