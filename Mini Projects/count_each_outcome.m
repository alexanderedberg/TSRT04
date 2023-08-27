function [outcome,throw_count] = count_each_outcome(throw)
%UNTITLED4 Summary of this function goes here
%   Loops through the throw result and counts how many times each die value
%   appears



count_outcome = zeros(1,6);

for dice = 1:length(throw)
    for value = 1:6
        
        if value == throw(dice)

            count_outcome(value) = count_outcome(value)+1;

        end
    end
end

count_outcome;


[number_of_most_common_outcome,most_common_outcome] = max(count_outcome);
number_of_most_common_outcome;
outcome = most_common_outcome;





%func here that takes care of rethorwsa????
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



    count_outcome = zeros(1,6);

    for dice = 1:length(throw)
        for value = 1:6
            
            if value == throw(dice)
    
                count_outcome(value) = count_outcome(value)+1;
    
            end
        end
    end
    
    
    [number_of_most_common_outcome,most_common_outcome] = max(count_outcome);
    number_of_most_common_outcome;



end


end