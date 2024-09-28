function retval = word_idx(distinct_wds)
    % Creăm un obiect de tip containers.Map
    word_idx_map = containers.Map();
    
    % Parcurgem cuvintele distincte și le asociem un indice
    for i = 1:length(distinct_wds)
        % Adăugăm perechea cheie-valoare în containers.Map
        word_idx_map(distinct_wds{i}) = i;
    end
    
    % Returnăm containers.Map ca rezultat
    retval = word_idx_map;
end
