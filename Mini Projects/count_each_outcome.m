function [outcome,throw_count] = count_each_outcome(throw)
%UNTITLED4 Summary of this function goes here
%   Loops through the throw result and counts how many times each die value
%   appears


% Count the Number of Each Outcome

count_outcome = zeros(1,6);

for dice = 1:length(throw)
    for value = 1:6
        
        if value == throw(dice)

            count_outcome(value) = count_outcome(value)+1;

        end
    end
end

count_outcome;


%Find Out Which Outcome is Most Common

[number_of_most_common_outcome,most_common_outcome] = max(count_outcome); %first occurrence of the maximum value of A.
number_of_most_common_outcome;
outcome = most_common_outcome;





%func here that takes care of rethorwsa????



% Throw until you have Five-of-a-Kind

throw_count = 1;
while number_of_most_common_outcome < length(throw)
    
    rethrow_index = [];
    
    %Find the Dice to Throw Again
    for dice = 1:length(throw)
        if throw(dice) ~= most_common_outcome
            rethrow_index = [rethrow_index dice]
    
        end
    end
    
    %rethrow
    rethrow = calc_dice_throw(length(rethrow_index))
    throw_count = throw_count+1
    
    %create the new outcome
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