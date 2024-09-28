function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)
    [m, n] = size(probabilities);
    Min = 1;
    Max = 0;
    % find minimum and maximum of a subunit vector
    for i = 1:m
        if Min > probabilities(i)
            Min = probabilities(i);
        end
        if Max < probabilities(i)
            Max = probabilities(i);
        end
    end
    best_epsilon = 0;
    best_F1 = 0;
    associated_precision = 0;
    associated_recall = 0;
    for i = Min:(Max-Min) / 1000:Max
        % predictions = a vector with 0 or 1 
        predictions = probabilities < i;
        % the sum of the elements of a boolean vector specific to the case
        tp = sum(predictions & truths);
        fp = sum(predictions & ~truths);
        fn = sum(~predictions & truths);
        [precision recall F1] = metrics(tp, fp, fn);
        % best_F1 = maximum of F1
        if F1 > best_F1
            best_F1 = F1;
            best_epsilon = i;
            associated_precision = precision;
            associated_recall = recall;
        end
    end
endfunction
