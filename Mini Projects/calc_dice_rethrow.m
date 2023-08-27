function [throw_count] = calc_dice_rethrow(count_outcome,throw)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[number_of_most_common_outcome,most_common_outcome] = max(count_outcome);
number_of_most_common_outcome;
outcome = most_common_outcome;


throw_count = 1;
while number_of_most_common_outcome < length(throw)
    
    rethrow_index = [];
    
    for dice = 1:length(throw)
        if throw(dice) ~= most_common_outcome
            rethrow_index = [rethrow_index dice]
    
        end
    end
    
    rethrow = calc_dice_throw(length(rethrow_index))
    throw_count = throw_count+1
    
    for dice = 1:length(rethrow_index)
        throw(rethrow_index(dice)) = rethrow(dice)
    end

    [outcome,throw_count] = count_each_outcome(throw)


end

end